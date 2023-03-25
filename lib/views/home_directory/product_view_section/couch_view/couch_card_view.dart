import 'package:flutter/material.dart';
import 'package:furniture/core/components/access_file_components.dart';
import '../../../../models/products_model/couchs_model/couch_model.dart';

class CouchCardView {
  Widget couchCardView(context, int index, double width, int tabBarIndex) {
    CouchModel couchModel = CouchModel();
    return Stack(
      children: [
        Container(
          height: 180,
          width: width,
          decoration: const BoxDecoration(
            color: Color(0xff82a6b1),
            borderRadius: BorderRadius.all(
              Radius.circular(20),
            ),
          ),
          child: Container(
            height: 180,
            margin: const EdgeInsets.only(
              right: 10,
            ),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: const BorderRadius.all(
                Radius.circular(20),
              ),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: ExactAssetImage(
                  '${couchModel.productList[index].imagePath}',
                ),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Spacer(),
                cardDetailsInfoSection(
                  context,
                  i: index,
                  tabBarIndex: tabBarIndex,
                  color: Colors.black.withOpacity(0.2),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
