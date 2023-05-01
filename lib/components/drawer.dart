import 'package:flutter/material.dart';

class myDrawer extends StatelessWidget {
  const myDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      width: 250,
      backgroundColor: Colors.brown[200],
      child: ListView(
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
          SizedBox(
            height: 30,
          ),
          ListTile(
            textColor: Colors.white,
            leading: Icon(Icons.label),
            title: Text("Contact"),
          ),
          ListTile(
            textColor: Colors.white,
            leading: Icon(Icons.label),
            title: Text("About"),
          ),
          SizedBox(
            height: 230,
          ),
          Column(
            children: [
              Divider(),
              ListTile(
                textColor: Colors.white,
                leading: Icon(Icons.label),
                title: Text("Logout"),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
