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
  const CardData(
    title: 'E-Learning',
    gridElements: [
      GridElement(icon: Icons.home, name: 'Home Work', page: null),
      GridElement(icon: Icons.assignment, name: 'Assignment', page: null),
      GridElement(icon: Icons.play_lesson, name: 'Lesson Plan', page: null),
      GridElement(
          icon: Icons.online_prediction,
          name: 'Online Examination',
          page: null),
      GridElement(icon: Icons.download, name: 'Download Center', page: null),
      GridElement(icon: Icons.golf_course, name: 'Online Course', page: null),
      GridElement(icon: Icons.live_help, name: 'Live Course', page: null),
    ],
  ),
  const CardData(
    title: 'Academics',
    gridElements: [
      GridElement(icon: Icons.home, name: 'Home Work', page: null),
      GridElement(icon: Icons.assignment, name: 'Assignment', page: null),
      GridElement(icon: Icons.play_lesson, name: 'Lesson Plan', page: null),
      GridElement(
          icon: Icons.online_prediction,
          name: 'Online Examination',
          page: null),
      GridElement(icon: Icons.download, name: 'Download Center', page: null),
      GridElement(icon: Icons.golf_course, name: 'Online Course', page: null),
      GridElement(icon: Icons.live_help, name: 'Live Course', page: null),
    ],
  ),
  const CardData(
    title: 'Communicate',
    gridElements: [
      GridElement(icon: Icons.home, name: 'Home Work', page: null),
      GridElement(icon: Icons.assignment, name: 'Assignment', page: null),
      GridElement(icon: Icons.play_lesson, name: 'Lesson Plan', page: null),
      GridElement(
          icon: Icons.online_prediction,
          name: 'Online Examination',
          page: null),
      GridElement(icon: Icons.download, name: 'Download Center', page: null),
      GridElement(icon: Icons.golf_course, name: 'Online Course', page: null),
      GridElement(icon: Icons.live_help, name: 'Live Course', page: null),
    ],
  ),
  CardData(
    title: 'Other',
    gridElements: [
      GridElement(
          icon: Icons.home,
          name: 'Fees',
          page: FeesPage(
            listOfFeesCardData: listOfFeesCardData,
          )),
      GridElement(icon: Icons.assignment, name: 'Assignment', page: null),
      GridElement(icon: Icons.play_lesson, name: 'Lesson Plan', page: null),
      GridElement(
          icon: Icons.online_prediction,
          name: 'Online Examination',
          page: null),
      GridElement(icon: Icons.download, name: 'Download Center', page: null),
      GridElement(icon: Icons.golf_course, name: 'Online Course', page: null),
      GridElement(icon: Icons.live_help, name: 'Live Course', page: null),
    ],
  ),
];

class CardData {
  final String title;
  final List<GridElement> gridElements;

  const CardData({required this.title, required this.gridElements});
}

class GridElement {
  final IconData icon;
  final String name;
  final Widget? page;

  const GridElement(
      {required this.icon, required this.name, required this.page});
}
