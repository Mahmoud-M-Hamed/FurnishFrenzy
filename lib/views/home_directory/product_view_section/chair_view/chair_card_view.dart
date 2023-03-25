import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:furniture/views/home_directory/product_view_section/product_view/details_view.dart';
import '../../../../models/products_model/chairs_model/Chair_model.dart';

// ignore: must_be_immutable
class ChairCardView extends StatelessWidget {
  int? index, tabBarIndex;
  double? width;

  ChairCardView(this.index, this.width, this.tabBarIndex, {super.key});

  @override
  Widget build(BuildContext context) {
    ChairsModel chairsModel = ChairsModel();
    timeDilation = 5.0;
    return Stack(
      children: [
        Container(
          height: 100,
          width: width,
          decoration: const BoxDecoration(
            color: Color(0xffd88c9a),
            borderRadius: BorderRadius.all(
              Radius.circular(20),
            ),
          ),
          child: Container(
            height: 100,
            margin: const EdgeInsets.only(
              right: 10,
            ),
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(
                Radius.circular(20),
              ),
            ),
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 10,
                          top: 15,
                        ),
                        child: Text(
                          '${chairsModel.productList[index!].name}',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.brown.shade500,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Expanded(
                        child: Container(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          decoration: const BoxDecoration(
                            color: Color(0xffdab49d),
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(15),
                              bottomLeft: Radius.circular(20),
                            ),
                          ),
                          child: TextButton(
                            onPressed: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) =>
                                      ProductDetailsViewActivity(
                                          index: tabBarIndex, itemIndex: index),
                                ),
                              );
                            },
                            child: const Text(
                              'Details',
                              style: TextStyle(
                                fontSize: 15,
                                color: Color(0xff727d71),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  width: 100,
                ),
              ],
            ),
          ),
        ),
        Align(
          alignment: Alignment.topRight,
          child: Container(
            height: 140,
            width: 120,
            margin: const EdgeInsets.only(right: 10),
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(
                Radius.circular(40),
              ),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: ExactAssetImage(
                  '${chairsModel.productList[index!].imagePath}',
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
