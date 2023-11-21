import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jerseyhub_admin/application/business_logic/order/order_bloc.dart';
import 'package:jerseyhub_admin/application/presentation/screens/order/widgets/order_list.dart';
import 'package:jerseyhub_admin/application/presentation/utils/colors.dart';
import 'package:jerseyhub_admin/application/presentation/utils/constant.dart';

class ScreenOrders extends StatelessWidget {
  const ScreenOrders({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) { 
      context.read<OrderBloc>().add(const OrderEvent.getOrders());
    });
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Orders',
            style: kronOne(fontSize: 0.05),
          ),
          centerTitle: true,
          bottom: const TabBar(
              labelStyle: TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
              indicatorColor: kBlack,
              tabs: [
                Tab(child: Text('Pending')),
                Tab(child: Text('Shipped')),
                Tab(child: Text('Deliverd')),
                Tab(child: Text('Reterned')),
                Tab(child: Text('Canceled'))
              ]),
        ),
        body: BlocBuilder<OrderBloc, OrderState>(
          builder: (context, state) {
            return TabBarView(children: [
              OrderListView(orderList: state.pending),
              OrderListView(orderList: state.shipped),
              OrderListView(orderList: state.delivered),
              OrderListView(orderList: state.returned),
              OrderListView(orderList: state.cancled),
            ]);
          },
        ),
      ),
    );
  }
}

