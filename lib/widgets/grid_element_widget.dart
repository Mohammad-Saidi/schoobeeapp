import 'package:flutter/material.dart';
import 'package:schoobeeapp/models/cards.dart';







class GridElementWidget extends StatelessWidget {
  final GridElement element;
  const GridElementWidget({super.key, required this.element});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => element.page!)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          element.image,
         //Icon(element.icon),
          Expanded(child: Text(element.name, textAlign: TextAlign.center)),
        ],
      ),

    );
  }
}
