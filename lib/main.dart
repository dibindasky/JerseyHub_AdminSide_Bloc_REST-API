import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jerseyhub_admin/application/business_logic/Auth/auth_bloc.dart';
import 'package:jerseyhub_admin/application/business_logic/category/category_bloc.dart';
import 'package:jerseyhub_admin/application/business_logic/coupon/coupon_bloc.dart';
import 'package:jerseyhub_admin/application/business_logic/inventory/add_inventory/add_inventory_bloc.dart';
import 'package:jerseyhub_admin/application/business_logic/bottom_bar_cubit/bottom_bar_cubit_cubit.dart';
import 'package:jerseyhub_admin/application/business_logic/inventory/edit_inventory/edit_inventory_bloc.dart';
import 'package:jerseyhub_admin/application/business_logic/inventory/get_inventory/get_inventory_bloc.dart';
import 'package:jerseyhub_admin/application/business_logic/offer/offer_bloc.dart';
import 'package:jerseyhub_admin/application/business_logic/order/order_bloc.dart';
import 'package:jerseyhub_admin/application/business_logic/users/users_bloc.dart';
import 'package:jerseyhub_admin/data/services/order/order_service.dart';
import 'package:jerseyhub_admin/domain/core/di/dipendency_injection.dart';
import 'application/presentation/routes/routes.dart';
import 'application/presentation/routes/routes_generator.dart';

Future<void> main() async {
  await configuteInjection();
  runApp(JerseyHubAdmin());
}

class JerseyHubAdmin extends StatelessWidget {
  JerseyHubAdmin({super.key});

  final RouteGenerator routeGenerator = RouteGenerator();

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => BottomBarCubitCubit()),
        BlocProvider(create: (context) => getIt<AuthBloc>()),
        BlocProvider(create: (context) => getIt<EditInventoryBloc>()),
        BlocProvider(create: (context) => getIt<AddInventoryBloc>()),
        BlocProvider(create: (context) => getIt<GetInventoryBloc>()),
        BlocProvider(create: (context) => getIt<UsersBloc>()),
        BlocProvider(create: (context) => getIt<CategoryBloc>()),
        BlocProvider(create: (context) => getIt<CouponBloc>()),
        BlocProvider(create: (context) => getIt<OfferBloc>()),
        BlocProvider(create: (context) => OrderBloc(OrderApi()))
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
            primarySwatch: Colors.blue),
        initialRoute: Routes.initial,
        onGenerateRoute: routeGenerator.onGenerateRoute,
      ),
    );
  }
}
