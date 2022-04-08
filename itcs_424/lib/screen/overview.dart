class Product {
  String name;
  String imageUrl;
  // TODO: Add servings and ingredients here
  int servings;
  List<Decription> decription;
  int price;



  Product(
      this.name,
      this.imageUrl,
      this.servings,
      this.decription,
      this.price,
      );

// TODO; Add List<Recipe> here
  static List<Product> samples = [
    Product(
      'dog bone',
      'img/dog bone.jpg',
      0,
      [
        Decription('weigth', '500 mg',),
        Decription('material', 'rubber',),
      ],
      400, 
    ),
    Product(
      'smart hard wet food',
      'img/smart heart wet.jpg',
      0,
      [
        Decription('material', 'Salt: 0.5 mg\n meat: 98% ',),
        Decription('weigth', '500 mg',),
      ],
      50,
    ),
    Product(
      'Dolls',
      'img/toys.jpg',
      0,
      [
        Decription('material', 'cotton ',),
      ],
      100,
    ),
    Product(
      'Pedigree',
      'img/pedigree.jpg',
      0,
      [
        Decription('material', 'chicken 98% ',),
        Decription('weigth', '10 kg',),

      ],
      540,
    ),
    Product(
      'Pedigree wet food',
      'img/pedigree wet.jpg',
      0,
      [
        Decription('material', 'pork 98% ',),
        Decription('weigth', '500 mg',),

      ],
      60,
    ),
    Product(
      'smart hard',
      'img/smart heart.jpg',
      0,
      [
        Decription('material', 'chicken 95% ',),
        Decription('weigth', '20 kg',),

      ],
      700,
    ),
    Product('Water and Food Bowls', 'img/Bowls.jpg', 0,  [
        Decription('material', 'Plastic',),
      ],200,),
    Product('Leash and Collar', 'img/Leash.jpg', 0,  [
        Decription('material', 'Leather ',),

      ],150,),
    Product('Pet First Aid Kit', 'img/FirstAid.jpg', 0,  [
        Decription('Purpose', 'cure',),

      ],120,),
    Product('Pet Bed', 'img/Pet Bed.jpg', 0,  [
        Decription('material', 'silk',),

      ],540,),
    Product('Pets Toys', 'img/Pet toys.jpg', 0,  [
        Decription('material', 'Rope',),

      ],200),
    Product('Treats', 'img/Treats.jpg', 0,  [
        Decription('material', 'chicken 95% ',),
        Decription('weigth', '20 kg',),

      ],80),
    Product('Pet Grooming Brush', 'img/Brush.jpg', 0,  [
        Decription('material', 'silk and Pastic ',),

      ],120,),
    Product('Toothbrush', 'img/Toothbrush.jpg', 0,  [
        Decription('material', 'silk',),

      ],80), 
    Product('Flea Preventative', 'img/Flea Prevent.jpg', 0,  [
        Decription('Purpose', ' Cleaner ',),
      

      ],120),
    Product('Stain and Odor Remover', 'img/Stain remover.jpg', 0,  [
        Decription('Purpose', 'Cleaner',),

      ],200),

  ];

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
