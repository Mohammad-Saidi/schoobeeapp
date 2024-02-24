import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MyAppBar extends StatelessWidget {
  final double barHeight = 66.0;

  const MyAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  child: const Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Icon(
                      FontAwesomeIcons.bars,
                      color: Colors.white,
                    ),
                  ),
                ),
                Container(
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Image.asset('assets/images/leotech-logo.png'),
                  ),
                ),
                Container(
                  child: const Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Icon(Icons.notification_add),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
