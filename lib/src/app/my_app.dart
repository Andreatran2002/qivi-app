import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:qivi_bill/src/app/auth_bloc/bloc.dart';
import 'package:qivi_bill/src/model/repo/user_repository.dart';
import 'package:qivi_bill/src/presentation/router.dart';
import 'package:qivi_bill/src/presentation/screens/home/sc_home.dart';
import 'package:qivi_bill/src/presentation/screens/login/sc_login.dart';
import 'package:qivi_bill/src/presentation/screens/splash/sc_splash.dart';
import 'package:qivi_bill/src/utils/my_const/my_const.dart';

import '../app_config.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final config = AppConfig.of(context)!;

    return MaterialApp(
      debugShowCheckedModeBanner: config.debugTag,
      theme: ThemeData(
        brightness: Brightness.light,
        // primaryColor: COLOR_CONST.DEFAULT,
        // accentColor: COLOR_CONST.DEFAULT,
        // hoverColor: COLOR_CONST.GREEN,
        fontFamily: 'Poppins',
      ),
      onGenerateRoute: AppRouter.generateRoute,
      home: BlocBuilder<AuthenticationBloc, AuthenticationState>(
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
      ),
    );
  }

  static void initSystemDefault() {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        statusBarColor: COLOR_CONST.STATUS_BAR,
      ),
    );
  }

  static Widget runWidget() {
    WidgetsFlutterBinding.ensureInitialized();

    final UserRepository userRepository = UserRepository();

    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider<UserRepository>(create: (context) => userRepository),
        // RepositoryProvider<HomeRepository>(
        //     create: (context) => homeRepository),
        // RepositoryProvider<ShowRepository>(
        //     create: (context) => showRepository),
        // RepositoryProvider<BookTimeSlotRepository>(
        //     create: (context) => bookTimeSlotRepository),
        // RepositoryProvider<SessionRepository>(
        //     create: (context) => sessionRepository),
        // RepositoryProvider<SeatSlotRepository>(
        //     create: (context) => seatSlotRepository),
        // RepositoryProvider<TicketRepo>(create: (context) => ticketRepo),
      ],
      child: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) =>
                AuthenticationBloc(userRepository: userRepository)
                  ..add(AppStarted()),
          ),
          // BlocProvider(
          //   create: (context) => HomeBloc(homeRepository: homeRepository),
          // ),
        ],
        child: MyApp(),
      ),
    );
  }
}
