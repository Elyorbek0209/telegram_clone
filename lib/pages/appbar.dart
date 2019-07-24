import 'package:flutter/material.dart';



class AppBar extends StatelessWidget {

  final String title;
  final double barHeight = 66.0;

  AppBar(this.title);


  @override
  Widget build(BuildContext context) {


    final double statusBarHeight = MediaQuery.of(context).padding.top;


    return Container(


      padding: EdgeInsets.only(top: statusBarHeight),
      
      height: statusBarHeight + barHeight,


      child: Center(


        child: Text(
          
          title,


          style: TextStyle(

            color: Colors.white,

            fontFamily: "Poppins",

            fontSize: 36.0,

            fontWeight: FontWeight.w600,

          ),


        ),

      ),


      decoration: BoxDecoration(


        gradient: LinearGradient(


          colors: [

            Color(0xff4a148c),

            Color(0xff512da8),

          ],


          begin: FractionalOffset(0.0, 0.0),

          end: FractionalOffset(0.5, 0.0),

          stops: [0.0, 0.5],

          tileMode: TileMode.clamp,


        )

      ),


    );


  }

}