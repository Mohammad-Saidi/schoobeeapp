import 'package:flutter/material.dart';
import 'package:schoobeeapp/models/fees_card.dart';

class FeesPage extends StatelessWidget {
  const FeesPage({super.key, required this.listOfFeesCardData});

  //final FeesCardData feesCardData;

  final List<FeesCardData> listOfFeesCardData;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: Colors.yellow,
      //   title: const Text('Fees'),
      //   // shape: const RoundedRectangleBorder(
      //   //   borderRadius: BorderRadius.vertical(
      //   //     bottom: Radius.circular(30),
      //   //   ),
      //   // ),
      //   bottom: PreferredSize(
      //
      //     preferredSize: const Size.fromHeight(200.0),
      //
      //     child: Padding(
      //       padding: const EdgeInsets.all(8.0),
      //       child: Column(
      //         mainAxisAlignment: MainAxisAlignment.start,
      //
      //
      //
      //         children: [
      //           Row(
      //             children: [
      //               Text('Your Fees\nDetails is here!', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),),
      //               SizedBox(width: 10,),
      //               Expanded(child: Image.asset('assets/images/leotech-logo.png'))
      //             ],
      //           ),
      //           Row(
      //             children: [
      //               ElevatedButton(onPressed: () {}, child: const Text('Fees'),),
      //             ],
      //           ),
      //
      //
      //
      //
      //         ],
      //       ),
      //     ),
      //   ),
      // ),

      //backgroundColor: Colors.tealAccent,
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            backgroundColor: Colors.tealAccent,
            title: const Text('Fees'),
            //expandedHeight: 400,
            collapsedHeight: 400,

            pinned: true,

            // flexibleSpace: Container(
            //   //color: Colors.red,
            //   child: Padding(
            //     padding: const EdgeInsets.fromLTRB(10, kToolbarHeight + 20, 10, 10),
            //     child: Column(
            //       children: [
            //         Row(
            //           children: [
            //             Text(
            //               'Your Fees\nDetails is here!',
            //               style: TextStyle(
            //                   fontWeight: FontWeight.bold, fontSize: 20.0),
            //             ),
            //             Expanded(
            //               child: Image.asset('assets/images/leotech-logo.png'),
            //             ),
            //           ],
            //         ),
            //       ],
            //     ),
            //   ),
            // ),

