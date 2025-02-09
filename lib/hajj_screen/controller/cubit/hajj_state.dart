part of 'hajj_cubit.dart';

@immutable
sealed class HajjState {}

final class HajjCubitInitialState extends HajjState {}

final class HajjCubitUpdateIndexState extends HajjState {
  final int index;

  HajjCubitUpdateIndexState({required this.index});
}
