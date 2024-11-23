import 'package:maamedicos/constants/constants.dart';

Widget customTextField({String? title, String? hint , controller, ispass}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      title!.text.fontFamily(semibold).size(16).color(redColor).make(),
      10.heightBox,
      TextFormField(
        obscureText: ispass,
        controller: controller,
        decoration: InputDecoration(
          hintStyle: const TextStyle(
            color: textfieldGrey,
            fontFamily: semibold,
          ),
          hintText: hint,
          isDense: true,
          fillColor: lightGrey,
          filled: true,
          border: InputBorder.none,
          focusedBorder: const OutlineInputBorder(borderSide: BorderSide(color: redColor))
        ),
      ),
      8.heightBox,
    ],
  );
}