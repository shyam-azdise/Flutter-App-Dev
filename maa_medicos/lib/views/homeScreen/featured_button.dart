import 'package:maamedicos/constants/constants.dart';

Widget featuredButton ({String? title , icon}){
  return Row(
    children: [
      Image.asset(icon, width: 40, fit: BoxFit.fill,),
      10.widthBox,
      title!.text.fontFamily(semibold).color(darkFontGrey).make(),
    ],
  ).box
  .width(200)
  .rounded
  .gray50
  .margin(const EdgeInsets.symmetric(horizontal: 4))
  .padding(const EdgeInsets.all(4))
  .outerShadowSm
  .make();
}