            flexibleSpace: Container(
              child: Padding(
                padding:
                    const EdgeInsets.fromLTRB(10, kToolbarHeight + 20, 10, 10),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          'Your Fees\nDetails is here!',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20.0),
                        ),
                        Expanded(
                          child: Image.asset('assets/images/leotech-logo.png'),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Expanded(
                            child: ElevatedButton(
                          onPressed: () {},
                          child: const Text('Fees'),
                        )),
                        Expanded(
                            child: ElevatedButton(
                          onPressed: () {},
                          child: const Text('Processing Fees'),
                        )),
                        Expanded(
                            child: ElevatedButton(
                                onPressed: () {},
                                child: const Text('Offline Payments')))
                      ],
                    ),
                    Expanded(
                      child: SizedBox(
                        width: double.infinity,
                        child: Card(
                          color: Colors.black12,
                          elevation: 5,
                          child: ClipRRect(
                            borderRadius: BorderRadius.vertical(
                                top: Radius.circular(15.0)),
                            child: Column(
                              children: [
                                Container(
                                  padding: const EdgeInsets.all(8.0),
                                  //height: 50,
                                  color: Colors.red,
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      const Text('Grand Total'),
                                    ],
                                  ),
                                ),
                                Expanded(
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: SingleChildScrollView(
                                      scrollDirection: Axis.vertical,
                                      child: Align(
                                        alignment: Alignment.topLeft,
                                        child: Column(
                                          //mainAxisAlignment: MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Expanded(
                                                    child:
                                                        const Text('Amount')),
                                                Expanded(
                                                    child:
                                                        const Text('Discount')),
                                                Expanded(
                                                    child: const Text('Fine')),
                                                Expanded(
                                                    child: const Text('Paid')),
                                                Expanded(
                                                    child:
                                                        const Text('Balance')),
                                              ],
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Expanded(
                                                    child:
                                                        const Text('\$12500')),
                                                Expanded(
                                                    child: const Text('\$100')),
                                                Expanded(
                                                    child: const Text('\$50')),
                                                Expanded(
                                                    child:
                                                        const Text('\$5150')),
                                                Expanded(
                                                    child:
                                                        const Text('\$7300')),
                                              ],
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Expanded(
                                                    child:
                                                        const Text('\$12500')),
                                                Expanded(
                                                    child: const Text('\$100')),
                                                Expanded(
                                                    child: const Text('\$50')),
                                                Expanded(
                                                    child:
                                                        const Text('\$5150')),
                                                Expanded(
                                                    child:
                                                        const Text('\$7300')),
                                              ],
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Expanded(
                                                    child:
                                                        const Text('\$12500')),
                                                Expanded(
                                                    child: const Text('\$100')),
                                                Expanded(
                                                    child: const Text('\$50')),
                                                Expanded(
                                                    child:
                                                        const Text('\$5150')),
                                                Expanded(
                                                    child:
                                                        const Text('\$7300')),
                                              ],
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Expanded(
                                                    child:
                                                        const Text('\$12500')),
                                                Expanded(
                                                    child: const Text('\$100')),
                                                Expanded(
                                                    child: const Text('\$50')),
                                                Expanded(
                                                    child:
                                                        const Text('\$5150')),
                                                Expanded(
                                                    child:
                                                        const Text('\$7300')),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                  ],
                ),
              ),
            ),
          ),
          // SliverFixedExtentList(
          //   itemExtent: 50.0,
          //   delegate: SliverChildBuilderDelegate(
          //     (context, index) {
          //       return ListTile(
          //         title: Text('Item $index'),
          //       );
          //     },
          //     childCount: 50,
          //   ),
          // ),

          SliverList(
            delegate: SliverChildBuilderDelegate(
              childCount: listOfFeesCardData.length,
              (context, index) => Card(
                child: Column(
                  //mainAxisSize: MainAxisSize.min,

                  children: [
                    SizedBox(
                      width: double.infinity,
                      child: Card(
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20.0),
                            topRight: Radius.circular(20.0),
                          ),
                        ),
                        color: Colors.blue,
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                '${listOfFeesCardData[index].cardHeading}',
                                style: const TextStyle(
                                    fontWeight: FontWeight.bold),
                              ),
                              InkWell(
                                onTap: () {
                                  // Scaffold.of(context).showBottomSheet((context) => SizedBox(
                                  //   height: 200,
                                  //   width: double.infinity,
                                  //   child: Column(
                                  //     crossAxisAlignment: CrossAxisAlignment.start,
                                  //     children: [
                                  //       const Text('Stripe Payment'),
                                  //     ],
                                  //   ),
                                  // ));

                                  showModalBottomSheet(
                                    context: context,
                                    builder: (BuildContext context) {
                                      bool isPaymentPressed = false;

                                      return StatefulBuilder(builder:
                                          (BuildContext context,
                                              StateSetter setState) {
                                        return Container(
                                          padding: EdgeInsets.zero,
                                          height: 200,
                                          width: double.infinity,
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              SizedBox(
                                                  width: double.infinity,
                                                  child: ColoredBox(
                                                    color: Colors.red,
                                                    child: Padding(
                                                      padding:
                                                          const EdgeInsets.only(
                                                              left: 4.0,
                                                              right: 4.0),
                                                      child: Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        children: [
                                                          const Text(
                                                              'Processing Fees'),
                                                          IconButton(
                                                            onPressed: () {
                                                              Navigator.pop(
                                                                  context);
                                                            },
                                                            icon: const Icon(
                                                                Icons.close),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  )),
                                              Padding(
                                                padding: EdgeInsets.only(
                                                    left: 4, right: 4),
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    const Text('Payment Id'),
                                                    const Text('Date'),
                                                    const Text('Discount'),
                                                    const Text('Fine'),
                                                    const Text('Paid'),
                                                  ],
                                                ),
                                              ),
                                              InkWell(
                                                onTap: () {
                                                  setState(() {
                                                    isPaymentPressed =
                                                        !isPaymentPressed;
                                                  });
                                                },
                                                child: Padding(
                                                  padding: EdgeInsets.only(
                                                      left: 4, right: 4),
                                                  child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      const Text(
                                                        'Bkash 557/1',
                                                        style: TextStyle(
                                                            color: Colors.blue),
                                                      ),
                                                      const Text('04/05/2023'),
                                                      const Text('550.0Bdt'),
                                                      const Text('50.50Bdt'),
                                                      const Text('200Bdt'),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                              // Visibility(
                                              //   visible: isPaymentPressed,
                                              //   child: const Text('TrxId: 014567895464'),
                                              // ),

                                              if (isPaymentPressed)
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 8.0),
                                                  child: const Text(
                                                      'TrxId: 7897456'),
                                                ),
                                            ],
                                          ),
                                        );
                                      });
                                    },
                                    shape: const RoundedRectangleBorder(
                                      borderRadius: BorderRadius.zero,
                                    ),
                                  );
                                },
                                child: Row(
                                  children: [
                                    Icon(Icons.list),
                                    const SizedBox(
                                      width: 5.0,
                                    ),
                                    const Text('View'),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Row(
                        //crossAxisAlignment: CrossAxisAlignment.stretch,
                        //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        //mainAxisSize: MainAxisSize.min,
                        children: [
                          Expanded(
                            flex: 3,
                            child: Column(
                              //mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text('Fees'),
                                const Text('Dues'),
                                const Text('Payment Type'),
                                const Text('Paid'),
                              ],
                            ),
                          ),
                          Expanded(
                            flex: 3,
                            child: Column(
                              // mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text('1200'),
                                const Text('789'),
                                const Text('13500'),
                                const Text('6700'),
                              ],
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: Column(
                              // crossAxisAlignment: CrossAxisAlignment.stretch,
                              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                if (listOfFeesCardData[index].fullPaid ==
                                    true) ...[
                                  InkWell(
                                    onTap: () {},
                                    child: ColoredBox(
                                      color: Colors.green,
                                      child: Padding(
                                          padding: EdgeInsets.all(2.0),
                                          child: Text('Paid')),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 50,
                                  ),
                                ],
                                if (listOfFeesCardData[index].fullPaid ==
                                        false &&
                                    listOfFeesCardData[index].partial ==
                                        false) ...[
                                  InkWell(
                                    onTap: () {},
                                    child: ColoredBox(
                                      child: Padding(
                                        padding: EdgeInsets.all(2.0),
                                        child: Text('Unpaid'),
                                      ),
                                      color: Colors.red,
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 50,
                                  ),
                                ],
                                if (listOfFeesCardData[index].partial ==
                                    true) ...[
                                  InkWell(
                                    onTap: () {},
                                    child: ColoredBox(
                                      color: Colors.orange,
                                      child: Padding(
                                          padding: EdgeInsets.all(2.0),
                                          child: Text('Partial')),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 50,
                                  ),
                                ],
                                if (listOfFeesCardData[index].fullPaid ==
                                        false ||
                                    listOfFeesCardData[index].partial == true)
                                  InkWell(
                                    onTap: () {
                                      showDialog(
                                        context: context,
                                        builder: (_) => AlertDialog(

                                          title: ColoredBox(color: Colors.blue, child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [const Text('Payment'), InkWell(onTap: () {
                                            Navigator.pop(context);
                                          }, child: Icon(Icons.close))],)),
                                          content: SizedBox(
                                            height: 100,
                                            width: 100,
                                            child: Column(
                                              children: [
                                                ElevatedButton(onPressed: () {}, child: const Text('online payment')),
                                                ElevatedButton(onPressed: () {}, child: const Text('offline payment'),),
                                              ],
                                            ),
                                          ),
                                        ),
                                      );
                                    },
                                    child: const ColoredBox(
                                      color: Colors.green,
                                      child: Padding(
                                        padding: EdgeInsets.all(2.0),
                                        child: Text('Pay'),
                                      ),
                                    ),
                                  ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),

          // SliverToBoxAdapter(
          //   child: Column(
          //     children: [
          //       Card(
          //         child: Column(
          //           children: [
          //             const Text('Mohammad Saidi'),
          //             const Text('Mohammad Imran'),
          //           ],
          //         ),
          //       ),
          //       Card(
          //         child: Column(
          //           children: [
          //             const Text('Mohammad Saidi'),
          //             const Text('Mohammad Imran'),
          //           ],
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

//
// Padding(
// padding: const EdgeInsets.all(8.0),
// child: Row(
// mainAxisAlignment: MainAxisAlignment.spaceBetween,
//
// children: [
// Flexible(
// flex: 2,
// child: Column(
// mainAxisSize: MainAxisSize.min,
// children: [
// // Text(feesCardData.cardHeading, style: Theme.of(context).textTheme.headlineSmall,),
// Row(
// // crossAxisAlignment: CrossAxisAlignment.start,
// // mainAxisAlignment: MainAxisAlignment.spaceBetween,
// children: [
// Expanded(
// child: Text(
// 'Fees Code ',
// style:
// Theme.of(context).textTheme.bodyLarge,
// )),
// Expanded(
// child: Text(
// listOfFeesCardData[index].feesCode,
// style:
// Theme.of(context).textTheme.bodyMedium,
// )),
// ],
// ),
// Row(
// mainAxisAlignment:
// MainAxisAlignment.spaceBetween,
// children: [
// Expanded(
// child: Text(
// 'Due Date ',
// style:
// Theme.of(context).textTheme.bodyLarge,
// )),
// Expanded(
// child: Text(
// listOfFeesCardData[index].dueDate,
// style:
// Theme.of(context).textTheme.bodyMedium,
// )),
// ],
// ),
// Row(
// mainAxisAlignment:
// MainAxisAlignment.spaceBetween,
// children: [
// Expanded(
// child: Text(
// 'Amount ',
// style:
// Theme.of(context).textTheme.bodyLarge,
// )),
// Expanded(
// child: Text(
// '${listOfFeesCardData[index].amount}',
// style:
// Theme.of(context).textTheme.bodyMedium,
// )),
// ],
// ),
// Row(
// mainAxisAlignment:
// MainAxisAlignment.spaceBetween,
// children: [
// Expanded(
// child: Text(
// 'Fine ',
// style:
// Theme.of(context).textTheme.bodyLarge,
// )),
// Expanded(
// child: Text(
// '${listOfFeesCardData[index].fine}',
// style:
// Theme.of(context).textTheme.bodyMedium,
// )),
// ],
// ),
// Row(
// mainAxisAlignment:
// MainAxisAlignment.spaceBetween,
// children: [
// Expanded(
// child: Text(
// 'Discount ',
// style:
// Theme.of(context).textTheme.bodyLarge,
// )),
// Expanded(
// child: Text(
// '${listOfFeesCardData[index].discount}',
// style:
// Theme.of(context).textTheme.bodyMedium,
// )),
// ],
// ),
// Row(
// mainAxisAlignment:
// MainAxisAlignment.spaceBetween,
// children: [
// Expanded(
// child: Text(
// 'Paid Amt ',
// style:
// Theme.of(context).textTheme.bodyLarge,
// )),
// Expanded(
// child: Text(
// '${listOfFeesCardData[index].paidAmount}',
// style:
// Theme.of(context).textTheme.bodyMedium,
// )),
// ],
// ),
// Row(
// mainAxisAlignment:
// MainAxisAlignment.spaceBetween,
// children: [
// Expanded(
// child: Text(
// 'Balance Amt ',
// style:
// Theme.of(context).textTheme.bodyLarge,
// )),
// Expanded(
// child: Text(
// '${listOfFeesCardData[index].balanceAmount}',
// style:
// Theme.of(context).textTheme.bodyMedium,
// )),
// ],
// ),
// ],
// ),
// ),
//
//
//
//
//
//
//
// Flexible(
// flex: 1,
// child: Column(
// //mainAxisSize: MainAxisSize.min,
// //mainAxisAlignment: MainAxisAlignment.spaceBetween,
// children: [
//
// const Text('Saidi'),
//
// const SizedBox(height: 30,),
//
// const Text('Imran'),
//
//
//
// // if (listOfFeesCardData[index].fullPaid == true)
// //   ColoredBox(
// //     color: Colors.green,
// //     child: const Text('Paid'),
// //   ),
// // if (listOfFeesCardData[index].fullPaid ==
// //         false &&
// //     listOfFeesCardData[index].partial ==
// //         true) ...[
// //
// //   ColoredBox(
// //     color: Colors.orange,
// //     child: const Text('Partial'),
// //   ),
// //   ColoredBox(
// //     color: Colors.green,
// //     child: const Text('Pay'),
// //   ),
// // ] else ...[
// //   ColoredBox(
// //     color: Colors.orange,
// //     child: const Text('Partial'),
// //   ),
// //   ColoredBox(
// //     color: Colors.green,
// //     child: const Text('Pay'),
// //   ),
// // ],
// ],
// ),
// ),
// ],
// ),
// ),
