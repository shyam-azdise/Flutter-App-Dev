import 'package:maamedicos/common_widgets/bg_widget.dart';
import 'package:maamedicos/common_widgets/button.dart';
import 'package:maamedicos/common_widgets/custom_textfield.dart';
import 'package:maamedicos/common_widgets/logo.dart';
import 'package:maamedicos/constants/constants.dart';
import 'package:maamedicos/controllers/auth_controller.dart';
import 'package:maamedicos/views/homeScreen/home.dart';


class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  bool? isCheck = false;
  var controller = Get.put(AuthController());

  // Input field controllers 
  var nameController = TextEditingController();
  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  var confirmPasswordController = TextEditingController();

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
              "Sign Up into $appName".text.fontFamily(semibold).size(15).white.make(),
              Column(
                children: [
                  customTextField(hint: nameHint , title: name, controller: nameController , ispass: false),
                  customTextField(hint: emailHint , title: email, controller: emailController, ispass: false),
                  Align(
                    alignment: Alignment.centerRight,
                    child: TextButton(onPressed: (){}, child: connectWithPhone.text.make())),
                  customTextField(hint: passwordHint , title: password, controller: passwordController, ispass: true),
                  customTextField(hint: passwordHint , title: reTypePassword, controller: confirmPasswordController, ispass: true),
                    5.heightBox,
                    // button().box.width(context.screenWidth - 50).make(),
                    2.heightBox,
                    Row(
                      children: [
                        Checkbox(
                          checkColor: redColor,
                          value: isCheck, 
                          onChanged: (newValue){
                            setState(() {
                              isCheck = newValue;
                            });
                            
                          }),
                          10.widthBox,
                          Expanded(
                            child: RichText(
                              text: const TextSpan(
                                children: [
                                  TextSpan(
                                    text: "I agree with the ",
                                    style: TextStyle(color: fontGrey,
                                    fontFamily: semibold,
                                  )
                                  ),
                                  TextSpan(
                                    text: terms,
                                    style: TextStyle(color: redColor,
                                    fontFamily: semibold,
                                  )
                                  ),
                                  TextSpan(
                                    text: " and ",
                                    style: TextStyle(color: fontGrey,
                                    fontFamily: semibold,
                                  )
                                  ),
                                  TextSpan(
                                    text: privacy,
                                    style: TextStyle(color: redColor,
                                    fontFamily: semibold,
                                  )
                                  )
                                ]
                              ),
                            ),
                          )
                      ],
                    ),
                    button(
                      color: isCheck == true? redColor: lightGrey, 
                      title: signUp, textColor: whiteColor,
                    onPress: () async{
                      if(isCheck == true){
                        try {
                          await controller.signupMethod(context:context, email: emailController.text, password: passwordController.text)
                          .then((value){
                            return controller.storingUserData(name, email, password);
                          })
                          .then((value){
                            VxToast.show(context, msg: loggedin);
                            Get.offAll(() => const Home());
                          });
                        } catch (e) {
                          auth.signOut();
                          VxToast.show(context, msg: e.toString());
                        }
                      }
                    }).box.width(context.screenWidth - 50).make(),
                    10.heightBox,
                    // wrappint this 'RichText' element into 'Gesture Detector' of Velocity_x by adding '.onTap()
                    RichText(text: const TextSpan(
                      children: [
                        TextSpan(
                          text: "Already have an account ",
                      style: TextStyle(
                        color: fontGrey,
                        fontFamily: semibold
                        )
                        ),
                        TextSpan(
                          text: login,
                          style: TextStyle(
                            color: redColor,
                          ),
                        )
                      ]
                      )
                    ).onTap((){
                      Get.back();
                    }),

                ],
              ).box.white.rounded.padding(const EdgeInsets.all(16)).width(context.screenWidth - 70).shadowSm.make(),
            ],
          ),
        )
    ));
  }
  
}
