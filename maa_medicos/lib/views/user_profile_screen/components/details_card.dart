import 'package:maamedicos/constants/constants.dart';

Widget detailsCard({
  String?  title, width, String? count
}){
  return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                count!.text.fontFamily(bold).size(16).color(darkFontGrey).make(),
                title!.text.fontFamily(semibold).color(darkFontGrey).make(),
              ],
            ).box
            .white
            .roundedSM
            .height(60)
            .width(width)
            .padding(const EdgeInsets.all(4))
            .make();
}