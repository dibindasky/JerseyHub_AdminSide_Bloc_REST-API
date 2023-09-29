import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jerseyhub_admin/application/business_logic/bottom_bar_cubit/bottom_bar_cubit_cubit.dart';

import 'application/presentation/routes/routes.dart';
import 'application/presentation/routes/routes_generator.dart';

void main() {
  runApp(JerseyHubUser());
}

class JerseyHubUser extends StatelessWidget {
  JerseyHubUser({super.key});

  final RouteGenerator routeGenerator = RouteGenerator();

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => BottomBarCubitCubit(),
        ),
        // BlocProvider(
        //   create: (context) => SubjectBloc(),
        // ),
      ],
      child: MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        primarySwatch: Colors.blue
      ),
      initialRoute: Routes.initial,
      onGenerateRoute: routeGenerator.onGenerateRoute,
    ),
    );
  }
}




