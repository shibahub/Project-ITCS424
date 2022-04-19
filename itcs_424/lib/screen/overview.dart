class Product {
  String name;
  String imageUrl;
  List<Decription> decription;
  int price;

  Product(
    this.name,
    this.imageUrl,
    this.decription,
    this.price,
  );

// TODO; Add List<Recipe> here
  static List<Product> samples = [
    Product(
      'dog bone',
      'img/dog bone.jpg',
      [
        Decription(
          'weigth',
          '500 mg',
        ),
        Decription(
          'material',
          'rubber',
        ),
      ],
      400,
    ),
    Product(
      'smart hard wet food',
      'img/smart heart wet.jpg',
      [
        Decription(
          'material',
          'Salt: 0.5 mg\n meat: 98% ',
        ),
        Decription(
          'weigth',
          '500 mg',
        ),
      ],
      50,
    ),
    Product(
      'Dolls',
      'img/toys.jpg',
      [
        Decription(
          'material',
          'cotton ',
        ),
      ],
      100,
    ),
    Product(
      'Pedigree',
      'img/pedigree.jpg',
      [
        Decription(
          'material',
          'chicken 98% ',
        ),
        Decription(
          'weigth',
          '10 kg',
        ),
      ],
      540,
    ),
    Product(
      'Pedigree wet food',
      'img/pedigree wet.jpg',
      [
        Decription(
          'material',
          'pork 98% ',
        ),
        Decription(
          'weigth',
          '500 mg',
        ),
      ],
      60,
    ),
    Product(
      'smart hard',
      'img/smart heart.jpg',
      [
        Decription(
          'material',
          'chicken 95% ',
        ),
        Decription(
          'weigth',
          '20 kg',
        ),
      ],
      700,
    ),
    Product(
      'Water and Food Bowls',
      'img/Bowls.jpg',
      [
        Decription(
          'material',
          'Plastic',
        ),
      ],
      200,
    ),
    Product(
      'Leash and Collar',
      'img/Leash.jpg',
      [
        Decription(
          'material',
          'Leather ',
        ),
      ],
      150,
    ),
    Product(
      'Pet First Aid Kit',
      'img/FirstAid.jpg',
      [
        Decription(
          'Purpose',
          'cure',
        ),
      ],
      120,
    ),
    Product(
      'Pet Bed',
      'img/Pet Bed.jpg',
      [
        Decription(
          'material',
          'silk',
        ),
      ],
      540,
    ),
    Product(
        'Pets Toys',
        'img/Pet toys.jpg',
        [
          Decription(
            'material',
            'Rope',
          ),
        ],
        200),
    Product(
        'Treats',
        'img/Treats.jpg',
        [
          Decription(
            'material',
            'chicken 95% ',
          ),
          Decription(
            'weigth',
            '20 kg',
          ),
        ],
        80),
    Product(
      'Pet Grooming Brush',
      'img/Brush.jpg',
      [
        Decription(
          'material',
          'silk and Pastic ',
        ),
      ],
      120,
    ),
    Product(
        'Toothbrush',
        'img/Toothbrush.jpg',
        [
          Decription(
            'material',
            'silk',
          ),
        ],
        80),
    Product(
        'Flea Preventative',
        'img/Flea Prevent.jpg',
        [
          Decription(
            'Purpose',
            ' Cleaner ',
          ),
        ],
        120),
    Product(
        'Stain and Odor Remover',
        'img/Stain remover.jpg',
        [
          Decription(
            'Purpose',
            'Cleaner',
          ),
        ],
        200),
  ];

  findById(String productId) {}
}

// TODO: Add Ingredient() here
class Decription {
  String measure;
  String name;

  Decription(
    this.measure,
    this.name,
  );
}
