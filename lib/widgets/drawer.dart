import 'package:flutter/material.dart';


class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    var statusBarHeight = MediaQuery.of(context).padding.top;
    var appBarHeight = kToolbarHeight;
    return Padding(
      padding: EdgeInsets.only(top: statusBarHeight + appBarHeight + 1),
      child: Drawer(
        child: Column(
          //padding: EdgeInsets.zero,
          children: [
            SizedBox(
              height: 150.0,
              child: DrawerHeader(
                padding: EdgeInsets.zero,
                margin: EdgeInsets.zero,
                decoration: BoxDecoration(
                  color: Colors.blue,
                ),
                child: ListTile(
                  leading: CircleAvatar(backgroundImage: AssetImage('assets/images/saidi.jpg'),),
                  title: const Text('Mohammad Saidi'),
                  subtitle: const Text('Class 3 (A)'),
                ),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.home),
              title: const Text('Home'),
            ),
            ListTile(
              leading: const Icon(Icons.person_add_alt_1_sharp),
              title: const Text('Profile'),
            ),
            ListTile(
              leading: const Icon(Icons.info_outline),
              title: const Text('About'),
            ),
            ListTile(
              leading: const Icon(Icons.settings),
              title: const Text('Settings'),
            ),
            ListTile(
              leading: const Icon(Icons.logout),
              title: const Text('Log Out'),
            ),
            Divider(),
            Align(
              child: const Text('Version 3.5 on 6.4.0'),
              alignment: Alignment.center,
            ),
            Spacer(),
            Container(
              alignment: Alignment.bottomCenter,
              padding: EdgeInsets.all(16),
              child: Column(
                children: [
                  Text(
                    'PoweredBy LeoTech',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Image.asset('assets/images/leotech-logo.png')
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
