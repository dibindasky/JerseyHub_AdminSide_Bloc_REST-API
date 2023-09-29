import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../utils/colors.dart';
import '../../utils/constant.dart';
import '../../widgets/custom_search_field.dart';

class ScreenSearch extends StatelessWidget {
  const ScreenSearch({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(resizeToAvoidBottomInset: false,
    appBar: AppBar(title: const CoustomSearchField(),actions: [IconButton(onPressed: (){}, icon: Icon(Iconsax.sort))],),
      body: SizedBox(height: sWidth * 5 *0.5,
        child: GridView.builder(  
         // physics: const NeverScrollableScrollPhysics(),            
            shrinkWrap: true,
            itemCount: 20,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                childAspectRatio: 1 / 1.5,
                mainAxisSpacing: 10,
                crossAxisSpacing: 20,
                crossAxisCount: 2),
            itemBuilder: (context, index) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Stack(
                    children: [
                      Container(
                        padding: const EdgeInsets.fromLTRB(20, 30, 30, 5),
                        height: sWidth * 0.50,
                        decoration: const BoxDecoration(
                            color: kGrey,
                            borderRadius: BorderRadius.all(kRadius10)),
                        child: SizedBox(
                            width: double.infinity,
                            child: Image.network(manjestCity)),
                      ),
                      const Positioned(
                        right: 5,
                        top: 5,
                        child: CircleAvatar(
                          backgroundColor: kWhite,
                          child: Icon(Icons.favorite_border_outlined),
                        ),
                      ),
                    ],
                  ),
                  const Text('Manjester City'),
                  Row(
                    children: [
                      Text(
                        '₹600',
                        style: priceStyle,
                      ),
                      kWidth10,
                      Text(
                        '₹1000',
                        style: priceStyleCross,
                      ),
                      const Spacer(),
                      Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 5),
                        decoration: const BoxDecoration(
                            color: kGreen,
                            borderRadius: BorderRadius.all(kRadius5)),
                        child: const Text(
                          '40% off',
                          style: TextStyle(color: kWhite),
                        ),
                      )
                    ],
                  )
                ],
              );
            }),
      ),
    );
  }
}