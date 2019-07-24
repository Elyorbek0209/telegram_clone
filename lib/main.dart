import 'package:flutter/material.dart';

import 'package:telegram_clone/pages/pageview.dart';

import 'package:telegram_clone/pages/contact.dart';

import 'package:telegram_clone/pages/contactDetails.dart';



void main(){

  runApp(CoolApp());

}



class CoolApp extends StatelessWidget {
 

  @override
  Widget build(BuildContext context) {


    return MaterialApp(

      debugShowCheckedModeBanner: false,

      theme: ThemeData(

          //Here color of AppBar
          primaryColor: Color(0xff01579B),

      ),

      home: HomePageView(),

      onGenerateRoute: (settings) => generateRoute(settings),
  
    );

  }


  generateRoute(RouteSettings settings) {

    final path = settings.name.split('/');

    final contactName = path[1];


    Contact contact = contacts.firstWhere((myroute) => myroute.contactName == contactName);

    
    return MaterialPageRoute(

      settings: settings,

      builder: (context) => ContactDetails(contact),

    );
  
  }

}


