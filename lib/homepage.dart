import 'package:basketball_points/cubits/counter_cubits.dart';
import 'package:basketball_points/cubits/counter_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});
  // int teamA = 0;
  // int teamB = 0;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CounterCubit, CounterState>(
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            title: Text('numbers of team'),
            backgroundColor: Colors.orange,
          ),
          body: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const Text(
                        'TeamA',
                        style: TextStyle(fontSize: 18),
                      ),
                      Text(
                        // '$teamA',
                        '${BlocProvider.of<CounterCubit>(context).teama}',
                        style: TextStyle(fontSize: 100),
                      ),
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.orange),
                          onPressed: () {
                            BlocProvider.of<CounterCubit>(context)
                                .TeamIncrease(team: 'A', numbutton: 1);
                            // setState(() {
                            //   teama += 1;
                            // }
                            // );
                          },
                          child: const Text(
                            'add 1 points',
                            style: TextStyle(color: Colors.black),
                          )),
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.orange),
                          onPressed: () {
                            BlocProvider.of<CounterCubit>(context)
                                .TeamIncrease(team: 'A', numbutton: 2);
                            // setState(() {
                            //   teama += 2;
                            // });
                          },
                          child: const Text(
                            'add 2 points',
                            style: TextStyle(color: Colors.black),
                          )),
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.orange),
                          onPressed: () {
                            BlocProvider.of<CounterCubit>(context)
                                .TeamIncrease(team: 'A', numbutton: 3);
                            // setState(() {
                            //   teama += 3;
                            // });
                          },
                          child: const Text(
                            'add 3 points',
                            style: TextStyle(color: Colors.black),
                          )),
                    ],
                  ),
                  Container(
                    height: 400,
                    child: const VerticalDivider(
                      thickness: 1,
                      indent: 60,
                      endIndent: 60,
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const Text(
                        'TeamB',
                        style: TextStyle(fontSize: 18),
                      ),
                      Text(
                        // '$teamb',
                        '${BlocProvider.of<CounterCubit>(context).teamb}',
                        style: TextStyle(fontSize: 100),
                      ),
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.orange),
                          onPressed: () {
                            BlocProvider.of<CounterCubit>(context)
                                .TeamIncrease(team: 'B', numbutton: 1);
                            // setState(() {
                            //   teamb += 1;
                            // });
                          },
                          child: const Text(
                            'add 1 points',
                            style: TextStyle(color: Colors.black),
                          )),
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.orange),
                          onPressed: () {
                            BlocProvider.of<CounterCubit>(context)
                                .TeamIncrease(team: 'B', numbutton: 2);
                            // setState(() {
                            //   teamb += 2;
                            // });
                          },
                          child: const Text(
                            'add 2 points',
                            style: TextStyle(color: Colors.black),
                          )),
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.orange),
                          onPressed: () {
                            BlocProvider.of<CounterCubit>(context)
                                .TeamIncrease(team: 'B', numbutton: 3);
                            // setState(() {
                            //   teamb += 3;
                            // });
                          },
                          child: const Text(
                            'add 3 points',
                            style: TextStyle(color: Colors.black),
                          )),
                    ],
                  )
                ],
              ),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orange,
                  ),
                  onPressed: () {
                    BlocProvider.of<CounterCubit>(context).resetScores();
                    // setState(() {
                    //   teama = 0;
                    //   teamb = 0;
                    // });
                  },
                  child: const Text(
                    'Reset',
                    style: TextStyle(color: Colors.black),
                  )),
            ],
          ),
        );
      },
    );
  }
}
