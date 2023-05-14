import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:travel_app/cubit/app_cubit_logics.dart';
import 'package:travel_app/cubit/app_cubits.dart';
import 'package:travel_app/services/data_services.dart';
// import 'package:travel_app/screens/detail_screen.dart';
// import 'package:travel_app/screens/navscreens/main_screen.dart';
// import 'package:travel_app/screens/welcome_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: BlocProvider<AppCubits>(
        create: (context) => AppCubits(data: DataServices()),
        child: const AppCubitLogics(),
      ),
    );
  }
}








