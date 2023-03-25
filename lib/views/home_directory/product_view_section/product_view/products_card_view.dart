import 'package:flutter/material.dart';
import '../bed_view/bed_card_view.dart';
import '../chair_view/chair_card_view.dart';
import '../closet_view/closet_card_view.dart';
import '../couch_view/couch_card_view.dart';
import '../table_view/table_card_view.dart';

class ProductsCardViewSection {
  Widget productCard(BuildContext context, int index, int? i) {
    var width = MediaQuery.of(context).size.width;
    Widget? productCardView;
    switch (i) {
      case 0:
        productCardView = ChairCardView(index, width, i);
        break;
      case 1:
        productCardView =
            CouchCardView().couchCardView(context, index, width, i!);
        break;
      case 2:
        productCardView = BedCardView().bedCardView(context, index, width, i!);
        break;
      case 3:
        productCardView = ClosetCardView().closetCardView(context, width, i!);
        break;
      case 4:
        productCardView = TableCardView().tableCardView(context, width, i!);
        break;
    }
    return productCardView!;
  }
}
