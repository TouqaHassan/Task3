import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:ionicons/ionicons.dart';



void main() {
  runApp(MyApp());
 
}
class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Touqa",
      theme:ThemeData(primaryColor: Colors.blueGrey,
      accentColor:Colors.teal,
     // appBarTheme:AppBarTheme(color: Colors.teal),
      ),
      home:Home(),
      debugShowCheckedModeBanner: false,
      
      
    );
  }
}
void _launchURL(String _url) async {
    await canLaunch(_url) ? await launch(_url) : throw 'Could not launch $_url';
    }
class Home extends StatelessWidget {   // hy7slha displaying awl m el app yfta7
  const Home({ Key? key }) : super(key: key);
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    //   appBar:AppBar(title: Text("Touqa",style:TextStyle(fontSize: 18.0,
    //   fontWeight:FontWeight.w700,
    //   fontStyle:FontStyle.italic
    //   ),
    //   ),
    //   ),
    // body:SafeArea (
    
    //   child: Row(
    //     //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    //     crossAxisAlignment: CrossAxisAlignment.stretch,
    //     children: [
          
    //  Container(color: Colors.red,
    //                // child: Text("red Container"),
    //                 width: 100.0,
    //                //height: 200.0,
    //                constraints:BoxConstraints(minHeight: 20.0, maxHeight: 200.0),
    //         ),
          
            
    //           Container(color: Colors.blue,
    //                // child:Text("red Container"),
    //                  // width: 200.0,
    //                  height: 20.0,
    //                  width: 100.0,
    //                  //constraints:BoxConstraints(minHeight: 20.0, maxHeight: 200.0),
    //                   ),
    //       Container(color: Colors.teal,
    //                // child:Text("red Container"),
    //                  // width: 200.0,
    //                  height: 20.0,
    //                  width: 20.0,
    //                  //constraints:BoxConstraints(minHeight: 20.0, maxHeight: 200.0),
    //                   ),
          
    //     ],
    //   ),
    // ),
    body: SafeArea(
      child:Container(
          child: Center(
            child: Column(
                //crossAxisAlignment: CrossAxisAlignment.stretch,
               children: [
                 CircleAvatar(radius: 120.0,
                  backgroundImage:AssetImage("assets/images/p.jpg"),
                 ),
                 Center(
                child: Padding(
                  padding: const EdgeInsets.only(top: 10.0),
                  child: Text('Touqa Hassan', style: GoogleFonts.sail(textStyle:TextStyle(fontSize: 22.0, fontWeight: FontWeight.bold, 
                  ),
                  ),
      
                     ),
                ),
                 ),
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text('Flutter Developer',style:TextStyle(fontSize: 18.0
                       ),
                       ),
                    ),
                  ),
                  
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ContactCard(contactText:'+201114315729',
                    iconData: Icons.phone,
                    url:"tel:+01114315729" ,
                     ),
                  
                  ),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ContactCard(contactText: "touqahassan8@gmail.com",
                   iconData: Icons.mail,
                    url: "mailto:smith@example.org?subject=News&body=New%20plugin"),
                ),

                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ContactCard(contactText:"TouqaaHassan126",
                     iconData: Icons.facebook, 
                     url: "https://www.facebook.com/touqaa.saber/"),
                  ),
Padding(
  padding: const EdgeInsets.all(8.0),
  child:   ContactCard(
  contactText: "TouqaHassan", 
  iconData:Ionicons.logo_github,
   url: "https://github.com/TouqaHassan",
  
   ),
),

Padding(
  padding: const EdgeInsets.all(8.0),
  child:   ContactCard(contactText: "Touqa S.Hassan",
   iconData: Ionicons.logo_instagram,
    url:"https://www.instagram.com/touqa_saber126/"),
)
               ]
          ),
          ),
      ),
    ),
        );
        
    
  }

  
}

class ContactCard extends StatelessWidget {
final String contactText;
final iconData;
final String url;
  const ContactCard({required this.contactText,
  required this.iconData,
  required this.url});
  
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5.0,
      color: Colors.black,
        child: ListTile(
          leading: Icon(
            iconData,
          color: Colors.grey,
          size: 25.0,
          ),
          title: Text(contactText,
          style:TextStyle(
            color:Colors.white,
          fontSize: 20.0,
          ),
          ),
          onTap: ()
          {
            _launchURL(url);
          },

        ),
      );
  }
}

  


