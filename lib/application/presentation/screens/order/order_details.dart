import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jerseyhub_admin/application/business_logic/order/order_bloc.dart';
import 'package:jerseyhub_admin/application/presentation/utils/colors.dart';
import 'package:jerseyhub_admin/application/presentation/utils/constant.dart';
import 'package:jerseyhub_admin/application/presentation/utils/loading_indicator/loading_indicator.dart';
import 'package:jerseyhub_admin/application/presentation/utils/snack_show/snack_bar.dart';
import 'package:jerseyhub_admin/application/presentation/widgets/appbar.dart';
import 'package:jerseyhub_admin/domain/models/order/get_order_detail_response_model/order_product.dart';
import 'package:jerseyhub_admin/domain/models/order/update_order_status_model/update_order_status_model.dart';

class ScreenOrderDetail extends StatelessWidget {
  const ScreenOrderDetail({
    super.key,
    required this.orderId,
  });

  final int orderId;

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<OrderBloc>().add(OrderEvent.getOrderById(id: orderId));
    });
    return Scaffold(
      appBar: appbarMaker(title: 'Order Detail'),
      body: SafeArea(
        child: Padding(
            padding: const EdgeInsets.all(25),
            child: BlocConsumer<OrderBloc, OrderState>(
              listener: (context, state) {
                if (state.hasError || state.isDone) {
                  showSnack(
                    context: context,
                    message: state.message!,
                    color: state.hasError ? kRed : kGreen,
                  );
                }
              },
              buildWhen: (p, c) =>
                  p.isDone != true ||
                  p.hasError != true ||
                  c.isDone != true ||
                  c.hasError != true,
              builder: (context, state) {
                if (state.isLoading) {
                  return const LoadingAnimation(width: 0.20);
                } else if (state.orderDetail == null) {
                  return const Center(
                      child: Text('Network Error Occured,Please try again'));
                } else {
                  final order = state.orderDetail;
                  return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ListView.separated(
                          shrinkWrap: true,
                          itemCount: order!.products!.length,
                          itemBuilder: (context, index) => OrderDetailItemTile(
                              product: order.products![index]),
                          separatorBuilder: (context, index) => kHeight5,
                        ),
                        const Divider(),
                        Text(
                          'TOTAL AMOUND : ₹ ${order.totalAmount}',
                          style: const TextStyle(fontWeight: FontWeight.w700),
                        ),
                        kHeight10,
                        Text(
                          order.paymentStatus!,
                          style: const TextStyle(fontWeight: FontWeight.w700),
                        ),
                        Text(order.address ?? ''),
                        kHeight10,
                        Row(children: [
                          const Text('phone : '),
                          Text(
                            order.phone!,
                            style: const TextStyle(fontWeight: FontWeight.w600),
                          ),
                        ]),
                        Row(children: [
                          const Text('Update Order Status : '),
                          DropdownButton(
                              value: context.read<OrderBloc>().currentStatus,
                              items: context
                                  .read<OrderBloc>()
                                  .status
                                  .map((e) => DropdownMenuItem(
                                      value: e,
                                      child: Text(e,
                                          style:
                                              const TextStyle(color: kBlue))))
                                  .toList(),
                              onChanged: (value) {
                                context.read<OrderBloc>().add(
                                      OrderEvent.updateStatus(
                                        updateOrderStatusModel:
                                            UpdateOrderStatusModel(
                                          orderId: order.orderId,
                                          orderStatus: value,
                                        ),
                                      ),
                                    );
                              })
                        ]),
                        Row(children: [
                          const Text('Paymnet Status : '),
                          Text(
                            order.paymentStatus!,
                            style: const TextStyle(color: kRed),
                          ),
                        ]),
                        state.isLoading
                            ? LoadingAnimation(width: 0.10)
                            : order.paymentStatus == 'PAID'
                                ? kWidth5
                                : ElevatedButton(
                                    onPressed: () {
                                      context.read<OrderBloc>().add(OrderEvent.updatePaymentStatus(id: orderId));
                                    },
                                    child:
                                        Text('Update Payment Status as PAID'))
                      ]);
                }
              },
            )),
      ),
    );
  }
}

class OrderDetailItemTile extends StatelessWidget {
  const OrderDetailItemTile({
    super.key,
    required this.product,
  });

  final OrderProduct product;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          height: sWidth * 0.22,
          width: sWidth * 0.18,
          decoration: BoxDecoration(
              image: DecorationImage(image: NetworkImage(product.image!)),
              boxShadow: [
                BoxShadow(
                    color: kBlack.withOpacity(0.8),
                    blurRadius: 1.5,
                    offset: const Offset(0, 2))
              ],
              color: kWhite,
              borderRadius: const BorderRadius.all(kRadius10)),
        ),
        kWidth20,
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: sWidth * 0.60,
              child: Text(
                product.productName!,
                overflow: TextOverflow.ellipsis,
                style:
                    const TextStyle(fontWeight: FontWeight.w400, fontSize: 18),
              ),
            ),
            kHeight10,
            Text('Quantity - ${product.quantity}'),
            Row(
              children: [
                const Text('Amount : '),
                Text(
                  '₹ ${product.amount}',
                  style: const TextStyle(
                      fontWeight: FontWeight.w500, fontSize: 18),
                )
              ],
            ),
            kHeight5,
          ],
        ),
      ],
    );
  }
}
