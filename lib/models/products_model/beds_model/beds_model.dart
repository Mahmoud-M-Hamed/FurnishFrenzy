class BedModel {
  String? imagePath, description, price, name;
  int? id;

  BedModel({this.name, this.imagePath, this.description, this.price, this.id});

  List<BedModel> get productList => [
        BedModel(
          name: 'Scandinavian Bed',
          imagePath: 'assets/images/beds/bed1.png',
          description: 'These style of beds may come in a variety of shapes, '
              'but usually lack flourishes or purely aesthetic additions, '
              'making them an excellent choice for minimalists.',
          price: '37\$',
          id: 1,
        ),
        BedModel(
          name: 'Sleigh Bed',
          imagePath: 'assets/images/beds/bed2.png',
          description: 'The sleigh bed features curved or '
              'scrolled footboards and headboards that resemble a sleigh.'
              ' Often made of heavy wood,'
              ' this bed style is from the French and American '
              'Empire period of the early 19th century.',
          price: '80\$',
          id: 1,
        ),
        BedModel(
          name: 'Upholstered Bed',
          imagePath: 'assets/images/beds/bed3.png',
          description: 'Upholstered headboards add a soft and luxurious feel,'
              ' as well as a decorative touch,'
              ' to the overall look of a bedroom.',
          price: '55\$',
          id: 1,
        ),
        BedModel(
          name: 'Futon Bed',
          imagePath: 'assets/images/beds/bed4.png',
          description: 'A futon is another great space-saving bed type.'
              ' Like most other furniture pieces, '
              'there are many different types of futons '
              'available for consumers. With futons,'
              ' sizes include small futons, large futons,'
              ' and every size in between.'
              ' Futons also come in a huge variety of styles.',
          price: '38\$',
          id: 1,
        ),
        BedModel(
          name: 'Platform Bed ',
          imagePath: 'assets/images/beds/bed5.png',
          description: 'A platform bed has a base that is made from a raised,'
              ' level, horizontal solid frame. '
              'This type of bed often comes with a section that '
              'is composed of rows of flexible wooden slats, '
              'sometimes laid in a latticed structure, '
              'meant to support only a mattress.',
          price: '66\$',
          id: 1,
        ),
      ];
}
