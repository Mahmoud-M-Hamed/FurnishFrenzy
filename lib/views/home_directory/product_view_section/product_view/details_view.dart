import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:furniture/models/products_model/beds_model/beds_model.dart';
import 'package:furniture/models/products_model/chairs_model/Chair_model.dart';
import 'package:furniture/models/products_model/closet_model/closet_model.dart';
import 'package:furniture/models/products_model/couchs_model/couch_model.dart';
import 'package:furniture/models/products_model/tables_model/tables_model.dart';

extension on num {
  SizedBox get ph => SizedBox(
        height: toDouble(),
      );

  SizedBox get pw => SizedBox(
        width: toDouble(),
      );
}

// ignore: must_be_immutable
class ProductDetailsViewActivity extends StatelessWidget {
  int? index, itemIndex;

  ProductDetailsViewActivity({this.index, this.itemIndex, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    timeDilation = 5;
    List<Color> itemColorList = [
      Colors.brown.shade100,
      const Color(0xff82a6b1),
      const Color(0xff656d4a),
      const Color(0xff242331)
    ];

    var objectModel;
    switch (index) {
      case 0:
        objectModel = ChairsModel();
        break;
      case 1:
        objectModel = CouchModel();
        break;
      case 2:
        objectModel = BedModel();
        break;
      case 3:
        objectModel = ClosetModel();
        break;
      case 4:
        objectModel = TableModel();
        break;
    }

    return Scaffold(
      body: Stack(
        children: [
          SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    42.5.pw,
                    Expanded(
                      child: Container(
                        height: 400,
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(130),
                          ),
                        ),
                        child: Stack(
                          alignment: Alignment.bottomCenter,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(60.0),
                              child: CircleAvatar(
                                backgroundColor: Colors.white.withOpacity(0.5),
                                radius: 105,
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: const BorderRadius.only(
                                  bottomLeft: Radius.circular(100),
                                ),
                                image: DecorationImage(
                                  fit: (index == 0 || index == 2)
                                      ? null
                                      : BoxFit.cover,
                                  image: ExactAssetImage(
                                    '${objectModel.productList[itemIndex!].imagePath}',
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                20.ph,
                Row(
                  children: [
                    43.pw,
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '${objectModel.productList[itemIndex!].name}',
                            style: TextStyle(
                              color: Colors.brown.shade600,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          15.ph,
                          Text(
                            '${objectModel.productList[itemIndex!].price}',
                            style: TextStyle(
                              color: Colors.brown.shade600,
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          15.ph,
                          Row(
                            children: [
                              ...List.generate(
                                4,
                                (index) => const Icon(
                                  Icons.star,
                                  color: Colors.orange,
                                ),
                              ),
                              const Icon(
                                Icons.star_half,
                                color: Colors.orange,
                              ),
                              5.pw,
                              const Text(
                                '4.5 Rate',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                          5.ph,
                          Text(
                            '${objectModel.productList[itemIndex!].description}',
                            overflow: TextOverflow.ellipsis,
                            maxLines: 4,
                            style: const TextStyle(
                              height: 1.3,
                              wordSpacing: 1.5,
                            ),
                          ),
                          40.ph,
                          Row(
                            children: [
                              OutlinedButton(
                                onPressed: () {},
                                style: const ButtonStyle(
                                  elevation: MaterialStatePropertyAll(8),
                                  padding: MaterialStatePropertyAll(
                                    EdgeInsets.symmetric(
                                      vertical: 12,
                                      horizontal: 8,
                                    ),
                                  ),
                                  shape: MaterialStatePropertyAll(
                                    RoundedRectangleBorder(
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(10),
                                      ),
                                    ),
                                  ),
                                  backgroundColor: MaterialStatePropertyAll(
                                    Color(0xffd5dcf9),
                                  ),
                                ),
                                child: const Icon(
                                  Icons.bookmark_border,
                                  size: 30,
                                  color: Color(0xff143642),
                                ),
                              ),
                              10.pw,
                              OutlinedButton(
                                onPressed: () {},
                                style: const ButtonStyle(
                                  elevation: MaterialStatePropertyAll(8),
                                  padding: MaterialStatePropertyAll(
                                    EdgeInsets.symmetric(
                                      vertical: 17.7,
                                      horizontal: 8,
                                    ),
                                  ),
                                  shape: MaterialStatePropertyAll(
                                    RoundedRectangleBorder(
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(10),
                                      ),
                                    ),
                                  ),
                                  backgroundColor: MaterialStatePropertyAll(
                                    Color(0xff143642),
                                  ),
                                ),
                                child: const Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 70),
                                  child: Text(
                                    'Add to cart',
                                    style: TextStyle(color: Color(0xfff3e9dc)),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          20.ph,
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Positioned(
            top: 20,
            left: 15,
            child: SizedBox(
              width: 40,
              child: MaterialButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(80),
                ),
                color: const Color(0xfff3e9dc),
                elevation: 0,
                child: Icon(
                  Icons.arrow_back_ios,
                  color: Colors.brown.withOpacity(0.7),
                  shadows: const [
                    Shadow(
                      color: Colors.black,
                      blurRadius: 40,
                      offset: Offset(1, 1),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            top: 120,
            left: 15,
            child: SizedBox(
              height: 160,
              child: Card(
                elevation: 20,
                color: const Color(0xfff3e9dc),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  children: List.generate(
                    itemColorList.length,
                    (index) => Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 7.0, horizontal: 13),
                      child: CircleAvatar(
                        backgroundColor: Colors.grey[300],
                        radius: 12,
                        child: CircleAvatar(
                          backgroundColor: itemColorList[index],
                          radius: 10,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
