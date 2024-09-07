

import 'package:flutter/material.dart';
import 'package:aamarpay/aamarpay.dart';



class MyPay extends StatefulWidget {
  const MyPay(this.balancePayment, {super.key});

  final double balancePayment;

  @override
  State<MyPay> createState() => _MyPayState();
}

class _MyPayState extends State<MyPay> {
  bool isLoading = false;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Aamarpay(
          returnUrl: (String url) {
            print('Return Url: $url');
          },

          isLoading: (bool loading) {
            setState(() {
              isLoading = loading;
            });
          },

          status: (EventState event, String message) {
            if (event == EventState.error) {
              setState(() {
                isLoading = false;
              });
            }
          },


          isSandBox: true,
          successUrl: 'example.com/payment/confirm',
          failUrl: 'http://www.merchantdomain.com/faile dpage.html',
          cancelUrl: 'http://www.merchantdomain.com/can cellpage.html',
          storeID: 'aamarpaytest',
          transactionID: '${DateTime.now()}',
          signature: 'dbb74894e82415a2f7ff0ec3a97e4183',
          customerName: 'Saidi',
          customerEmail: 'pondit.baf.saidi@gmail.com',
          customerMobile: '01957286283',
          transactionAmount: widget.balancePayment.toString(),
          description: 'test',
          child: isLoading
              ? const Center(

            child: CircularProgressIndicator(),
          ) : Container(
            color: Colors.orange,
            height: 50,
            child: const Center(
              child: Text(
                'Click here to payment',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}