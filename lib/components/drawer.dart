import 'package:bubble_tea_app/pages/about_page.dart';
import 'package:bubble_tea_app/pages/contact_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class myDrawer extends StatelessWidget {
  const myDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      width: 250,
      backgroundColor: Colors.brown[200],
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              UserAccountsDrawerHeader(
                  decoration: BoxDecoration(
                      color: Colors.brown[400],
                      borderRadius:
                          BorderRadius.only(bottomRight: Radius.circular(50))),
                  accountName: Text("Rookie"),
                  accountEmail: Text(""),
                  currentAccountPicture: CircleAvatar(
                    backgroundImage: AssetImage('assets/img6.png'),
                  )),
              ListTile(
                onTap: (() {
                  Navigator.push(context,
                      MaterialPageRoute(builder: ((context) {
                    return Contact();
                  })));
                }),
                textColor: Colors.white,
                leading: Icon(Icons.label),
                title: Text("Contact"),
              ),
              ListTile(
                onTap: (() {
                  Navigator.push(context,
                      MaterialPageRoute(builder: ((context) {
                    return About();
                  })));
                }),
                textColor: Colors.white,
                leading: Icon(Icons.label),
                title: Text("About"),
              ),
            ],
          ),
          Column(
            children: [
              Divider(),
              ListTile(
                onTap: (() {
                  SystemNavigator.pop();
                }),
                textColor: Colors.white,
                leading: Icon(Icons.logout_outlined),
                title: Text("Logout"),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
