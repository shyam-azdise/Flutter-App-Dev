// import 'package:flutter/foundation.dart';
// import 'package:get/instance_manager.dart';
import 'package:maamedicos/common_widgets/logo.dart';
import 'package:maamedicos/constants/constants.dart';
import 'package:maamedicos/views/splashscreen/auth_screen/login_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State <SplashScreen> createState() =>  _SplashScreenState();
}

class  _SplashScreenState extends State <SplashScreen> {

  //Creating a Method to change Screen
  changeScreen(){
    Future.delayed(const Duration(seconds: 3), () {

      //Using 'Get'
      Get.to(() => const LoginScreen());
    });
  }

  // To get it executed at the start of our application we will use 'init' 
  @override
  void initState() {
    changeScreen();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(244, 88, 202, 208),
      body: Center(
        child: Column(
        children:[
         Align(alignment: Alignment.topLeft,child: Image.asset(icSplashBg, width: 300)),
         10.heightBox,
         applogoWidget(),
         7.heightBox,
         appName.text.fontFamily(bold).size(25).color(const Color.fromARGB(255, 38, 221, 22)).make(),
         2.heightBox,
         tagLine.text.fontFamily(regular).size(18).white.make(),
         5.heightBox,
         appVersion.text.size(10).color(const Color.fromARGB(255, 11, 16, 124)).make(),
         const Spacer(),
         credits1.text.white.size(2).make(),
         1.heightBox,
         Image.asset(icAppLogo).box.size(15, 15).make(),
         credits.text.fontFamily(bold).make(),
         30.heightBox,
        ])
      )
    );
  }
}