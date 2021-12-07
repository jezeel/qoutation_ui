import 'package:flutter/material.dart';
import 'package:smart_bip_quotation_mker1/Screens/Login/login.dart';
import 'package:smart_bip_quotation_mker1/Screens/SignUp/signup.dart';
import 'package:smart_bip_quotation_mker1/widgets/center_button.dart';


class FirstScreen extends StatefulWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  _FirstScreenState createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SizedBox(
        height: size.height,
        width: size.width,
        child: Stack(
          children: [
            Container(
              height: size.height*0.4,
              width: size.width,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/30e59437713e08de9b14fb1741217da6.jpg'),
                  fit: BoxFit.fill,),),
              child: Center(child: Column(
                children: [
                  SizedBox(height: size.height*0.1,),
                  const Text('PUNCH', style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 70,
                      color: Colors.white
                  ),),
                  const Text('Punch . Earn . Repeat', style: TextStyle(
                    fontSize: 22,
                    color: Colors.white,
                  ),),
                ],
              ),),),
            Positioned(
              top: size.height*0.35,
                child: Container(
                  height: size.height*8,
                  width: size.width,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(40),
                          topRight: Radius.circular(40))),
                  child: Column(
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: size.height*0.04),
                        height: size.height*0.35,
                        decoration: BoxDecoration(
                          color: Colors.white
                        ),
                      ),
                      Button(
                        buttonColor: Colors.black,
                        buttonText: "LOG IN",
                        textColor: Colors.white,
                        press: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return LogIn();
                              },
                            ),
                          );
                        },
                        margin: EdgeInsets.only(top: size.height * 0.05),
                        buttonWidth: size.width*0.8,
                        buttonHeight: size.height*0.07,
                      ),
                      Button(
                        buttonColor: Colors.white,
                        textColor: Colors.black,
                        buttonText: "SIGN UP",
                        press: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return SignUp();
                              },
                            ),
                          );
                        },
                        margin: EdgeInsets.only(top: size.height * 0.03),
                        buttonWidth: size.width*0.8,
                        buttonHeight: size.height*0.07,
                      ),
                    ],
                  ),
                  ),
                )


          ],
        ),
      ),
    );
  }
}











