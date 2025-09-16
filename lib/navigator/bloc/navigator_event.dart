part of 'navigator_bloc.dart';

sealed class NavigatorEvent {}

final class NavigatorPressed extends NavigatorEvent{
  final int index;
  NavigatorPressed(this.index);
}
