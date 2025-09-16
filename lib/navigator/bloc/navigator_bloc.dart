import 'package:flutter_bloc/flutter_bloc.dart';

part 'navigator_event.dart';


class NavigatorBloc extends Bloc<NavigatorEvent, int> {
  NavigatorBloc() : super(0) {
    on<NavigatorPressed>((event, emit) {
      emit(event.index);
    });
  }
}
