import 'package:flutter/material.dart';
import 'package:flutter_api_with_bloc/bloc_state/universities_block.dart';
import 'package:flutter_api_with_bloc/repositories/universities_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../screens/home_screen.dart';

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    //To Communicate UI with Service layer
    return MaterialApp(
      home: BlocProvider(
        create: (context) => UniversitiesBloc(
          universitiesRepository: UniversitiesRepository(),
        ),
        child: HomeScreen(),
      ),
    );
  }
}
