
import 'package:maamedicos/common_widgets/bg_widget.dart';
import 'package:maamedicos/common_widgets/button.dart';
import 'package:maamedicos/common_widgets/custom_textfield.dart';
import 'package:maamedicos/common_widgets/logo.dart';
import 'package:maamedicos/constants/constants.dart';
import 'package:maamedicos/constants/list.dart';
import 'package:maamedicos/views/homeScreen/home.dart';
import 'package:maamedicos/views/splashscreen/auth_screen/signup_screen.dart';


class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return bgWidget(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body:Center(
          child: Column(
            children: [
              (context.screenHeight * 0.05).heightBox,
              applogoWidget(),
              10.heightBox,
              "Log in to $appName".text.fontFamily(semibold).size(15).white.make(),
              Column(
                children: [
                  customTextField(hint: emailHint , title: email, ispass: false),
                  customTextField(hint: passwordHint , title: password, ispass: true),
                  Align(
                    alignment: Alignment.centerRight,
                    child: TextButton(onPressed: (){}, child: forgetPass.text.make())),
                    5.heightBox,
                    // button().box.width(context.screenWidth - 50).make(),
                    button(color: redColor, title: login, textColor: whiteColor,onPress: (){
                      Get.to(() => const Home());
                    }).box.width(context.screenWidth - 50).make(),
                    2.heightBox,
                    TextButton(onPressed: (){}, child: createAcc.text.color(fontGrey).make()),
                    5.heightBox,
                    button(
                      color: const Color.fromARGB(255, 193, 174, 122), 
                      title: signUp, 
                      textColor: const Color.fromARGB(255, 17, 7, 7),
                      onPress: (){
                      Get.to(() => const SignupScreen());
                    })
                    .box.width(context.screenWidth - 50).make(),
                    12.heightBox,
                    "Log in With".text.fontFamily(semibold).size(12).make(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(3, (index) => Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: CircleAvatar(
                          backgroundColor: lightGrey,
                          radius: 25,
                          child: Image.asset(socialIconList[index], width: 30,),
                        ),
                      )),
                    )


                ],
              ).box.white.rounded.padding(const EdgeInsets.all(16)).width(context.screenWidth - 70).shadowSm.make(),
            ],
          ),
        )
    ));
  }
}