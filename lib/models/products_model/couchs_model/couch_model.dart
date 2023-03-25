class CouchModel {
  String? imagePath, description, price, name;
  int? id;

  CouchModel(
      {this.name, this.imagePath, this.description, this.price, this.id});

  List<CouchModel> get productList => [
        CouchModel(
          name: 'Lawson Couch',
          imagePath: 'assets/images/couches/couch1.jpg',
          description:
              'Lorem ipsum is placeholder text commonly used in the graphic, print, and publishing industries for previewing layouts and visual mockups.',
          price: '21\$',
          id: 1,
        ),
        CouchModel(
          name: 'Chesterfield Couch',
          imagePath: 'assets/images/couches/couch4.jpg',
          description:
              'Lorem ipsum is placeholder text commonly used in the graphic, print, and publishing industries for previewing layouts and visual mockups.',
          price: '52\$',
          id: 1,
        ),
        CouchModel(
          name: 'Cabriole Couch',
          imagePath: 'assets/images/couches/couch3.webp',
          description:
              'Lorem ipsum is placeholder text commonly used in the graphic, print, and publishing industries for previewing layouts and visual mockups.',
          price: '65\$',
          id: 2,
        ),
        CouchModel(
          name: 'Lorem Ipsum',
          imagePath: 'assets/images/couches/OIP.jpg',
          description:
              'Lorem ipsum is placeholder text commonly used in the graphic, print, and publishing industries for previewing layouts and visual mockups.',
          price: '99\$',
          id: 3,
        ),
        CouchModel(
          name: 'Lorem Ipsum',
          imagePath: 'assets/images/couches/couch2.jpg',
          description:
              'Lorem ipsum is placeholder text commonly used in the graphic, print, and publishing industries for previewing layouts and visual mockups.',
          price: '45\$',
          id: 4,
        ),
        CouchModel(
          name: 'Lorem Ipsum',
          imagePath: 'assets/images/couches/couch5.jpg',
          description:
              'Lorem ipsum is placeholder text commonly used in the graphic, print, and publishing industries for previewing layouts and visual mockups.',
          price: '62\$',
          id: 5,
        ),
        CouchModel(
          name: 'Lorem Ipsum',
          imagePath: 'assets/images/couches/couch6.jpg',
          description:
              'Lorem ipsum is placeholder text commonly used in the graphic, print, and publishing industries for previewing layouts and visual mockups.',
          price: '87\$',
          id: 6,
        ),
        CouchModel(
          name: 'Lorem Ipsum',
          imagePath: 'assets/images/couches/couch7.jpg',
          description:
              'Lorem ipsum is placeholder text commonly used in the graphic, print, and publishing industries for previewing layouts and visual mockups.',
          price: '38\$',
          id: 7,
        ),
        CouchModel(
          name: 'Lorem Ipsum',
          imagePath: 'assets/images/couches/couch8.jpg',
          description:
              'Lorem ipsum is placeholder text commonly used in the graphic, print, and publishing industries for previewing layouts and visual mockups.',
          price: '54\$',
          id: 8,
        ),
        CouchModel(
          name: 'Lorem Ipsum',
          imagePath: 'assets/images/couches/couch9.jpg',
          description:
              'Lorem ipsum is placeholder text commonly used in the graphic, print, and publishing industries for previewing layouts and visual mockups.',
          price: '44\$',
          id: 9,
        ),
        CouchModel(
          name: 'Lorem Ipsum',
          imagePath: 'assets/images/couches/couch_item1.png',
          description:
              'Lorem ipsum is placeholder text commonly used in the graphic, print, and publishing industries for previewing layouts and visual mockups.',
          price: '65\$',
          id: 10,
        ),
      ];
}
