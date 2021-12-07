import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:smart_bip_quotation_mker1/widgets/center_button.dart';
import 'package:smart_bip_quotation_mker1/widgets/input_field.dart';

class CompanyBody extends StatefulWidget {
  const CompanyBody({Key? key}) : super(key: key);

  @override
  _CompanyBodyState createState() => _CompanyBodyState();
}

class _CompanyBodyState extends State<CompanyBody> {







  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;
    _buildTextField(EdgeInsetsGeometry? margin, IconData? icon, String? hintText, void Function(String)? onChangedAction,
        void Function(String?)? onSaved, TextInputType? keyboardType){
      return Container(
        width: size.width*0.9,
        height: size.height*0.05,
        margin: margin,
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey),
          borderRadius: BorderRadius.circular(40),
        ),
        child: TextFormField(
          keyboardType: keyboardType,
          onChanged: onChangedAction,
          cursorColor: Colors.red,
          decoration: InputDecoration(
            icon: Icon(icon,
              color: Colors.black,
            ),
            hintText: hintText,
            border: InputBorder.none,

          ),
          onSaved: onSaved,
        ),
      );
    }








    return Padding(
      padding: EdgeInsets.symmetric(vertical: size.height*0.03, horizontal: size.width*0.05),
      child: ListView(
        children: [
          Text('Company Info', style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),),
          _buildTextField(EdgeInsets.only(top: size.height*0.01),
          Icons.supervised_user_circle_outlined, 'Company Name*', (String){}, (String){}, TextInputType.name,
          ),
          _buildTextField(EdgeInsets.only(top: size.height*0.01),
            Icons.person, "Person Name*", (String){}, (String){}, TextInputType.name,
          ),
          _buildTextField(EdgeInsets.only(top: size.height*0.01),
            Icons.games_outlined, "GST Number", (String){}, (String){}, TextInputType.number,
          ),
          _buildTextField(EdgeInsets.only(top: size.height*0.01),
            Icons.phone, "Contact Number*", (String){}, (String){}, TextInputType.number,
          ),
          _buildTextField(EdgeInsets.only(top: size.height*0.01),
            Icons.mail, "Email*", (String){}, (String){}, TextInputType.emailAddress,
          ),
          _buildTextField(EdgeInsets.only(top: size.height*0.01),
            Icons.location_on, "Address*", (String){}, (String){}, TextInputType.none,
          ),
          _buildTextField(EdgeInsets.only(top: size.height*0.01),
            Icons.plagiarism_rounded, "City*", (String){}, (String){}, TextInputType.name,
          ),
          _buildTextField(EdgeInsets.only(top: size.height*0.01),
            Icons.post_add, "Zip Code*", (String){}, (String){}, TextInputType.number,
          ),
          _buildTextField(EdgeInsets.only(top: size.height*0.01),
            Icons.swap_vertical_circle_sharp, "Web Site", (String){}, (String){}, TextInputType.none,
          ),


          Button(
            buttonColor: Colors.black,
            buttonText: "SUBMIT",
            textColor: Colors.white,
            press: (){},
            margin: EdgeInsets.only(top: size.width * 0.05),
            buttonWidth: size.width*0.3,
            buttonHeight: size.height*0.05,
          ),

        ],
      ),
    );
  }
}
