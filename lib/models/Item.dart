import 'package:flutter/material.dart';

abstract class Ingredient {
  double fullPrice;
  double currentPrice;
  String name;

  calculate(value);
}

class UnitIngredient extends Ingredient {
  var type = 'unidade';

  UnitIngredient({fullPrice, name});

  calculate(quantity) {
    currentPrice = quantity * fullPrice;
  }
}

class WeightIngredient extends Ingredient {
  var type = 'peso';

  WeightIngredient({fullPrice, name});

  calculate(quantity) {
    currentPrice = quantity * fullPrice;
  }
}

class LiquidIngredient extends Ingredient {
  var type = 'milímetros';

  LiquidIngredient({fullPrice, name});

  calculate(quantity) {
    currentPrice = quantity * fullPrice;
  }
}
