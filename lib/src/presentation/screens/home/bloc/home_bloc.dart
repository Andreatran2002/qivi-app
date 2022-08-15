import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:qivi_app/src/model/api/response/home_response.dart';
import 'package:qivi_app/src/model/entity/entity.dart';
import 'package:qivi_app/src/model/repo/home_repository.dart';
import 'package:qivi_app/src/presentation/screens/home/bloc/bloc.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final HomeRepository homeRepository;

  HomeBloc({required this.homeRepository}) : super(HomeLoading()) {
    on<LoadHome>(_mapLoadHomeToState);
    on<RefreshHome>(_mapRefreshHomeToState);
  }

  void _mapRefreshHomeToState(
      RefreshHome event, Emitter<HomeState> emit) async {
    try {
      print("refresh");
      final response = await homeRepository.getHomeData();
      emit(HomeLoading());
      emit(HomeLoaded(response));
    } catch (e) {
      emit(HomeNotLoaded(e.toString()));
    }
  }

  void _mapLoadHomeToState(LoadHome event, Emitter<HomeState> emit) async {
    try {
      final response = await homeRepository.getHomeData();

      emit(HomeLoaded(response));
    } catch (e) {
      emit(HomeNotLoaded(e.toString()));
    }
  }
}
