import 'package:flutter/material.dart';
import 'package:schoobeeapp/widgets/grid_element_widget.dart';

import '../models/cards.dart';

class CardWidget extends StatelessWidget {
  final CardData cardData;

  const CardWidget({super.key, required this.cardData});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Card(

        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                cardData.title,
                style: Theme.of(context).textTheme.headlineSmall,
              ),
              GridView.builder(

                shrinkWrap: true,
                physics: const ScrollPhysics(),// Avoid card exceeding parent boundaries
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 4,
                  //childAspectRatio: 2.5,
                  mainAxisSpacing: 5.0,
                  crossAxisSpacing: 5.0,
                ),
                itemCount: cardData.gridElements.length,
                itemBuilder: (context, index) {
                  final element = cardData.gridElements[index];

                  return GridElementWidget(element: element);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
