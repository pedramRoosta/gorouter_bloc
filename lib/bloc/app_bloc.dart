import 'package:bloc/bloc.dart';
import 'package:test_app/bloc/app_event.dart';
import 'package:test_app/bloc/app_state.dart';

class AppBloc extends Bloc<AppEvent, AppState> {
  AppBloc() : super(AppState(i: 0)) {
    on<AppEventAdd>((event, emit) {
      emit(AppState(i: state.i + 1));
    });
  }
}
