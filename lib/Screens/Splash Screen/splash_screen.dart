import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:smart_bip_quotation_mker1/Screens/First%20Screen/first_screen.dart';

import '../home_page.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState(){
    super.initState();
    _navigatetohome();
  }

  _navigatetohome()async{
    await Future.delayed(const Duration(milliseconds: 1500), (){});
    Navigator.pushReplacement(context, MaterialPageRoute(builder:
        (context)=> FirstScreen()));
  }


  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          buildBackGroundImg(),
          Positioned( top: size.height*0.46, left: size.width*0.22,
            child: Column(
            children: const [
              Text('PUNCH', style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 70,
                  color: Colors.black
              ),),
              Text('Punch . Earn . Repeat', style: TextStyle(
                fontSize: 22,
                color: Colors.grey,
              ),),
            ],
            ),
          ),
        ],
      ),
    );
  }
}

buildBackGroundImg(){
  return Stack(
    children: [
      Positioned(
        top: 40,
          left: 70,
          width: 100,
          child: SvgPicture.asset(
            'assets/rounded svg/light blue.svg',
            height: 200.0,
            width: 200.0,
            allowDrawingOutsideViewBox: true,
          ),),
      Positioned(
        top: 50,
        left: 290,
        width: 200,
        child: SvgPicture.asset(
          'assets/rounded svg/pink.svg',
          height: 300.0,
          width: 300.0,
          allowDrawingOutsideViewBox: true,
        ),),

      Positioned(
        top: 380,
        left: 120,
        width: 55,
        child: SvgPicture.asset(
          'assets/rounded svg/sky blue.svg',
          height: 300.0,
          width: 300.0,
          allowDrawingOutsideViewBox: true,
        ),),
    ],
  );
}
