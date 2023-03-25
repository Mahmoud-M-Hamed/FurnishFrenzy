import 'package:flutter/material.dart';
import 'package:furniture/models/products_model/beds_model/beds_model.dart';
import 'package:furniture/models/products_model/couchs_model/couch_model.dart';
import 'package:furniture/models/products_model/tables_model/tables_model.dart';
import 'package:furniture/views/home_directory/product_view_section/product_view/products_card_view.dart';
import '../../models/products_model/chairs_model/Chair_model.dart';
import '../../models/products_model/closet_model/closet_model.dart';

// ignore: must_be_immutable
class ProductsViewModel extends StatelessWidget {
  int? index;

  ProductsViewModel({Key? key, required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    dynamic objectModel;
    switch (index) {
      case (0):
        objectModel = ChairsModel();
        break;
      case (1):
        objectModel = CouchModel();
        break;
      case (2):
        objectModel = BedModel();
        break;
      case (3):
        objectModel = ClosetModel();
        break;
      case (4):
        objectModel = TableModel();
        break;
    }
    return ListView.separated(
      physics: (index == 3 || index == 4)
          ? const NeverScrollableScrollPhysics()
          : const BouncingScrollPhysics(),
      itemCount:
          (index == 3 || index == 4) ? 1 : objectModel.productList.length,
      shrinkWrap: (index == 3 || index == 4) ? true : false,
      separatorBuilder: (context, index) => const SizedBox(
        height: 10,
      ),
      itemBuilder: (context, index) => ProductsCardViewSection().productCard(
        context,
        index,
        this.index,
      ),
    );
  }
}
