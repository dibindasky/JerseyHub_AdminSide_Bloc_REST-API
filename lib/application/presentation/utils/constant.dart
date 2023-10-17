import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jerseyhub_admin/application/presentation/utils/colors.dart';

late final double sHeight;
late final double sWidth;

const kEmpty = SizedBox();

const kHeight5 = SizedBox(height: 5);
const kHeight10 = SizedBox(height: 10);
const kHeight20 = SizedBox(height: 20);
const kHeight30 = SizedBox(height: 30);
const kHeight50 = SizedBox(height: 50);

const kWidth5 = SizedBox(width: 5);
const kWidth10 = SizedBox(width: 10);
const kWidth20 = SizedBox(width: 20);
const kWidth30 = SizedBox(width: 30);
const kWidth50 = SizedBox(width: 50);

const kRadius5 = Radius.circular(5);
const kRadius10 = Radius.circular(10);
const kRadius20 = Radius.circular(20);
const kRadius50 = Radius.circular(50);

String manjestCity =
    'https://firebasestorage.googleapis.com/v0/b/travelapp-c2e16.appspot.com/o/AppImages%2Ftest%2Fmanjester%20front.png?alt=media&token=36eb71bc-d469-4e46-be71-8d686979e11a';
String rmRonaldo =
    'https://firebasestorage.googleapis.com/v0/b/travelapp-c2e16.appspot.com/o/AppImages%2Ftest%2Frm%20ronaldo.png?alt=media&token=8d2abfd3-a02b-460a-9127-be6f7e39b71d';
String rmRonaldo2 =
    'https://firebasestorage.googleapis.com/v0/b/travelapp-c2e16.appspot.com/o/AppImages%2Ftest%2Frm%20ronaldo2.png?alt=media&token=ce2ef846-05dc-42e7-aa49-6066006b1409';
String rmaFront =
    'https://firebasestorage.googleapis.com/v0/b/travelapp-c2e16.appspot.com/o/AppImages%2Ftest%2Frma%20front.png?alt=media&token=f58ff6e8-f3f4-40de-87b2-d3b3bdfa092b';

ButtonStyle elevatedButtonStyle = ElevatedButton.styleFrom(
  side: const BorderSide(color: kWhite),
  fixedSize: Size(sWidth * 0.30, sWidth * 0.10),
  backgroundColor: kBlack,
  foregroundColor: kWhite,
  shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(kRadius5)),
);

ButtonStyle elevatedButtonStyleBlack = ElevatedButton.styleFrom(
  side: const BorderSide(color: kWhite),
  backgroundColor: kBlack,
  foregroundColor: kWhite,
  shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(kRadius5)),
);

ButtonStyle elevatedButtonStyleRed = ElevatedButton.styleFrom(
  side: const BorderSide(color: kWhite),
  backgroundColor: kRed,
  foregroundColor: kWhite,
  shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(kRadius5)),
);

const TextStyle headStyle = TextStyle(fontWeight: FontWeight.w700);
TextStyle priceStyle =
    TextStyle(fontWeight: FontWeight.w700, fontSize: sWidth * 0.050);
TextStyle priceStyleCross = TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: sWidth * 0.040,
    color: kBlack.withOpacity(0.7),
    decoration: TextDecoration.lineThrough);

TextStyle kronOne(
    {double fontSize = 0.035,
    FontWeight fontWeight = FontWeight.normal,
    Color color = kBlack}) {
  return GoogleFonts.kronaOne(
      fontSize: fontSize * sWidth, fontWeight: fontWeight, color: color);
}

void sizeFinder(BuildContext context) {
  final size = MediaQuery.of(context).size;
  sHeight = size.height;
  sWidth = size.width;
}
