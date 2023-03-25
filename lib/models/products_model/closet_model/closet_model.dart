class ClosetModel {
  String? imagePath, description, price, name;
  int? id;

  ClosetModel(
      {this.name, this.imagePath, this.description, this.price, this.id});

  List<ClosetModel> get productList => [
        ClosetModel(
          name: 'Easy Closet',
          imagePath: 'assets/images/closet/closet1.webp',
          description:
              'Easy Closets was the first internet closet designer out there. They have an impressive pedigree as part of Stow designs, which has been in the closet design business for over 30 years. Their products are all sold online, and they offer free design assistance.',
          price: '98\$',
          id: 1,
        ),
        ClosetModel(
          name: 'Modular Closet',
          imagePath: 'assets/images/closet/closet2.webp',
          description:
              'This closet builder offers modular closet systems that can be assembled by anyone, and adjusted to accommodate your closet dimensions. They offer free design consultation, and their modular systems come in several finishes.',
          price: '100\$',
          id: 2,
        ),
        ClosetModel(
          name: 'Wayfair Closet',
          imagePath: 'assets/images/closet/closet3.webp',
          description:
              'There is no organization tool, and they can be hit or miss, but if you keep your eyes peeled, you can find closet organizers on their website, and score a deal.',
          price: '321\$',
          id: 3,
        ),
        ClosetModel(
          name: 'Lundia Closet',
          imagePath: 'assets/images/closet/closet4.webp',
          description:
              'Lorem ipsum is placeholder text commonly used in the graphic,'
              ' print, and publishing industries for previewing layouts and visual mockups.',
          price: '220\$',
          id: 4,
        ),
        ClosetModel(
          name: 'Swoon Lounge Chair',
          imagePath: 'assets/images/closet/closet5.webp',
          description:
              'Lorem ipsum is placeholder text commonly used in the graphic, print, and publishing industries for previewing layouts and visual mockups.',
          price: '400\$',
          id: 5,
        ),
        ClosetModel(
          name: 'Swoon Lounge Chair',
          imagePath: 'assets/images/closet/closet6.webp',
          description:
              'Lorem ipsum is placeholder text commonly used in the graphic, print, and publishing industries for previewing layouts and visual mockups.',
          price: '160\$',
          id: 6,
        ),
        ClosetModel(
          name: 'Swoon Lounge Chair',
          imagePath: 'assets/images/closet/closet7.webp',
          description:
              'Lorem ipsum is placeholder text commonly used in the graphic, print, and publishing industries for previewing layouts and visual mockups.',
          price: '152\$',
          id: 7,
        ),
        ClosetModel(
          name: 'Swoon Lounge Chair',
          imagePath: 'assets/images/closet/closet8.jpg',
          description:
              'Lorem ipsum is placeholder text commonly used in the graphic, print, and publishing industries for previewing layouts and visual mockups.',
          price: '221\$',
          id: 8,
        ),
      ];
}
