import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:jerseyhub_admin/application/presentation/utils/colors.dart';
import 'package:jerseyhub_admin/application/presentation/utils/constant.dart';

class ScreenAllUsers extends StatelessWidget {
  const ScreenAllUsers({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text('Users List'),
        Expanded(
          child: ListView.separated(
            shrinkWrap: true,
            itemCount: 41,
            itemBuilder: (context, index) => SizedBox(
              width: sWidth,
              height: sWidth * 0.40,
              child: Card(
                color: kGrey,
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    children: [
                      const Row(
                        children: [
                          kWidth10,
                          CircleAvatar(
                            backgroundColor: kWhite,
                            radius: 30,
                            child: Icon(Iconsax.personalcard),
                          ),
                          kWidth30,
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('user@gmail.com'),
                              Text('username'),
                              Text('0987654321'),
                            ],
                          )
                        ],
                      ),
                      const Divider(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          ElevatedButton(
                            onPressed: () {},
                            style:
                                ElevatedButton.styleFrom(backgroundColor: kRed),
                            child: const Text('Block'),
                          ),
                          ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                                backgroundColor: kGreen),
                            child: const Text('UnBlock'),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
            separatorBuilder: (context, index) => kHeight10,
          ),
        ),
      ],
    );
  }
}
