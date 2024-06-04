import 'package:flutter/material.dart';

import '../../Strings.dart';
import '../../styles.dart';

class CategoryTab extends StatelessWidget {
  const CategoryTab({super.key});

  @override
  Widget build(BuildContext context) {
    return   GridView.builder(
      shrinkWrap: true,
      itemCount: 8,
      gridDelegate:
      const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        // mainAxisExtent: 156,
        mainAxisSpacing: 15,
        crossAxisSpacing: 15,
      ),
      itemBuilder: (context, index) {
        return cardWidget();
      },
    );
  }
}

Widget cardWidget(){
  return Container(
    width: 156,
    height: 100,
    padding: const
    EdgeInsets.symmetric(horizontal: 29, vertical: 18),
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Styles.greyColor
    ),
    child: const Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image(image: AssetImage(AppIcons.petrolStation)),
        SizedBox(height: 16),
        Text('Petrol Station')
      ],
    ),
  );
}


