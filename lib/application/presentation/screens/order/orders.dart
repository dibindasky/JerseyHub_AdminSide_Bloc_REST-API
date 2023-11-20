import 'package:flutter/material.dart';
import 'package:jerseyhub_admin/application/presentation/routes/routes.dart';
import 'package:jerseyhub_admin/application/presentation/utils/colors.dart';
import 'package:jerseyhub_admin/application/presentation/utils/constant.dart';

class ScreenOrders extends StatelessWidget {
  const ScreenOrders({super.key});

  @override
  Widget build(BuildContext context) {
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
        body: const TabBarView(children: [
          OrderListView(),
          OrderListView(),
          OrderListView(),
          OrderListView(),
          OrderListView(),
        ]),
      ),
    );
  }
}

class OrderListView extends StatelessWidget {
  const OrderListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 20,
      itemBuilder: (context, index) => ListTile(
        leading: CircleAvatar(child: Text('$index')),
        title: const Text('name, house name, city , state, phone:565655656'),
        trailing: const Text('702.2'),
        onTap: () {
          Navigator.pushNamed(context, Routes.orderDetailScreen,arguments: 5);
        },
      ),
    );
  }
}
