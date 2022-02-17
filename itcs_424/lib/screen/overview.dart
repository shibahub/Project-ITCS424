class Recipe {
  String label;
  String imageUrl;
  // TODO: Add servings and ingredients here
  int servings;
  List<Ingredient> ingredients;


  Recipe(
      this.label,
      this.imageUrl,
      this.servings,
      this.ingredients,
      );

// TODO; Add List<Recipe> here
  static List<Recipe> samples = [
    Recipe(
      'dog bone',
      'img/dog bone.jpg',
      0,
      [
        Ingredient('weigth', '500 mg',),
        Ingredient('material', 'rubber',),
        //Ingredient(4, '', 'Frozen Meatballs',),
        //Ingredient(0.5, 'jar', 'sauce',),
      ],
    ),
    Recipe(
      'smart hard wet food',
      'img/smart heart wet.jpg',
      0,
      [
        Ingredient('material', 'Salt: 0.5 mg\n meat: 98% ',),
        Ingredient('weigth', '500 mg',),
        //Ingredient(1, 'can', 'Tomato Soup',),
      ],
    ),
    Recipe(
      'Dolls',
      'img/toys.jpg',
      0,
      [
        Ingredient('material', 'cotton ',),
        //Ingredient(2, 'slices', 'Cheese',),
        //Ingredient(2, 'slices', 'Bread',),
      ],
    ),
    Recipe(
      'Pedigree',
      'img/pedigree.jpg',
      0,
      [
        Ingredient('material', 'chicken 98% ',),
        Ingredient('weigth', '10 kg',),
        //Ingredient(4, 'cups', 'flour',),
        //Ingredient(2, 'cups', 'sugar',),
        //Ingredient(0.5, 'cups', 'chocolate chips',),
      ],
    ),
    Recipe(
      'Pedigree wet food.jpg',
      'img/pedigree wet.jpg',
      0,
      [
        Ingredient('material', 'pork 98% ',),
        Ingredient('weigth', '500 mg',),
        //Ingredient(4, 'oz', 'nachos',),
        //Ingredient(3, 'oz', 'taco meat',),
        //Ingredient(0.5, 'cup', 'cheese',),
        //Ingredient(0.25, 'cup', 'chopped tomatoes',),
      ],
    ),
    Recipe(
      'smart hard',
      'img/smart heart.jpg',
      0,
      [
        Ingredient('material', 'chicken 95% ',),
        Ingredient('weigth', '20 kg',),
        //Ingredient(1, 'item', 'pizza',),
        //Ingredient(1, 'cup', 'pineapple',),
        //Ingredient(8, 'oz', 'ham',),
      ],
    ),
  ];

}

// TODO: Add Ingredient() here
class Ingredient {
  //double quantity;
  String measure;
  String name;

  Ingredient(
      //this.quantity,
      this.measure,
      this.name,
      );
}
