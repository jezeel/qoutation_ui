import 'package:flutter/material.dart';
import 'package:smart_bip_quotation_mker1/Screens/Company%20Prof/company_prof_body.dart';

import 'TabsPage/customer.dart';

class MakeQuot extends StatefulWidget {
  const MakeQuot({Key? key}) : super(key: key);


  @override
  _MakeQuotState createState() => _MakeQuotState();
}





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





class _MakeQuotState extends State<MakeQuot> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blueGrey[900],
          title: const Text('Make Quotation'),
          centerTitle: true,
          bottom: const TabBar(
            tabs: [
              Tab(text: 'COMPANY',),
              Tab(text: 'CUSTOMER',),
              Tab(text: 'PRODUCT',),
              Tab(text: 'TERMS',),
              Tab(text: 'PREVIEW',)
            ],
            isScrollable: true,
            indicatorColor: Colors.white,
            indicatorWeight: 3,
          ),
        ),
        drawer: buildDrawer(),
        body: TabBarView(
          children: [
            CompanyBody(),
            CustomerBody(),
            Center(child: Text('Tab3')),
            Center(child: Text('Tab4')),
            Center(child: Text('Tab5'))
          ],
        ),
      ),
    );
  }
}
