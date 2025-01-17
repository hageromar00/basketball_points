import 'package:basketball_points/cubits/counter_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(CounterA());
  int teama = 0;
  int teamb = 0;
  void TeamIncrease({required String team, required int numbutton}) {
    if (team == 'A') {
      teama += numbutton;
      emit(CounterA());
    } else if (team == 'B') {
      teamb += numbutton;
      emit(CounterB());
    }
  }

  void resetScores() {
    teama = 0;
    teamb = 0;
    emit(CounterB());
    emit(CounterA());
    // emit(CounterState(teama: teama, teamb: teamb));
  }
}
