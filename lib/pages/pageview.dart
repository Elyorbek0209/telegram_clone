import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'contact.dart';
import 'package:telegram_clone/components/drawer.dart';



class HomePageView extends StatelessWidget {


  //Here we'll declare 'Global Key' Object
  GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey();


 
  @override
  Widget build(BuildContext context) {
  
    //1 Creating 'creatingProfileImage()' Method to use it below with HERO WIDGET

   createProfileImage(Contact contact) =>

      //------------------------ HERO WIDGET BEGINS - it fly, jump from screen to another screen --------------------------

      Hero(

        tag: contact.contactName,

        child: Column(


          children: <Widget>[


            Material(


              //---'InkWell' is a widget & makes any child TAPABLE---

              child: InkWell(


                onTap: (){

                  Navigator.pushNamed(context, 'contactdetails/${contact.contactName}');

                },


                child: Container(

                  child: Column(

                    children: <Widget>[

                      //----Here 'FAVORITE PAGE' IMAGES CIRCLE BEGINS ----

                      Container(

                        width: 90,
                        
                        height: 75,

                        decoration: BoxDecoration(

                          shape: BoxShape.circle,

                          image: DecorationImage(

                            fit: BoxFit.fill,

                            image: AssetImage(

                              contact.contactImage

                            ),

                          )

                        ),

                      ),

                      //----END IMAGES IN CIRCLE ----


                      //----Here 'FAVORITE PAGE' CONTACT NAMES BEGINS ----

                      Container(

                        child: Padding(

                          padding: EdgeInsets.all(2.0),

                          child: Text(
                            
                            contact.contactName,

                            style: TextStyle(

                              color: Colors.black,

                              fontSize: 18.0,

                            ),

                          ),

                        ),

                      ),

                       //----End of 'FAVORITE PAGE' CONTACT NAMES  ----
                       

                    ],

                  ),

                ),

              ),

              //---End of 'InkWell' widget which makes any child TAPABLE---


            )

          ],

        ),


      );


      //------------------------ HERO WIDGET BEGINS --------------------------


      /**
       * ----CUSTOMSCROLLVIEW - it'll help to scroll view
       * effect when we add our list or grid items.
       * 
       */

      final ProfileGrid = CustomScrollView(

        
        primary: false,

        //Here 'SLIVERS' Widget'll take multiple component inside
        slivers:<Widget>[

          SliverPadding(

            padding: EdgeInsets.only(top: 8.0),

            //Here 'SliverGrid.count' will give # of Column
            sliver: SliverGrid.count(

              childAspectRatio: 1,
              
              crossAxisCount: 3,

              mainAxisSpacing: 4.0,

              children: contacts.map((contact) => createProfileImage(contact)).toList(),

            ),

          )

        ]

      );


      //------------------------ HERO WIDGET BEGINS --------------------------


      ProfileList(Contact contact) =>

        Hero(

          tag: contact.contactName,

          child: Container(

            child: Padding(

              padding: EdgeInsets.all(8.0),

              child: Material(


                //----Here 'ALL' PAGE IMAGES & CONTACT DETAILS BEGINS ----


                color: Colors.white,

                elevation: 14.0,

                borderRadius: BorderRadius.circular(24.0),

                shadowColor: Color(0xff9575Cd),

                child: Row(

                  children: <Widget>[

                    Padding(

                      padding: EdgeInsets.all(8.0),

                      child: Container(

                        width: 100,

                        height: 90,


                        decoration: new BoxDecoration(

                          shape: BoxShape.circle,

                          image: DecorationImage(

                            fit: BoxFit.fill,

                            image: AssetImage(contact.contactImage),

                          )

                        ),


                        child: InkWell(

                          onTap: (){

                            Navigator.pushNamed(context, 'contactdetails/${contact.contactName}');

                          },

                        ),

                      ),

                    ),



                    Container(

                      child: Padding(

                        padding: EdgeInsets.all(8.0),

                        child: Text(
                          
                          contact.contactName,

                          style: TextStyle(

                            color: Colors.black,

                            fontSize: 18.0

                          ),

                        ),

                      ),

                    )


                  ],

                ),


                //----Here END of the 'ALL PAGE' IMAGES & CONTACT DETAILS ----


              ),

            ),

          ),

        );



      return Scaffold(

        body: DefaultTabController(

          length: 2,

          child: Scaffold(

            key: _scaffoldKey,

            //---------APP BAR BEGINS --------

            appBar: AppBar(

              leading: IconButton(
                  
                icon: Icon(
                    
                  FontAwesomeIcons.bars,

                  color: Colors.white,
                    
                ),

                onPressed: (){

                  _scaffoldKey.currentState.openDrawer();

                  //  _scaffoldKey.currentState.myDrawer();

                },
                
              ),


              title: Text("Telegram"),


              actions: <Widget>[

                IconButton(

                  icon: Icon(
                    
                    FontAwesomeIcons.search

                  ),

                  onPressed: (){

                    //

                  },

                )

              ],



              bottom: TabBar(

                tabs: <Widget>[


                  Tab(

                    child: Text(

                      'ALL', 
                      
                      style: TextStyle(

                        color: Colors.white,

                      ),

                    ),
                  
                  ),



                  Tab(

                    child: Text(

                      'FAVORITES', 
                      
                      style: TextStyle(

                        color: Colors.white,

                      ),

                    ),
                  
                  ),


                  

                ],

              ),

            ),

            //---------APP BAR ENDS --------



            //---------------------------DRAWER SIDE of App--------------------------------

            drawer: new Drawer(
          
              child: DrawerList(),
         
            ),

            //-------------DRAWER PART END -------------------------------------




            //---------BODY of the PAGE  BEGINS --------

            body: TabBarView(

              children: <Widget>[


                //HERE 'ALL' List Contact
                Container(

                  child: ListView(


                    scrollDirection: Axis.vertical,

                    children: contacts.map((contact) => ProfileList(contact)).toList(),

                  
                  ),

                ),
                

                //HERE 'FAVORITES' List Contact
                Container(

                  child: Padding(

                    padding: EdgeInsets.only(top: 16.0, left: 8.0),

                    child: ProfileGrid,

                  ),

                ),


                

              ],

            ),

             //---------BODY of the PAGE  BEGINS --------


            //-------------'FLOATINGACTIONBUTTON' at the Right Bottom Corner BEGINS ---------

            floatingActionButton: FloatingActionButton(

              child: Icon(
                
                FontAwesomeIcons.pen,
              
                color: Colors.white,


              ),

              onPressed: (){

                //

              },

              foregroundColor: Colors.white,

              backgroundColor: Color(0xff0091ea),

            ),


          //-------------END of FLOATINGACTIONBUTTON ---------


        ),


      ),


    );


   }
}







