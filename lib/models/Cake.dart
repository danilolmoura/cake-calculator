import 'Item.dart';

class Cake {
  List<Ingredient> ingredients;

  Cake() {
    ingredients = [];
  }

  add(Ingredient ingredient) {
    ingredients.add(ingredient);
  }

  double getFullPrice() {
    double totalPrice = 0;
    for (var ingredient in ingredients) {
      totalPrice += ingredient.currentPrice;
    }

    return totalPrice;
  }
}
