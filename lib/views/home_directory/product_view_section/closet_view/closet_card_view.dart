import 'package:flutter/material.dart';
import 'package:furniture/core/components/access_file_components.dart';
import 'package:furniture/models/products_model/closet_model/closet_model.dart';
import 'package:furniture/views/home_directory/product_view_section/product_view/details_view.dart';

class ClosetCardView {
  Widget closetCardView(context, double width, int tabBarIndex) {
    ClosetModel closetModel = ClosetModel();

    List<String> closetModelList(index) => [
          closetModel.productList[index].name.toString(),
          'Modern: Standard',
          'Room Type: Living Room',
          'Price: ${closetModel.productList[index].price}',
        ];

    List<TextStyle> closetCardDetailsStyle = [
      const TextStyle(
        fontWeight: FontWeight.bold,
        color: Colors.black,
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
        color: Color(0xff7b6b43),
        fontSize: 16,
      ),
    ];

    return SizedBox(
      height: 470,
      child: PageView.builder(
        physics: const BouncingScrollPhysics(),
        itemCount: 5,
        itemBuilder: (context, index) => Padding(
          padding: const EdgeInsets.all(20.0),
          child: Stack(
            children: [
              Container(
                width: width,
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(
                    Radius.circular(30),
                  ),
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: ExactAssetImage(
                      closetModel.productList[index].imagePath.toString(),
                    ),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Card(
                  margin: const EdgeInsets.symmetric(vertical: 20),
                  color: const Color(0xfff3e9dc).withOpacity(0.8),
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                  ),
                  elevation: 10,
                  child: SizedBox(
                    height: 150,
                    width: width / 1.7,
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ...List.generate(
                            closetCardDetailsStyle.length,
                            (listIndex) => Text(
                              closetModelList(index)[listIndex],
                              style: closetCardDetailsStyle[listIndex],
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.symmetric(horizontal: 40),
                            child: MaterialButton(
                              onPressed: () {
                                Navigator.of(context).push(
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        ProductDetailsViewActivity(
                                      index: tabBarIndex,
                                      itemIndex: index,
                                    ),
                                  ),
                                );
                              },
                              splashColor: Colors.brown,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10)),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: const [
                                  Text(
                                    'Details',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xff515a47),
                                    ),
                                  ),
                                  Icon(Icons.arrow_right),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
