class ChairsModel {
  String? imagePath, description, price, name;
  int? id;

  ChairsModel(
      {this.name, this.imagePath, this.description, this.price, this.id});

  List<ChairsModel> get productList => [
        ChairsModel(
          name: 'Swoon Lounge Chair ',
          imagePath: 'assets/images/chairs/chair_item1.png',
          description:
              'Considered one of the most famous symbols of Danish furniture design, lobally admired, its elegant, curved frame is often spotted in the world’s best restaurants and hotels as well as in private homes all over the world.',
          price: '40\$',
          id: 1,
        ),
        ChairsModel(
          name: 'Verner Stacking Chair ',
          imagePath: 'assets/images/chairs/chair_item2.png',
          description:
              'The comfort of this chair results from the combination of a cantilever structure with an anthropomorphic shape and a slightly flexible material. ',
          price: '15\$',
          id: 2,
        ),
        ChairsModel(
          name: 'Ludwig Mies van der Rohe Chair',
          imagePath: 'assets/images/chairs/chair_item3.png',
          description:
              'The Rolex and Rolls-Royce of 20th-century chairs. The Barcelona Chair.',
          price: '60\$',
          id: 3,
        ),
        ChairsModel(
          name: 'Le Corbusier “Grand Confort”',
          imagePath: 'assets/images/chairs/chair_item4.png',
          description:
              'Today, the Grand Confort still makes for a handsome inclusion in a modern lounge, yet there’s real beauty too, in this early, surpringly colourful sketch.',
          price: '43\$',
          id: 4,
        ),
        ChairsModel(
          name: 'Thonet “209” Chair\n',
          imagePath: 'assets/images/chairs/chair_item5.png',
          description:
              'One of the most crucial innovations in the time line of the modern chair is the invention of a process that allowed wood to be bent with steam.',
          price: '27\$',
          id: 5,
        ),
        ChairsModel(
          name: 'Eero Saarinen “Tulip”',
          imagePath: 'assets/images/chairs/chair_item6.png',
          description:
              'A tectonic design shift occurred overnight when Saarinen revealed his attempt at a single-material, single-form chair, which blew up the notion that a chair had to stand on four posts.',
          price: '20\$',
          id: 6,
        ),
        ChairsModel(
          name: 'Marcel Breuer “B32/Cesca”',
          imagePath: 'assets/images/chairs/chair_item7.png',
          description:
              'Fascinated by bicycle handlebars, Breuer and Mart Stam used non-reinforced tubular steel to pretty much invent the 20th-century modern chair. ',
          price: '78\$',
          id: 7,
        ),
        ChairsModel(
          name: 'Charles & Ray Eames Chair',
          imagePath: 'assets/images/chairs/chair_item8.png',
          description:
              'The Eames Lounge now epitomizes sexy midcentury executive style, masculinity, and comfort.',
          price: '51\$',
          id: 8,
        ),
        ChairsModel(
          name: 'Eames Molded Plastic Side Chair',
          imagePath: 'assets/images/chairs/chair_item9.png',
          description:
              'The chair was intentionally designed for the ‘International Competition for Low-Cost Furniture Design.',
          price: '85\$',
          id: 9,
        ),
      ];
}
