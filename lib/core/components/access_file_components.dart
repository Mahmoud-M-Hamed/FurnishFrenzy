import 'package:flutter/material.dart';
import 'package:furniture/models/products_model/couchs_model/couch_model.dart';
import 'package:furniture/views/home_directory/product_view_section/product_view/details_view.dart';

List<String> detailsList = [
  'Couch Living Room',
  'Modern: Standard',
  'Roam Type: Living Room',
  'Price: 85\$',
];

List<TextStyle> textStyleWidgetList = [
  TextStyle(
    fontWeight: FontWeight.bold,
    color: Colors.black.withOpacity(0.7),
    fontSize: 16,
  ),
  TextStyle(
    color: Colors.black.withOpacity(0.7),
    fontSize: 14,
  ),
  TextStyle(
    color: Colors.black.withOpacity(0.7),
    fontSize: 14,
  ),
  const TextStyle(
    fontWeight: FontWeight.bold,
    color: Color(0xffb9690b),
    fontSize: 16,
  ),
];

Widget cardDetailsInfoSection(context,
    {int? i, Color? color, int? tabBarIndex}) {
  List<String> couchModelList(index) => [
        CouchModel().productList[index].name.toString(),
        'Modern: Standard',
        'Room Type: Living Room',
        'Price: ${CouchModel().productList[index].price}',
      ];
  return Expanded(
    child: Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
        color: color ??= const Color(0xffdab49d),
        borderRadius: const BorderRadius.only(
          bottomRight: Radius.circular(20),
          bottomLeft: Radius.circular(20),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 10,
                ),
                ...couchModelList(i)
                    .map(
                      (e) => Text(
                        e,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          color: Colors.white.withOpacity(0.7),
                          fontWeight: FontWeight.bold,
                          fontSize: 12,
                        ),
                      ),
                    )
                    .toList(),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 35),
            child: MaterialButton(
              splashColor: Colors.brown,
              color: const Color(0xff82a6b1).withOpacity(0.5),
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(20),
                ),
              ),
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => ProductDetailsViewActivity(
                      index: tabBarIndex,
                      itemIndex: i,
                    ),
                  ),
                );
              },
              child: Text(
                'Details',
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Colors.white.withOpacity(0.8),
                ),
              ),
            ),
          ),
        ],
      ),
    ),
  );
}
