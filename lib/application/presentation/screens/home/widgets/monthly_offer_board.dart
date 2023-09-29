import 'package:flutter/material.dart';

import '../../../utils/colors.dart';
import '../../../utils/constant.dart';

class MonthlyOfferBoard extends StatelessWidget {
  const MonthlyOfferBoard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: sWidth,
      height: sWidth * 0.40,
      padding: const EdgeInsets.all(20),
      decoration: const BoxDecoration(
        boxShadow: [BoxShadow(blurRadius: 3,blurStyle: BlurStyle.outer,offset: Offset(0,0.5))],
          color: kBlack, borderRadius: BorderRadius.all(kRadius20)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          SizedBox(
            height: sWidth * 0.35,
            width: sWidth * 0.35,
            child: Stack(
              children: [
                SizedBox(
                  height: sWidth * 0.30,
                  width: sWidth * 0.25,
                  child: Image.network(rmRonaldo2),
                ),
                Positioned(
                  right: 0,
                  child: SizedBox(
                    height: sWidth * 0.30,
                    width: sWidth * 0.25,
                    child: Image.network(rmRonaldo),
                  ),
                )
              ],
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                'Monthly Offers',
                style: TextStyle(
                    fontSize: sWidth * 0.06,
                    color: kWhite,
                    fontWeight: FontWeight.w700),
              ),
              Text(
                'Up To 70%',
                style: TextStyle(
                    color: kWhite,
                    fontSize: sWidth * 0.05,
                    fontWeight: FontWeight.w300),
              ),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    backgroundColor: kGreen, foregroundColor: kWhite),
                child: Text(
                  'Shop Now',
                  style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: sWidth * 0.04),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
