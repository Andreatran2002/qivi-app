import 'package:badges/badges.dart';
import 'package:fab_circular_menu/fab_circular_menu.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:qivi_app/src/app/auth_bloc/bloc.dart';
import 'package:qivi_app/src/model/entity/cart_item.dart';
import 'package:qivi_app/src/model/entity/user.dart';
import 'package:qivi_app/src/model/local/hive_provider.dart';
import 'package:qivi_app/src/model/local/repo/cart_item_repo.dart';
import 'package:qivi_app/src/model/repo/home_repository.dart';
import 'package:qivi_app/src/presentation/common_widgets/common_widgets.dart';
import 'package:qivi_app/src/presentation/router.dart';
import 'package:qivi_app/src/presentation/screens/home/bloc/bloc.dart';
import 'package:qivi_app/src/presentation/screens/home/home_drawer/widget_home_drawer.dart';
import 'package:qivi_app/src/utils/my_const/my_const.dart';
import 'barrel_home.dart';
import 'home_banner/widget_home_banners.dart';
import 'home_categories/bloc/bloc.dart';
import 'home_drawer/bloc/bloc.dart';
import 'recommended_products/bloc/bloc.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);
  // final User user;
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late HomeRepository homeRepository;
  final GlobalKey<FabCircularMenuState> fabKey = GlobalKey();
  @override
  void initState() {
    super.initState();
    BlocProvider.of<HomeBloc>(context).add(LoadHome());

    homeRepository = RepositoryProvider.of<HomeRepository>(context);
  }

  @override
  void dispose() {
    Hive.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => RecommendedProductsBloc()),
        BlocProvider(create: (context) => HomeCategoriesBloc()),
        BlocProvider(create: (context) => HomeDrawerBloc()),
      ],
      child: BlocListener<HomeBloc, HomeState>(
        listener: (context, state) {
          if (state is HomeLoaded) {
            BlocProvider.of<HomeCategoriesBloc>(context)
                .add(DisplayHomeCategories(state.response.categories));
            BlocProvider.of<RecommendedProductsBloc>(context).add(
                DisplayRecommendedProducts(state.response.recommendedProducts));
            // BlocProvider.of<HomeDrawerBloc>(context).add(
            //     DisplayHomeDrawer());
          }
        },
        child: BlocBuilder<HomeBloc, HomeState>(builder: (context, state) {
          return Scaffold(
            // drawer: WidgetHomeDrawer(),
            floatingActionButton: _buildFloatingMenu(),
            appBar: AppBar(
              title:
                  Text("Quỳnh Vy Store", style: FONT_CONST.SEMIBOLD_BLACK_24),
              // leading: const Icon(Icons.menu),
              actions: [ShoppingCart()],
            ),
            body: Container(
              color: COLOR_CONST.WHITE,
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  _buildContent(state),
                  // StreamBuilder(
                  //   stream: homeRepository.getAllProduct,
                  //   builder: ((context, snapshot)s {
                  //   return Container();
                  // }))
                ],
              ),
            ),
          );
        }),
      ),
    );
  }

  Widget _buildContent(HomeState state) {
    if (state is HomeLoaded) {
      return Expanded(
        child: RefreshIndicator(
          onRefresh: () async {
            BlocProvider.of<HomeBloc>(context).add(RefreshHome());
          },
          child: ListView(
            shrinkWrap: true,
            physics: const BouncingScrollPhysics(),
            children: [
              WidgetHomeBanner(),
              WidgetHomeCategories(),
              // WidgetHomeRecommendedProducts(),
              WidgetHomeRecommendedProducts(),

              // WidgetNearbyCine(),
              // const SizedBox(height: 30),
              // WidgetHomeShowsCategory(),
              // const SizedBox(height: 30),
            ],
          ),
        ),
      );
    } else if (state is HomeLoading) {
      return const Expanded(
        child: Center(
          child: CircularProgressIndicator(),
        ),
      );
    } else if (state is HomeNotLoaded) {
      return const Expanded(
        child: Center(
          child: Text('Cannot load data'),
        ),
      );
    } else {
      return const Expanded(
        child: Center(
          child: Text('Unknown state'),
        ),
      );
    }
  }

  Widget _buildFloatingMenu() {
    return Builder(
        builder: (context) => FabCircularMenu(
              key: fabKey,
              // Cannot be `Alignment.center`
              alignment: Alignment.bottomRight,
              ringColor: Colors.black54.withAlpha(25),
              ringDiameter: 500.0,
              ringWidth: 150.0,
              fabSize: 60.0,
              fabElevation: 8.0,
              fabIconBorder: CircleBorder(),
              // Also can use specific color based on wether
              // the menu is open or not:
              // fabOpenColor: Colors.black54
              // fabCloseColor: Colors.black54
              // These properties take precedence over fabColor
              fabColor: COLOR_CONST.BLACK2,
              fabOpenIcon: Icon(Icons.menu, color: Colors.white),
              fabCloseIcon: Icon(Icons.close, color: Colors.white),
              fabMargin: const EdgeInsets.all(16.0),
              animationDuration: const Duration(milliseconds: 800),
              animationCurve: Curves.easeInOutCirc,
              onDisplayChange: (isOpen) {
                _showSnackBar(
                    context, "The menu is ${isOpen ? "open" : "closed"}");
              },
              children: <Widget>[
                RawMaterialButton(
                  onPressed: () {
                    _showSnackBar(context, "You pressed 1");
                  },
                  shape: CircleBorder(
                      // side: BorderSide(width: 16.0, color: Colors.black38),
                      ),
                  padding: const EdgeInsets.all(24.0),
                  child: Icon(Icons.logout, color: Colors.black),
                ),
                RawMaterialButton(
                  onPressed: () {
                    _showSnackBar(context, "You pressed 2");
                  },
                  shape: CircleBorder(),
                  padding: const EdgeInsets.all(24.0),
                  child: Icon(Icons.person, color: Colors.black),
                ),
                RawMaterialButton(
                  onPressed: () {
                    _showSnackBar(context, "You pressed 3");
                  },
                  shape: CircleBorder(),
                  padding: const EdgeInsets.all(24.0),
                  child: Icon(Icons.history, color: Colors.black),
                ),
                RawMaterialButton(
                  onPressed: () {
                    fabKey.currentState?.close();
                  },
                  shape: CircleBorder(),
                  padding: const EdgeInsets.all(24.0),
                  child: Icon(Icons.settings, color: Colors.black),
                )
              ],
            ));
  }

  void _showSnackBar(BuildContext context, String message) {
    // ScaffoldMessenger.of(context).build
    //     SnackBar(
    //   content: Text(message),
    //   duration: const Duration(milliseconds: 1000),
    //     )
    // );
  }
}
