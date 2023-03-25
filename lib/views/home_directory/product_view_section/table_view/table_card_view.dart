import 'package:flutter/material.dart';
import 'package:furniture/models/products_model/tables_model/tables_model.dart';
import 'package:furniture/views/home_directory/product_view_section/product_view/details_view.dart';

class TableCardView {
  Widget tableCardView(context, double width, int tabBarIndex) {
    TableModel tableModel = TableModel();
    double height = MediaQuery.of(context).size.height;

    List<String> tableModelList(index) => [
          '${tableModel.productList[index].name}\n',
          'Modern: Standard',
          'Room Type: Living Room',
          'Price: ${tableModel.productList[index].price}',
        ];

    List<TextStyle> tableCardDetailsStyle = [
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
      height: height,
      child: PageView.builder(
        physics: const BouncingScrollPhysics(),
        itemCount: tableModel.productList.length,
        itemBuilder: (context, index) => Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Card(
            margin: const EdgeInsets.symmetric(vertical: 20),
            color: Colors.white,
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(10),
              ),
            ),
            elevation: 15,
            child: SizedBox(
              width: width,
              child: Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: width,
                      height: height / 2.5,
                      decoration: BoxDecoration(
                        color: Colors.teal,
                        borderRadius: const BorderRadius.only(
                          bottomLeft: Radius.circular(70),
                        ),
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: ExactAssetImage(
                            tableModel.productList[index].imagePath.toString(),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    ...List.generate(
                      tableCardDetailsStyle.length,
                      (listIndex) => Text(
                        tableModelList(index)[listIndex],
                        style: tableCardDetailsStyle[listIndex],
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 40),
                      child: MaterialButton(
                        onPressed: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => ProductDetailsViewActivity(
                                index: tabBarIndex,
                                itemIndex: index,
                              ),
                            ),
                          );
                        },
                        splashColor: Colors.brown,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
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
      ),
    );
  }
}
