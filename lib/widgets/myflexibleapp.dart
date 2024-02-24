import 'package:flutter/material.dart';


class MyFlexibleAppBar extends StatelessWidget {
  final double appBarHeight = 66.0;
  const MyFlexibleAppBar({super.key});

  @override
  Widget build(BuildContext context) {

    final double statusBarHeight = MediaQuery.of(context).padding.top;

    return Container(
      padding: EdgeInsets.only(top: statusBarHeight),
      height: statusBarHeight + appBarHeight,
      decoration: const BoxDecoration(
        color: Colors.tealAccent,
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          //crossAxisAlignment: CrossAxisAlignment.end,
          children: [

            CircleAvatar(
              child: Image.asset('assets/images/saidi.jpg'),
            ),
            const Text("Mohammad Saidi"),
            const Text("Class 3 Admission Roll No: 1230"),


          ],
        ),
      ),
    );
  }
}
