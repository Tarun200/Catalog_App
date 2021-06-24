import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Colors.deepPurple,
        child: ListView(
          children: [
              DrawerHeader(
                padding: EdgeInsets.zero,
                  child: UserAccountsDrawerHeader(
                      margin: EdgeInsets.zero,
                      accountName: Text("Tarun"),
                      accountEmail: Text("sampathkumartarun@gmail.com"),
                      currentAccountPicture: CircleAvatar(
                        backgroundImage: AssetImage("assets/pic1.jpg"),
                      ),
                    ),

              ),
            ListTile(
              leading: Icon(
                CupertinoIcons.home,
                color: Colors.white,
              ),
              title: Text(
                  "Home",
                style: TextStyle(
                  letterSpacing: 1.5,
                  fontSize: 15,
                  color: Colors.white,

                ),
              ),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.phone_circle_fill,
                color: Colors.white,
              ),
              title: Text(
                  "123456",
                style: TextStyle(
                  letterSpacing: 1.5,
                  fontSize: 15,
                  color: Colors.white,

                ),
              ),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.mail,
                color: Colors.white,
              ),
             title: Text(
                 "Mail me",
               style: TextStyle(
                 letterSpacing: 1.5,
                 fontSize: 15,
                 color: Colors.white,

               ),
             ),
            ),



          ],
        ),
      ),
    );
  }
}
