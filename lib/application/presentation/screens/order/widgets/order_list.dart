import 'package:flutter/material.dart';
import 'package:jerseyhub_admin/application/presentation/routes/routes.dart';
import 'package:jerseyhub_admin/domain/models/order/get_order_response_model/order.dart';

class OrderListView extends StatelessWidget {
  const OrderListView({
    super.key,
    required this.orderList,
  });

  final List<Order>? orderList;

  @override
  Widget build(BuildContext context) {
    return orderList == null || orderList!.isEmpty
        ? const Center(child: Text('nothing to show here'))
        : ListView.builder(
            itemCount: orderList!.length,
            itemBuilder: (context, index) {
              final data = orderList![index];
              return ListTile(
                leading: CircleAvatar(child: Text(data.id.toString())),
                title: Text(data.name!),
                subtitle: Text(data.paymentMethod!),
                trailing: Text(
                  '₹ ${data.total!.round().toString()}',
                  style: const TextStyle(fontSize: 20),
                ),
                onTap: () {
                  Navigator.pushNamed(context, Routes.orderDetailScreen,
                      arguments: orderList![index].id);
                },
              );
            },
          );
  }
}
