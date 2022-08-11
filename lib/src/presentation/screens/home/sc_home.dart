import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:qivi_app/src/model/repo/home_repository.dart';
import 'package:qivi_app/src/presentation/screens/home/bloc/bloc.dart';
import 'package:qivi_app/src/utils/my_const/my_const.dart';
import 'barrel_home.dart';
import 'home_banner/widget_home_banners.dart';
import 'home_categories/bloc/bloc.dart';
import 'recommended_products/bloc/bloc.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late HomeRepository homeRepository;
  @override
  void initState() {
    super.initState();
    BlocProvider.of<HomeBloc>(context).add(LoadHome());

    homeRepository = RepositoryProvider.of<HomeRepository>(context);
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
            create: (context) => RecommendedProductsBloc(
                homeBloc: BlocProvider.of<HomeBloc>(context))),
        BlocProvider(
            create: (context) => HomeCategoriesBloc(
                homeBloc: BlocProvider.of<HomeBloc>(context))),
      ],
      child: BlocBuilder<HomeBloc, HomeState>(builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            appBar: AppBar(
              title:
                  Text("Quỳnh Vy Store", style: FONT_CONST.SEMIBOLD_BLACK_24),
              leading: const Icon(Icons.menu),
              actions: [
                Container(
                    margin: const EdgeInsets.all(15),
                    decoration: const BoxDecoration(),
                    child: const Icon(FontAwesomeIcons.cartShopping, size: 20))
              ],
            ),
            body: Container(
              color: COLOR_CONST.BASE,
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  const WidgetHomeBanner(),
                  WidgetHomeCategories(),
                  _buildContent(state),
                  // StreamBuilder(
                  //   stream: homeRepository.getAllProduct,
                  //   builder: ((context, snapshot)s {
                  //   return Container();
                  // }))
                ],
              ),
            ),
          ),
        );
      }),
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
}
