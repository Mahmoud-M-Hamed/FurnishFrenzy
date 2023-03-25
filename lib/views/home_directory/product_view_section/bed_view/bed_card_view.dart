import 'package:flutter/material.dart';
import 'package:furniture/models/products_model/beds_model/beds_model.dart';
import 'package:furniture/views/home_directory/product_view_section/product_view/details_view.dart';

class BedCardView {
  Widget bedCardView(context, int i, double width, int tabBarIndex) {
    BedModel bedModel = BedModel();
    List<String> bedModelList(index) => [
          bedModel.productList[index].name.toString(),
          'Modern: Standard',
          'Room Type: Living Room',
          'Price: ${bedModel.productList[index].price}',
        ];
    List<TextStyle> styleWidgetList = [
      TextStyle(
        fontWeight: FontWeight.bold,
        color: Colors.black.withOpacity(0.7),
        fontSize: 16,
      ),
      TextStyle(
        color: Colors.black.withOpacity(0.7),
        fontSize: 12,
      ),
      TextStyle(
        color: Colors.black.withOpacity(0.7),
        fontSize: 12,
      ),
      const TextStyle(
        fontWeight: FontWeight.bold,
        color: Color(0xffb9690b),
        fontSize: 16,
      ),
    ];

    return SizedBox(
      height: 150,
      width: width,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ...List.generate(
                  styleWidgetList.length,
                  (index) => Text(
                    bedModelList(i)[index],
                    overflow: TextOverflow.ellipsis,
                    style: styleWidgetList[index],
                  ),
                ),
                MaterialButton(
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
                  child: Row(
                    children: const [
                      Text(
                        'Details',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Color(0xffc06e52),
                        ),
                      ),
                      Icon(Icons.arrow_right),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: 140,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: ExactAssetImage(
                  bedModel.productList[i].imagePath.toString(),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
