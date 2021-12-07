import 'package:flutter/material.dart';
import 'package:smart_bip_quotation_mker1/Screens/Login/login.dart';
import 'package:smart_bip_quotation_mker1/widgets/center_button.dart';
import 'package:smart_bip_quotation_mker1/widgets/input_field.dart';
import 'package:smart_bip_quotation_mker1/widgets/login_or_signup_button.dart';
import 'package:smart_bip_quotation_mker1/widgets/password_field.dart';

import '../home_page.dart';

class SignUpBody extends StatefulWidget {
  const SignUpBody({Key? key}) : super(key: key);

  @override
  _SignUpBodyState createState() => _SignUpBodyState();
}

class _SignUpBodyState extends State<SignUpBody> {


  final GlobalKey<FormState>_leadKey = GlobalKey<FormState>();

  TextEditingController userNameTextEditingController = new TextEditingController();
  TextEditingController emailTextEditingController = new TextEditingController();
  TextEditingController phoneTextEditingController = new TextEditingController();
  TextEditingController passwordTextEditingController = new TextEditingController();


  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        SizedBox(height: size.height*0.02,),
        Padding(padding: const EdgeInsets.only(left: 35),
          child: Row(
            children: [
              IconButton(onPressed: (){}, icon: const Icon(Icons.arrow_back_ios, size: 30,)),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 63),
                child: Text(
                "  Sign Up",
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
          controller: userNameTextEditingController,
          hintText: "Username",
          onChangedAction: (value){},
          containerMargin: EdgeInsets.only(top: size.height* 0.05),
          validator: (String? value){if(value!.isEmpty)
          {
            return "User name is Required";
          }},
          onSaved: (String? value){
            var saveTo = value;
          },
        ),
        InputTextField(
          controller: emailTextEditingController,
          icon: Icons.email,
          hintText: "Email",
          onChangedAction: (value){},
          keyboardType: TextInputType.emailAddress,
          containerMargin: EdgeInsets.only(top: size.height* 0.02),
        ),
        InputTextField(
          controller: phoneTextEditingController,
          icon: Icons.phone,
          hintText: "Phone",
          onChangedAction: (value){},
          containerMargin: EdgeInsets.only(top: size.height* 0.02),
          keyboardType: TextInputType.number,
        ),
        PasswordField(
          containerMargin: EdgeInsets.only(top: size.height* 0.02),
          onChangedAction: (value){},
        ),
        PasswordField(
          controller: passwordTextEditingController,
          containerMargin: EdgeInsets.only(top: size.height* 0.02),
          onChangedAction: (value){},
          hintText: "Confirm Password",
        ),
        Button(
          buttonColor: Colors.black,
          buttonText: "Create Account",
          textColor: Colors.white,
          press: (){
            if (!_leadKey.currentState!.validate()) {
              return;
            }
            _leadKey.currentState!.save();

          },
          margin: EdgeInsets.only(top: size.height*0.05),
          buttonWidth: size.width*0.8,
          buttonHeight: size.height*0.055,
        ),
        SizedBox(height: size.height*0.02),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Already Have an Account..?", style: TextStyle(color: Colors.grey)),
            LogInOrSignUpButton(
              textButtonAction: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return LogIn();
                    },
                  ),
                );
              },
              buttonText: "Log In",
            ),
          ],
        ),
      ],
    );
  }
}
