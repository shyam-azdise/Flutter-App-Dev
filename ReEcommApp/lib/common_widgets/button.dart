import 'package:maamedicos/constants/constants.dart';

Widget button({onPress, color,textColor, String? title,}) {
  return ElevatedButton(
    style: ElevatedButton.styleFrom(
      backgroundColor : color,
      padding: const EdgeInsets.all(8),
      shadowColor: const Color.fromARGB(205, 233, 229, 229),
    ),
    onPressed: onPress,
    child: title!.text.color(textColor).fontFamily(bold).size(18).make(),
    );
  }