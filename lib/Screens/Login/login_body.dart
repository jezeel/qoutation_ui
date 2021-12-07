import 'package:flutter/material.dart';
import 'package:smart_bip_quotation_mker1/Screens/SignUp/signup.dart';
import 'package:smart_bip_quotation_mker1/widgets/center_button.dart';
import 'package:smart_bip_quotation_mker1/widgets/forgot_password_button.dart';
import 'package:smart_bip_quotation_mker1/widgets/input_field.dart';
import 'package:smart_bip_quotation_mker1/widgets/login_or_signup_button.dart';
import 'package:smart_bip_quotation_mker1/widgets/password_field.dart';

import '../home_page.dart';

class LogInBody extends StatefulWidget {
  const LogInBody({Key? key}) : super(key: key);

  @override
  _LogInBodyState createState() => _LogInBodyState();
}

class _LogInBodyState extends State<LogInBody> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        SizedBox(height: size.height*0.02,),
        Padding(padding: EdgeInsets.only(left: 35),
          child: Row(
              children: [
                IconButton(onPressed: (){}, icon: Icon(Icons.arrow_back_ios, size: 30,)),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 68),
                  child: Text(
                    "  Log In",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                      color: Colors.black,
                    ),
                  ),
                ),
              ]),
        ),
        InputTextField(
          hintText: "Username or Email",
          onChangedAction: (value){},
          containerMargin: EdgeInsets.only(top: size.height* 0.05),
        ),
        PasswordField(
          containerMargin: EdgeInsets.only(top: size.height* 0.03),
          onChangedAction: (value){},
        ),
        Container(
          margin: EdgeInsets.only(right: size.width *0.51),
          child: const ForgotPassword(),
        ),
        Button(
          buttonColor: Colors.black,
          buttonText: "LogIn",
          textColor: Colors.white,
          press: (){
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return HomePage();
                },
              ),
            );
          },
          margin: EdgeInsets.only(top: size.width * 0.05),
          buttonWidth: size.width*0.8,
          buttonHeight: size.height*0.055,
        ),
        SizedBox(height: size.height*0.05,),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Don't Have an Account..?", style: TextStyle(color: Colors.grey),),
            LogInOrSignUpButton(
              textButtonAction: () {Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return SignUp();
                  },
                ),
              );},
              buttonText: "Sign Up",
            ),
          ],
        ),
      ],
    );
  }
}
