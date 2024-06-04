import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../models/store/AcccessoriesModel.dart';
import '../../styles.dart';

class Accessories extends StatelessWidget {
  Accessories({
    super.key,
  });

  final List<AccessoriesModel> accessoriesDataList = [
    AccessoriesModel(
      productName: 'Comfy ',
      productPrice: '\$749 ',
      productDescription: 'Outdoor...',
      imagePath: 'assets/images/jacket.png',
    ),
    AccessoriesModel(
      productName: 'Essential ',
      productPrice: '\$749 ',
      productDescription: 'Bundel',
      imagePath: 'assets/images/skoty.png',
    ),
    AccessoriesModel(
      productName: 'Bags ',
      productPrice: '\$749 ',
      productDescription: 'Outdoor...',
      imagePath: 'assets/images/bag.png',
    ),
    AccessoriesModel(
      productName: 'Comfy ',
      productPrice: '\$749 ',
      productDescription: 'Outdoor...',
      imagePath: 'assets/images/compy.png',
    ),
    AccessoriesModel(
      productName: 'Comfy ',
      productPrice: '\$749 ',
      productDescription: 'Outdoor...',
      imagePath: 'assets/images/compy.png',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: accessoriesDataList.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisExtent: 264,
        mainAxisSpacing: 15,
        crossAxisSpacing: 15,
      ),
      itemBuilder: (context, index) {
        AccessoriesModel accessory = accessoriesDataList[index];
        return Padding(
          padding: const EdgeInsets.all(4.0),
          child: InkWell(
            onTap: () {
              Get.toNamed('the_city_pro_store');
            },
            child: Card(
              color: Styles.greyColor,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset(accessory.imagePath),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Container(
                    width: 140,
                    height: 56,
                    decoration: BoxDecoration(
                      color: Styles.whiteColor,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: _buildFrame(
                      context,
                        productName: accessory.productName,
                        productPrice: accessory.productPrice,
                        productDescription: accessory.productDescription
                      // oneHundredWightOne: 'assets/icons/speed.png',
                    ),
                  )
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  Widget _buildFrame(
    BuildContext context, {
    required String productName,
    required String productPrice,
    required String productDescription,
  }) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            children: [
              Text(
                productName,
                style: Styles.labelLargeStyle,
              ),
              const Spacer(),
              Text(
                productPrice,
                style: Styles.labelMediumStyle,
              ),
            ],
          ),
          Text(
            productDescription,
            style: Styles.labelLargeStyle,
          ),
        ],
      ),
    );
  }
}
