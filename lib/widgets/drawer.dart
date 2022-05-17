import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final imageUrl =
        "https://img.freepik.com/free-vector/html-coding-neon-signs-style-text_44523-972.jpg";

    return Drawer(
      child: Container(
        color: Colors.indigo,
        child: ListView(
          children: [
            DrawerHeader(
                padding: EdgeInsets.zero,
                child: UserAccountsDrawerHeader(
                  margin: EdgeInsets.zero,
                  accountName: Text("SHUBH"),
                  accountEmail: Text("shubhbane@gmail.com"),
                  currentAccountPicture: CircleAvatar(
                    backgroundImage: NetworkImage(imageUrl),
                  ),
                )),
            ListTile(
              leading: Icon(
                CupertinoIcons.home,
                color: Colors.white,
              ),
              title: Text(
                "HOME",
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                textScaleFactor: 1.2,
              ),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.profile_circled,
                color: Colors.white,
              ),
              title: Text(
                "PROFILE",
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                textScaleFactor: 1.2,
              ),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.mail,
                color: Colors.white,
              ),
              title: Text(
                "E-MAIL",
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                textScaleFactor: 1.2,
              ),
            )
          ],
        ),
      ),
    );
  }
}
