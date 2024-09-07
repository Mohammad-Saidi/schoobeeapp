import 'package:flutter/material.dart';
import 'package:schoobeeapp/models/fees_card.dart';
import 'package:schoobeeapp/pages/fees_page.dart';

List<FeesCardData> listOfFeesCardData = [
  FeesCardData(
      cardHeading: 'Class 3 Lump Sum-Admission Fees',
      feesCode: 'admission-fees',
      dueDate: '5/02/2024',
      amount: 120000.50,
      fine: 500.50,
      discount: 2550.50,
      paidAmount: 50550.50,
      balanceAmount: 50850.80,
      fullPaid: true),
  FeesCardData(
      cardHeading: 'Class 3 Lump Sum-April Month Fees',
      feesCode: 'april-month-fees',
      dueDate: '6/02/2024',
      amount: 720000.50,
      fine: 700.0,
      discount: 7550.50,
      paidAmount: 70550.50,
      balanceAmount: 70850.80,
      fullPaid: true),
  FeesCardData(
      cardHeading: 'Class 3 Lump Sum-Admission Fees',
      feesCode: 'admission-fees',
      dueDate: '5/02/2024',
      amount: 120000.50,
      fine: 500.50,
      discount: 2550.50,
      paidAmount: 50550.50,
      balanceAmount: 50850.80,
      fullPaid: false,
      partial: true),
  FeesCardData(
      cardHeading: 'Class 3 Lump Sum-April Month Fees',
      feesCode: 'april-month-fees',
      dueDate: '6/02/2024',
      amount: 720000.50,
      fine: 700.0,
      discount: 7550.50,
      paidAmount: 70550.50,
      balanceAmount: 70850.80,
      fullPaid: false,
      partial: false),
];

List<CardData> cards = [
  CardData(
    title: 'E-Learning',
    gridElements: [
      GridElement(image: Image.asset('assets/images/send_money.jpg'),name: 'Home Work', page: null),
      GridElement(image: Image.asset('assets/images/mobile_recharge.jpg'), name: 'Assignment', page: null),
      GridElement(image: Image.asset('assets/images/cash_out.jpg'), name: 'Lesson Plan', page: null),
      GridElement(
          image: Image.asset('assets/images/make_payment.jpg'),
          name: 'Online',
          page: null),
      GridElement(image: Image.asset('assets/images/add_money.jpg'), name: 'Download', page: null),
      GridElement(image: Image.asset('assets/images/pay_bill.jpg'), name: 'Online Course', page: null),
      GridElement(image: Image.asset('assets/images/savings.png'), name: 'Live Course', page: null),
    ],
  ),
  CardData(
    title: 'Academics',
    gridElements: [
      GridElement(image: Image.asset('assets/images/send_money.jpg'),name: 'Home Work', page: null),
      GridElement(image: Image.asset('assets/images/mobile_recharge.jpg'), name: 'Assignment', page: null),
      GridElement(image: Image.asset('assets/images/cash_out.jpg'), name: 'Lesson Plan', page: null),
      GridElement(
          image: Image.asset('assets/images/make_payment.jpg'),
          name: 'Online',
          page: null),
      GridElement(image: Image.asset('assets/images/add_money.jpg'), name: 'Download', page: null),
      GridElement(image: Image.asset('assets/images/pay_bill.jpg'), name: 'Online Course', page: null),
      GridElement(image: Image.asset('assets/images/savings.png'), name: 'Live Course', page: null),
    ],
  ),
  CardData(
    title: 'Communicate',
    gridElements: [
      GridElement(image: Image.asset('assets/images/send_money.jpg'),name: 'Home Work', page: null),
      GridElement(image: Image.asset('assets/images/mobile_recharge.jpg'), name: 'Assignment', page: null),
      GridElement(image: Image.asset('assets/images/cash_out.jpg'), name: 'Lesson Plan', page: null),
      GridElement(
          image: Image.asset('assets/images/make_payment.jpg'),
          name: 'Online',
          page: null),
      GridElement(image: Image.asset('assets/images/add_money.jpg'), name: 'Download', page: null),
      GridElement(image: Image.asset('assets/images/pay_bill.jpg'), name: 'Online Course', page: null),
      GridElement(image: Image.asset('assets/images/savings.png'), name: 'Live Course', page: null),
    ],
  ),
  CardData(
    title: 'Other',
    gridElements: [
      GridElement(image: Image.asset('assets/images/send_money.jpg'),name: 'Home Work', page: null),
      GridElement(image: Image.asset('assets/images/mobile_recharge.jpg'), name: 'Assignment', page: null),
      GridElement(image: Image.asset('assets/images/cash_out.jpg'), name: 'Lesson Plan', page: null),
      GridElement(
          image: Image.asset('assets/images/make_payment.jpg'),
          name: 'Online',
          page: null),
      GridElement(image: Image.asset('assets/images/add_money.jpg'), name: 'Download', page: null),
      GridElement(image: Image.asset('assets/images/pay_bill.jpg'), name: 'Online Course', page: null),
      GridElement(image: Image.asset('assets/images/savings.png'), name: 'Live Course', page: null),
    ],
  ),
];

class CardData {
  final String title;
  final List<GridElement> gridElements;

  const CardData({required this.title, required this.gridElements});
}

class GridElement {
  final Image image;
  final String name;
  final Widget? page;

  const GridElement(
      {required this.image, required this.name, required this.page});
}
