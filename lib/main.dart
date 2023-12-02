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
import 'package:jerseyhub_admin/data/services/auth/auth.dart';
import 'package:jerseyhub_admin/data/services/catogery/catogery.dart';
import 'package:jerseyhub_admin/data/services/coupon/coupon.dart';
import 'package:jerseyhub_admin/data/services/inventry/inventory.dart';
import 'package:jerseyhub_admin/data/services/offer/offer.dart';
import 'package:jerseyhub_admin/data/services/order/order.dart';
import 'package:jerseyhub_admin/data/services/users/users.dart';
import 'application/presentation/routes/routes.dart';
import 'application/presentation/routes/routes_generator.dart';

void main() {
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
        BlocProvider(create: (context) => AuthBloc(ApiAuth())),
        BlocProvider(create: (context) => EditInventoryBloc(InventoryApi())),
        BlocProvider(create: (context) => AddInventoryBloc(InventoryApi())),
        BlocProvider(create: (context) => GetInventoryBloc(InventoryApi())),
        BlocProvider(create: (context) => UsersBloc(UsersApi())),
        BlocProvider(create: (context) => CategoryBloc(CatogeryApi())),
        BlocProvider(create: (context) => CouponBloc(CouponApi())),
        BlocProvider(create: (context) => OfferBloc(OfferApi())),
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
