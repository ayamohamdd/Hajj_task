import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'hajj_state.dart';

class HajjCubit extends Cubit<HajjState> {
  HajjCubit() : super(HajjCubitInitialState());
  int currentIndex = 0;
  void updateIndex(int index) {
    currentIndex = index;
    emit(HajjCubitUpdateIndexState(index: index));
  }
}
