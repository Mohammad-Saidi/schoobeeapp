import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
        drawerTheme: DrawerThemeData(
          backgroundColor: Colors.white,
          elevation: 10.0,
        ),
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    var statusBarHeight = MediaQuery.of(context).padding.top;
    var appBarHeight = kToolbarHeight;
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {},
            tooltip: 'Show notification',
            icon: const Icon(Icons.notification_add),
          ),
        ],
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        centerTitle: true,
        title: Image.asset('assets/images/leotech-logo.png'),
      ),
      drawer: Padding(
        padding: EdgeInsets.only(top: statusBarHeight + appBarHeight + 1),
        child: Drawer(
          child: Column(
            //padding: EdgeInsets.zero,
            children: [
              SizedBox(
                height: 100.0,
                child: DrawerHeader(
                  padding: EdgeInsets.zero,
                  margin: EdgeInsets.zero,
                  decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.inversePrimary,
                  ),
                  child: ListTile(
                    leading: Image.asset('assets/images/user.png'),
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
                child: Text(
                  'Bottom Center Text',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Schoobee App developing is ongoing',
            ),
          ],
        ),
      ),
    );
  }
}
