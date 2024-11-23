import 'package:maamedicos/constants/constants.dart';

Widget applogoWidget(){
  
  // Using Velocity_x we design , create and return te same to the screen in form of widget.
  // Velocity_x is a widget that can be used to create a widget that can be used to
  return Image.asset(appLogoSquare).box.size(150, 150).padding(const EdgeInsets.all(8)).make();
}