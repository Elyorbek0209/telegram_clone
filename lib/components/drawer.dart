import 'package:flutter/material.dart';
import 'package:telegram_clone/pages/contact.dart';
import 'package:telegram_clone/pages/contactDetails.dart';
import 'package:telegram_clone/pages/pageview.dart';




class DrawerList extends StatelessWidget {

  // final Contact contact;

  // DrawerList(this.contact);


  @override
  Widget build(BuildContext context) {


    //--------------------------- DRAWER OF THE APP BEGINS --------------------------------

    
    //ListView give access to scroll our page without yellow error
    return Container(
      
      child: ListView(

        children: <Widget>[


          //Header of our drawer
          new  UserAccountsDrawerHeader(


            //Here inside the drawer creating  name & email
            accountName: Text('Elyorbek Soliev'),

            accountEmail: Text('elyorbeksoliev@gmail.com'),

            
            //Here creating the Account Photo
            currentAccountPicture: GestureDetector(




              child: new CircleAvatar(

              
                //backgroundImage: AssetImage(contact.contactImage),

                backgroundColor: Colors.grey,

                //child: Icon(Icons.person, color: Colors.white),

              ),

            ),


            //Here decorating top part of Drawer
            decoration: new BoxDecoration(

                color: Color(0xff01579B),

            ),

          ),


          //#4 Here we'll create drawer lists below
          InkWell(

            onTap: (){

              //Here we'll move to below given Class's page
              Navigator.push(

                  context,

                  MaterialPageRoute(

                    builder: (context) => new HomePageView(),

                  )

              );

            },

            child: ListTile(

              title: Text('New Group'),

              leading: Icon(

                Icons.group,

                color: Colors.grey,

              ),

            ),

          ),


          InkWell(

            onTap: (){

              //Here we'll move to below given Class's page
              Navigator.push(

                  context,

                  MaterialPageRoute(

                    //builder: (context) => new MyAccountPage(),

                  )

              );

            },

            child: ListTile(

              title: Text('New Secret Chat'),

              leading: Icon(

                Icons.lock,

                color: Colors.grey,

              ),

            ),

          ),


          InkWell(

            onTap: (){


              //Here we'll move to below given Class's page
              Navigator.push(

                  context,

                  MaterialPageRoute(

                    //builder: (context) => new MyOrdersPage(),

                  )

              );

            },

            child: ListTile(

              title: Text('New Channel'),

              leading: Icon(

                Icons.speaker,

                color: Colors.grey,

              ),

            ),

          ),


          Divider(),


          InkWell(

            onTap: (){

              //Here we'll move to below given Class's page
              Navigator.push(

                  context,

                  MaterialPageRoute(

                    //builder: (context) => new ContactDetails(contacts),

                  )

              );

            },

            child: ListTile(

              title: Text('Contacts'),

              leading: Icon(

                Icons.contacts,

                color: Colors.grey,

              ),

            ),

          ),



          InkWell(

            onTap: (){


              //Here we'll move to below given Class's page
              Navigator.push(

                  context,

                  MaterialPageRoute(

                    // builder: (context) => new MyFavoritePage(),

                  )

              );

            },

            child: ListTile(

              title: Text('Saved Messages'),

              leading: Icon(

                Icons.message,

                color: Colors.grey,

              ),

            ),

          ),


         
             InkWell(

            onTap: (){


              //Here we'll move to below given Class's page
              Navigator.push(

                  context,

                  MaterialPageRoute(

                    // builder: (context) => new MyFavoritePage(),

                  )

              );

            },

            child: ListTile(

              title: Text('Calls'),

              leading: Icon(

                Icons.call,

                color: Colors.grey,

              ),

            ),

          ),


              InkWell(

            onTap: (){


              //Here we'll move to below given Class's page
              Navigator.push(

                  context,

                  MaterialPageRoute(

                    // builder: (context) => new MyFavoritePage(),

                  )

              );

            },

            child: ListTile(

              title: Text('Invite Friends'),

              leading: Icon(

                Icons.contacts,

                color: Colors.grey,

              ),

            ),

          ),



          InkWell(

            onTap: (){


              //Here we'll move to below given Class's page
              Navigator.push(

                  context,

                  MaterialPageRoute(

                    //builder: (context) => new Settings(),

                  )

              );

            },

            child: ListTile(

              title: Text('Settings'),

              leading: Icon(Icons.settings),

            ),

          ),


          InkWell(

            onTap: (){

              
              //Here we'll move to below given Class's page
              Navigator.push(

                  context,

                  MaterialPageRoute(

                    //builder: (context) => new About(),

                  )

              );

            },

            child: ListTile(

              title: Text('About'),

              leading: Icon(Icons.help),

            ),

          ),

        ],

      

      ),

    );

    //-------------DRAWER PART END ---------------------------------

  }
}






