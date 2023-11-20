import 'package:flutter/material.dart';
import 'package:jerseyhub_admin/application/presentation/utils/colors.dart';
import 'package:jerseyhub_admin/application/presentation/utils/constant.dart';
import 'package:jerseyhub_admin/application/presentation/widgets/appbar.dart';

class ScreenOrderDetail extends StatelessWidget {
  const ScreenOrderDetail({
    super.key,
    required this.orderId,
  });

  final int orderId;

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {});
    return Scaffold(
      appBar: appbarMaker(title: 'Order Detail'),
      body: SafeArea(
        child: Padding(
            padding: const EdgeInsets.all(25),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              ListView.separated(
                shrinkWrap: true,
                itemCount: 3,
                itemBuilder: (context, index) => const OrderDetailItemTile(),
                separatorBuilder: (context, index) => kHeight5,
              ),
              const Divider(),
              const Text(
                'TOTAL AMOUND : 400',
                style: TextStyle(fontWeight: FontWeight.w700),
              ),
              kHeight10,
              const Text(
                'Pemding',
                style: TextStyle(fontWeight: FontWeight.w700),
              ),
              const Text('name, state, city,phone'),
              kHeight10,
              const Row(children: [
                Text('phone : '),
                Text(
                  '101548797876',
                  style: TextStyle(fontWeight: FontWeight.w600),
                ),
              ]),
              Row(children: [
                const Text('Order Status : '),
                TextButton(
                    onPressed: () {},
                    child: const Text(
                      'Return Order',
                      style: TextStyle(color: kRed),
                    )),
              ]),
              Row(children: [
                const Text('Paymnet Status : '),
                TextButton(
                    onPressed: () {},
                    child: const Text(
                      'Not Paid',
                      style: TextStyle(color: kRed),
                    )),
              ]),
            ])),
      ),
    );
  }
}

class OrderDetailItemTile extends StatelessWidget {
  const OrderDetailItemTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          height: sWidth * 0.22,
          width: sWidth * 0.18,
          decoration: BoxDecoration(
              image: DecorationImage(image: NetworkImage(manjestCity)),
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
              child: const Text(
                'name',
                overflow: TextOverflow.ellipsis,
                style: TextStyle(fontWeight: FontWeight.w400, fontSize: 18),
              ),
            ),
            kHeight10,
            const Text('Quantity - 10'),
            const Row(
              children: [
                Text('Amount : '),
                Text(
                  '₹ 700',
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18),
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
