import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'contact.dart';



class ContactDetails extends StatelessWidget {
  

  final Contact contact;

  ContactDetails(this.contact);


  
  @override
  Widget build(BuildContext context) {



    //-----------IMAGE DETAILS BEGINS --------------

    final myImage = Hero(


      tag: contact.contactName,


      child: Container(


        width: MediaQuery.of(context).size.width,

        height: MediaQuery.of(context).size.height / 2,


        decoration: BoxDecoration(


          image: DecorationImage(


            fit: BoxFit.fill,

            image: AssetImage(contact.contactImage),


          )


        ),


      ),


    );

    //-----------END OF IMAGE DETAILS --------------




    //----------- "PHONE, EMAIL,..." CONTACTDETAILS INFORMATION BEGINS --------------

    final myDetails = Material(


      color: Colors.white,

      elevation: 14.0,

      borderRadius: BorderRadius.circular(24.0),

      shadowColor: Color(0x802196f3),

      
       //----1st ROW PHONE ICON & NUMBERS in ContactDetails -----

      child: Padding(


        padding: EdgeInsets.all(8.0),

        
        child: Column(

        
          children: <Widget>[

        
            Padding(

        
              padding: const EdgeInsets.all(8.0),

        
              child: Column(


                children: <Widget>[


                  Container(


                    child: Row(


                      mainAxisAlignment: MainAxisAlignment.start,


                      children: <Widget>[

                        
                        //----PHONE ICON in ContactDetails -----

                        Padding(


                          padding: EdgeInsets.only(left: 24.0),


                          child: Container(


                            child: Icon(


                              FontAwesomeIcons.phone,

                              color: Color(0xff4caf50),


                            ),


                          ),


                        ),

                        

                        //----PHONE NUMBER in ContactDetails -----

                        Padding(


                          padding: EdgeInsets.only(left: 24.0),


                          child: Container(


                            child: Text(
                              

                              contact.contactPhone,


                              style: TextStyle(

                                color: Colors.black,

                                fontSize: 22.0,

                              ),


                            ),


                          ),


                        )


                      ],


                    ),


                  ),


                ],


              ),


            ),



            //----2nd ROW EMAIL ICON & ADRESS in ContactDetails -----

            Padding(

              padding: EdgeInsets.all(8.0),

              child: Column(
                
                children: <Widget>[


                  Container(
                    
                    child: Row(

                      mainAxisAlignment: MainAxisAlignment.start,

                      children: <Widget>[


                        //----EMAIL ICON in ContactDetails -----

                        Padding(

                          padding: const EdgeInsets.only(left: 24.0),

                          child: Container(

                            child: Icon(FontAwesomeIcons.solidEnvelope,

                              color: Color(0xFFED1D7F),

                            ),
                            
                          ),

                        ),


                        //----EMAIL ADDRESS in ContactDetails -----


                        Padding(

                          padding: const EdgeInsets.only(left: 24.0),

                          child: Container(
                            
                            child: Text(
                              
                              contact.contactEmail,

                              style: TextStyle(

                                color: Colors.black,
                                
                                fontSize: 22.0,
                                
                              ),

                            ),
                            
                          ),

                        ),

                      ],
                      
                    )
                  
                  ),

                ],
                
              )


            ),


            //----3rd ROW FACEBOOK, GITHUB... ICON & ADRESS in ContactDetails -----

            
            Padding(

              padding: const EdgeInsets.all(8.0),
              
              child: Row(

                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                
                children: <Widget>[


                  //1 Facebook Icon
                  Padding(

                    padding: const EdgeInsets.only(left:8.0),


                    child: Material(

                      color: Color(0xff536dfe),

                      shape: CircleBorder(),


                      child: Padding(
                        
                        padding: EdgeInsets.all(8.0),


                        child: Icon(
                          
                          FontAwesomeIcons.facebook,

                          color: Colors.white,

                          size: 35.0
                          
                        ),


                      )

                    ),

                  ),


                  //2 GITHUB Icon

                  Padding(

                    padding: const EdgeInsets.only(left:8.0),


                    child: Material(

                      color: Colors.black,

                      shape: CircleBorder(),


                      child: Padding(
                        
                        padding: EdgeInsets.all(8.0),


                        child: Icon(

                          FontAwesomeIcons.github,

                          color: Colors.white,

                          size: 35.0
                            
                        ),

                      )

                    ),

                  ),



                  //3 Twitter Icon

                  Padding(

                    padding: const EdgeInsets.only(left:8.0),


                    child: Material(

                      color: Color(0xff81d4fa),

                      shape: CircleBorder(),


                      child: Padding(

                        padding: EdgeInsets.all(8.0),


                        child: Icon(
                          
                          FontAwesomeIcons.twitter,
                            
                          color: Colors.white,
                            
                          size: 35.0
                        
                        ),

                      )


                    ),

                  ),



                  //4 LINKEDIN Icon 

                  Padding(

                    padding: const EdgeInsets.only(left:8.0),


                    child: Material(

                      color: Colors.blue,

                      shape: CircleBorder(),


                      child: Padding(
                        
                        padding: EdgeInsets.all(8.0),


                        child: Icon(
                          
                          FontAwesomeIcons.linkedin,

                          color: Colors.white,

                          size: 35.0
                            
                        ),

                      )

                    ),

                  ),
                  

                ],

              ),

            ),


          ],

        ),

      ),

    );


    //----------- END OF THE "PHONE, EMAIL,..." CONTACTDETAILS INFORMATION --------------

    
    
    /**
    * HERE WE HAVE DECLARED 'MyImage' Hero() & myDetails() Methods above
    * & calling them inside the MaterialApp Widget
    */



    //-------------TOP BAR OFF THE CONTACT DETAILS PAGE ------------------


    return MaterialApp(

      debugShowCheckedModeBanner: false,

      theme: ThemeData(

        primaryColor: Color(0xff01579B),

      ),


      home: Scaffold(


        //---------APP BAR OF CONTACT DETAILS BEGINS --------


        appBar: AppBar(

          //----"ARROW LEFT" BUTTON AT THE TOP LEFT CORNER ----

          leading: IconButton(
            
            icon: Icon(
              
              FontAwesomeIcons.arrowLeft,

              color: Colors.white,

            ), 
          
            onPressed: () => Navigator.of(context).pop(),
          
          ),


          //TITLE OF THE CONTACT DETAILS PAGES
          title: Text(contact.contactName),


          actions: <Widget>[


            //---PEN ICON ---

            IconButton(
              
              icon: Icon(
                
                FontAwesomeIcons.pen
                
              ), 
            
              onPressed: () {
                
                //

              }

            ),


            //---ELLIPSISV ICON ---

            IconButton(
              
              icon: Icon(
                
                FontAwesomeIcons.ellipsisV
                
              ), 
              
              onPressed: () {

              //

              }
              
            ),

          ],

        ),

        //---------APP BAR OF CONTACT DETAILS ENDs --------



        //---------MAIN BODY OF CONTACT DETAILS WITH PICTURE BEGINS --------

        body: Column(

          children: <Widget>[

            myImage,

            Padding(

              padding: const EdgeInsets.only(top: 12.0, left: 8.0, right: 8.0),

              child: myDetails,

            ),

          ],

        ),

        //---------END OF THE MAIN BODY OF CONTACT DETAILS WITH PICTURE --------


      ),

    );
  }
}


