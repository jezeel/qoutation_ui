import 'package:flutter/material.dart';

import 'signup_body.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {




  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          height: size.height,
          width: size.width,
          child: Stack(
            children: [
              Container(
                height: size.height*0.4,
                width: size.width,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/a2d6cbeb50afad15c90bd7964b06a6b9.jpg'),
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
                top: size.height*0.3,
                child: Container(
                  height: size.height*6,
                  width: size.width,
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(40),
                          topRight: Radius.circular(40))),
                  child: SignUpBody()
                ),
              )
            ],
          ),
        ),
      )
    );
  }
}
