
import 'package:flutter/material.dart';

import 'Company Prof/company_prof.dart';
import 'Make Quotations/make_quotation.dart';
import 'Previous Quotations/previous.dart';
import 'Settings/settings.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);


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




  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    buildOptionCard(String? cardText, String? cardDetail, Color? roundColor, IconData? cardIcon, void Function()? onTap){
      return Container(

        height: 10,
        width: 50,
        child: Card(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15)
          ),
          elevation: 10,
          child: InkWell(
            onTap: onTap,
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                children: [
                  Container(
                    width: 65.0,
                    height: 65.0,
                    decoration: BoxDecoration(
                      color: roundColor,
                      borderRadius: BorderRadius.all(Radius.circular(35.0)),
                    ),
                    child: Icon(cardIcon, color: Colors.white, size: 35,),
                  ),
                  SizedBox(height: 10,),
                  Text(cardText!,textAlign: TextAlign.center,),
                  SizedBox(height: 10,),
                  const Divider(),
                  Text(cardDetail!, textAlign: TextAlign.center, style: const TextStyle(
                        color: Colors.grey
                    ),)
                ],
              ),
            ),
          ),
        ),
      );
    }



    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          IconButton(
              onPressed: (){}, icon: const Icon(Icons.person))
        ],
      ),
      drawer: buildDrawer(),
      body: SizedBox(
        height: size.height,
        width: size.width,
        child: Stack(
          children: [
            Container(
              width: size.width,
              height: size.height*0.4,
              alignment: Alignment.topCenter,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/5597-abstract-blue-720x1280-wallpaper.jpg'),
                  fit: BoxFit.cover,),
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(25),
                      bottomRight: Radius.circular(25))),
              // child:,
              // child must requred her
              ),
            Container(
              height: size.height*0.6,
              width: size.width*0.7,
              margin: EdgeInsets.only(top: size.height*0.3, left: size.width*0.15, right: size.width*0.13 ),
              child: GridView.count(
                childAspectRatio: 0.65,
                physics: const NeverScrollableScrollPhysics(),
                padding: const EdgeInsets.all(10.0),
                crossAxisSpacing: 8.0,
                mainAxisSpacing: 8.0,
                crossAxisCount: 2,
                children: [
                  buildOptionCard("Company Profile", "Add Company Details here", Colors.amberAccent[400], Icons.supervised_user_circle,
                          (){
                              Navigator.push(context, MaterialPageRoute(builder: (context) {
                                return CompProf();
                              },
                            ),
                          );}),
                  buildOptionCard("Make Quotation", "Make Quotation and Share it", Colors.blueGrey[900], Icons.pending_actions,
                          (){
                              Navigator.push(context, MaterialPageRoute(builder: (context) {
                                  return MakeQuot();
                                  },
                              ),
                            );
                          }),
                  buildOptionCard("Previous Quotation", "Preview Last Quotation Here", Colors.indigo[900], Icons.skip_previous_rounded,
                          (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) {
                          return Previous();
                        },
                        ),
                        );}),
                  buildOptionCard("Settings", "Change Curancy, Language etc..", Colors.amber[900], Icons.settings,(){
                        Navigator.push(context, MaterialPageRoute(builder: (context) {
                          return Settings();
                        },
                        ),
                        );})
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
