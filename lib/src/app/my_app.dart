import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:qivi_app/src/app/auth_bloc/bloc.dart';
import 'package:qivi_app/src/app/connectivity_bloc/bloc.dart';
import 'package:qivi_app/src/model/entity/cart_item.dart';
import 'package:qivi_app/src/model/repo/repo.dart';
import 'package:qivi_app/src/model/repo/user_repository.dart';
import 'package:qivi_app/src/presentation/router.dart';
import 'package:qivi_app/src/presentation/screens/home/bloc/bloc.dart';
import 'package:qivi_app/src/presentation/screens/home/sc_home.dart';
import 'package:qivi_app/src/presentation/screens/login/sc_login.dart';
import 'package:qivi_app/src/presentation/screens/no_network/sc_no_network.dart';
import 'package:qivi_app/src/presentation/screens/product_info/bloc/bloc.dart';
import 'package:qivi_app/src/presentation/screens/splash/sc_splash.dart';
import 'package:qivi_app/src/utils/my_const/my_const.dart';

import '../app_config.dart';
import 'simple_bloc_observer.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final config = AppConfig.of(context)!;

    return MaterialApp(
      debugShowCheckedModeBanner: config.debugTag,
      theme: ThemeData(
        useMaterial3: true,
        brightness: Brightness.light,
        primaryColor: COLOR_CONST.DEFAULT,
        hoverColor: COLOR_CONST.GREEN,
        fontFamily: 'Poppins',
      ),
      // ThemeData(
      //   brightness: Brightness.light,
      //   // primaryColor: COLOR_CONST.DEFAULT,
      //   // accentColor: COLOR_CONST.DEFAULT,
      //   // hoverColor: COLOR_CONST.GREEN,
      //   fontFamily: 'Poppins',
      // ),
      onGenerateRoute: AppRouter.generateRoute,
      home: BlocConsumer<ConnectivityBloc, ConnectivityState>(
          listener: (context, state) {
        // if (state is ConnectivitySucessState) {
        //   ScaffoldMessenger.of(context)
        //     ..hideCurrentSnackBar
        //     ..showSnackBar(const SnackBar(content: Text('Đã kết nối lại ...')));
        // } else if (state is ConnectivityFailureState) {
        //   ScaffoldMessenger.of(context)
        //     ..hideCurrentSnackBar
        //     ..showSnackBar(const SnackBar(
        //         content: Text('Vui lòng kết nối để tiếp tục sử dụng!')));
        // }
      }, builder: (context, state) {
        if (state is ConnectivitySucessState) {
          return BlocBuilder<AuthenticationBloc, AuthenticationState>(
            builder: (context, state) {
              if (state is Uninitialized) {
                return SplashScreen();
              } else if (state is Unauthenticated) {
                return LoginScreen();
              } else if (state is Authenticated) {
                return HomeScreen();
              }
              return Container(
                child: Center(child: Text('Unhandle State $state')),
              );
            },
          );
        } else if (state is ConnectivityFailureState) {
          return NoNetworkScreen();
        } else {
          return SplashScreen();
        }
      }),
    );
  }

  static void initSystemDefault() {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        statusBarColor: COLOR_CONST.BASE,
      ),
    );
  }

  static Widget runWidget() {
    // Bloc.observer = SimpleBlocObserver();
    final UserRepository userRepository = UserRepository();
    final HomeRepository homeRepository = HomeRepository();
    final CategoryRepository categoryRepository = CategoryRepository();
    final ProductRepository productRepository = ProductRepository();

    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider<UserRepository>(create: (context) => userRepository),
        RepositoryProvider<HomeRepository>(create: (context) => homeRepository),
        RepositoryProvider<CategoryRepository>(
            create: (context) => categoryRepository),
        RepositoryProvider<ProductRepository>(
            create: (context) => productRepository),
      ],
      child: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) =>
                AuthenticationBloc(userRepository: userRepository)
                  ..add(AppStarted()),
          ),
          BlocProvider(
            create: (context) => ConnectivityBloc(),
          ),
          BlocProvider(
            create: (context) => HomeBloc(homeRepository: homeRepository),
          ),
          BlocProvider(
            create: (context) => ProductInfoBloc(
              repo: RepositoryProvider.of<ProductRepository>(context),
            ),
          ),

          // BlocProvider(
          //   create: (context) => AllProductBloc(homeRepository: homeRepository),
          // ),
        ],
        child: MyApp(),
      ),
    );
  }
}
