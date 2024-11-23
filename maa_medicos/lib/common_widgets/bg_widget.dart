import 'package:maamedicos/constants/constants.dart';

Widget bgWidget({Widget? child}){
  return Container(
    decoration: const BoxDecoration(image: DecorationImage(image: AssetImage(imgBackground), fit: BoxFit.fill)),
    // This child is a widget which we provide on screen through widget parameter in above bgWidget
    child: child,
  );
}