class TableModel {
  String? imagePath, description, price, name;
  int? id;

  TableModel(
      {this.name, this.imagePath, this.description, this.price, this.id});

  List<TableModel> get productList => [
        TableModel(
          name: 'Itadory Table',
          imagePath: 'assets/images/tables/table1.webp',
          description:
              'Lorem ipsum is placeholder text commonly used in the graphic, print, and publishing industries for previewing layouts and visual mockups.',
          price: '21\$',
          id: 1,
        ),
        TableModel(
          name: 'Credence Table',
          imagePath: 'assets/images/tables/table2.webp',
          description:
              'Lorem ipsum is placeholder text commonly used in the graphic, print, and publishing industries for previewing layouts and visual mockups.',
          price: '35\$',
          id: 1,
        ),
        TableModel(
          name: 'Conference Table',
          imagePath: 'assets/images/tables/table3.webp',
          description:
              'Lorem ipsum is placeholder text commonly used in the graphic, print, and publishing industries for previewing layouts and visual mockups.',
          price: '65\$',
          id: 2,
        ),
        TableModel(
          name: 'Foyer Table',
          imagePath: 'assets/images/tables/table4.webp',
          description:
              'Lorem ipsum is placeholder text commonly used in the graphic, print, and publishing industries for previewing layouts and visual mockups.',
          price: '98\$',
          id: 3,
        ),
        TableModel(
          name: 'Patio Table',
          imagePath: 'assets/images/tables/table5.webp',
          description:
              'Lorem ipsum is placeholder text commonly used in the graphic, print, and publishing industries for previewing layouts and visual mockups.',
          price: '77\$',
          id: 4,
        ),
        TableModel(
          name: 'Lounge Table',
          imagePath: 'assets/images/tables/table6.webp',
          description:
              'Lorem ipsum is placeholder text commonly used in the graphic, print, and publishing industries for previewing layouts and visual mockups.',
          price: '20\$',
          id: 5,
        ),
        TableModel(
          name: 'Accent Table',
          imagePath: 'assets/images/tables/table7.webp',
          description:
              'Lorem ipsum is placeholder text commonly used in the graphic, print, and publishing industries for previewing layouts and visual mockups.',
          price: '74\$',
          id: 6,
        ),
        TableModel(
          name: 'Swan Table',
          imagePath: 'assets/images/tables/table8.webp',
          description:
              'Lorem ipsum is placeholder text commonly used in the graphic, print, and publishing industries for previewing layouts and visual mockups.',
          price: '21\$',
          id: 7,
        ),
        TableModel(
          name: 'Swoon Table',
          imagePath: 'assets/images/tables/table9.webp',
          description:
              'Lorem ipsum is placeholder text commonly used in the graphic, print, and publishing industries for previewing layouts and visual mockups.',
          price: '90\$',
          id: 8,
        ),
        TableModel(
          name: 'Eames Table',
          imagePath: 'assets/images/tables/table10.webp',
          description:
              'Lorem ipsum is placeholder text commonly used in the graphic, print, and publishing industries for previewing layouts and visual mockups.',
          price: '99\$',
          id: 9,
        ),
        TableModel(
          name: 'Beacon Table',
          imagePath: 'assets/images/tables/table11.webp',
          description:
              'Lorem ipsum is placeholder text commonly used in the graphic, print, and publishing industries for previewing layouts and visual mockups.',
          price: '62\$',
          id: 10,
        ),
        TableModel(
          name: 'Vexana Lundrea Table',
          imagePath: 'assets/images/tables/table12.webp',
          description:
              'Lorem ipsum is placeholder text commonly used in the graphic, print, and publishing industries for previewing layouts and visual mockups.',
          price: '37\$',
          id: 10,
        ),
      ];
}
