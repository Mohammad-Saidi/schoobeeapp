import 'package:flutter/material.dart';

import '../models/cards.dart';
import '../widgets/card_widget.dart';
import '../widgets/drawer.dart';



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

      drawer: const MyDrawer(),
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            backgroundColor: Colors.blue,

            title: Text('Mohammad Saidi'),
            actions: [
              Padding(
                  padding: EdgeInsets.only(right: 20.0),
                  child: CircleAvatar(
                    backgroundImage: AssetImage('assets/images/saidi.jpg'),
                  )
              ),
            ],


            pinned: true,
            // expandedHeight: 250.0,
            // collapsedHeight: 250.0,


            // flexibleSpace: FlexibleSpaceBar(
            //   background: MyFlexibleAppBar(),
            // ),


            // flexibleSpace: FlexibleSpaceBar(
            //   background: ColoredBox(
            //     color: Colors.blue,
            //   ),

            // ),
          ),

          SliverList.builder(
            itemCount: cards.length,
            itemBuilder: (BuildContext context, int index) {
              return CardWidget(cardData: cards[index]);
            },
          ),

          //           ),
          //         ),
          //       ),
          //       Padding(
          //         padding: const EdgeInsets.all(2.0),
          //         child: Card(
          //           elevation: 10.0,
          //           child: SizedBox(
          //             width: double.infinity,
          //             height: 250,
          //             child: InkWell(
          //               child: Padding(
          //                 padding: const EdgeInsets.fromLTRB(10, 15, 10, 0),
          //                 child: GridView.builder(
          //                   physics: ScrollPhysics(),
          //                   itemCount: menuodel.length,
          //                   // physics: NeverScrollableScrollPhysics(),
          //                   gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          //                     crossAxisCount: 4,
          //                     mainAxisSpacing: 14,
          //                     crossAxisSpacing: 14,
          //                   ),
          //                   itemBuilder: (context, index) {
          //                     return GestureDetector(
          //                       onTap: () {
          //                         if (index == 0) {}
          //                       },
          //                       child: Container(
          //                         //alignment: Alignment.center,
          //                         child: menuodel2[index],
          //                       ),
          //                     );
          //                   },
          //                 ),
          //               ),
          //             ),
          //           ),
          //         ),
          //       ),
          //       Padding(
          //         padding: const EdgeInsets.all(2.0),
          //         child: Card(
          //           elevation: 10.0,
          //           child: SizedBox(
          //             width: double.infinity,
          //             height: 250,
          //             child: InkWell(
          //               child: Padding(
          //                 padding: const EdgeInsets.fromLTRB(10, 15, 10, 0),
          //                 child: GridView.builder(
          //                   physics: ScrollPhysics(),
          //                   itemCount: menuodel.length,
          //                   // physics: NeverScrollableScrollPhysics(),
          //                   gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          //                     crossAxisCount: 4,
          //                     mainAxisSpacing: 14,
          //                     crossAxisSpacing: 14,
          //                   ),
          //                   itemBuilder: (context, index) {
          //                     return GestureDetector(
          //                       onTap: () {
          //                         if (index == 0) {}
          //                       },
          //                       child: Container(
          //                         //alignment: Alignment.center,
          //                         child: menuodel2[index],
          //                       ),
          //                     );
          //                   },
          //                 ),
          //               ),
          //             ),
          //           ),
          //         ),
          //       ),
          //     ],
          //   ),
          // ),
        ],
      ),
    );
  }
}
