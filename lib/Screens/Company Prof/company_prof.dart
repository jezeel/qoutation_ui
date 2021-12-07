import 'package:flutter/material.dart';

import 'company_prof_body.dart';


class CompProf extends StatefulWidget {
  const CompProf({Key? key}) : super(key: key);

  @override
  _CompProfState createState() => _CompProfState();
}

class _CompProfState extends State<CompProf> {








  buildDrawer(){
    return Drawer(
      child: ListView(
        children: [
          const DrawerHeader(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  colors: <Color>[Color(0xFF3eadcf), Color(0xFFabe9cd)],
                ),
              ),
              child: Text("User Info", style: TextStyle(
                fontSize: 30, fontWeight: FontWeight.bold,
              ))),
          buildInkWell(
                  (){},
              Icons.home,
              'Dashboard'
          ),
          buildInkWell(
                  (){},
              Icons.person_outline,
              'Company Info'
          ),
          buildInkWell(
                  (){},
              Icons.create_new_folder_outlined,
              'New Quotation'
          ),
          buildInkWell(
                  (){},
              (Icons.skip_previous),
              'Previous Quotation'
          ),
          buildInkWell(
                  (){},
              Icons.settings,
              'Settings'
          ),
          const Divider(),
          buildInkWell(
                  (){},
              Icons.contact_mail,
              'Contact Us'
          ),
          buildInkWell(
                  (){},
              Icons.exit_to_app,
              'Exit'
          ),
        ],
      ),
    );
  }



  buildInkWell(void Function()? onTap, IconData? icon, String? text ){
    return InkWell(
      onTap: onTap,
      child: ListTile(
        title: Row(
          children: [
            Icon(icon),
            const SizedBox(width: 15,),
            Text(text!)
          ],
        ),
      ),
    );
  }









  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey[900],
        title: const Text('Company Info'),
        centerTitle: true,
      ),
      drawer: buildDrawer(),
      body: CompanyBody(),
    );
  }
}
