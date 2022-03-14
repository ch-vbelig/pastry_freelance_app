import 'package:bakecake_app/constants/cake.assets.dart';
import 'package:bakecake_app/constants/cupcake.assets.dart';
import 'package:bakecake_app/constants/icecream.assets.dart';
import 'package:bakecake_app/model/data/data.type.dart';
import 'package:bakecake_app/model/data/image.asset.dart';

class DishTypes {
  static const TYPE_CAKE = 0;
  static const TYPE_CUPCAKE = 1;
  static const TYPE_ICECREAM = 2;
  static const TYPE_CROISSANT = 3;
}

class DishOptions {
  static const OPTION_FORM = 0;
  static const OPTION_FILLER = 1;
  static const OPTION_CREAM = 2;
  static const OPTION_BODY = 3;
}

class DishForms {
  static const FORM_ROUND = 0;
  static const FORM_SQUARE = 1;
  static const FORM_HEART = 2;
  static const FORM_TRIANGlE = 3;
  static const FORM_HORN = 4;
}

class DishTastes {
  static const TASTE_STRAWBERRY = 0;
  static const TASTE_CHOCOLATE = 1;
  static const TASTE_BANANA = 2;
  static const TASTE_CHERRY = 3;
  static const TASTE_LIGHT = 4;
  static const TASTE_NONE = -1;
}

final dishTypes = <DishMenu>[
  DishMenu(
      value: DishTypes.TYPE_CAKE,
      name: 'cake-type',
      iconImageFile: 'cake-icon.png'),
  DishMenu(
      value: DishTypes.TYPE_CUPCAKE,
      name: 'cupcake-type',
      iconImageFile: 'cupcake-icon.png'),
  DishMenu(
      value: DishTypes.TYPE_ICECREAM,
      name: 'icecream-type',
      iconImageFile: 'icecream-icon.png'),
  DishMenu(
      value: DishTypes.TYPE_CROISSANT,
      name: 'croissant-type',
      iconImageFile: 'croissant-icon.png'),
];

final cakeForms = [
  DishMenu(
      value: DishForms.FORM_ROUND,
      name: 'cake-form-round',
      iconImageFile: 'cake-round-icon.png'),
  DishMenu(
      value: DishForms.FORM_SQUARE,
      name: 'cake-form-square',
      iconImageFile: 'cake-square-icon.png'),
  DishMenu(
      value: DishForms.FORM_HEART,
      name: 'cake-form-heart',
      iconImageFile: 'cake-heart-icon.png'),
  DishMenu(
      value: DishForms.FORM_TRIANGlE,
      name: 'cake-form-triangle',
      iconImageFile: 'cake-triangle-icon.png'),
];

final cupcakeForms = [
  DishMenu(
      value: DishForms.FORM_ROUND,
      name: 'cupcake-form-round',
      iconImageFile: 'cake-round-icon.png'),
];

final icecreamForms = [
  DishMenu(
      value: DishForms.FORM_ROUND,
      name: 'icecream-form-horn',
      iconImageFile: 'cake-round-icon.png'),
];

final bodyTastes = <DishMenu>[
  DishMenu(
      value: DishTastes.TASTE_STRAWBERRY,
      name: 'strawberry',
      iconImageFile: 'taste-strawberry.png'),
  DishMenu(
      value: DishTastes.TASTE_CHOCOLATE,
      name: 'chocolate',
      iconImageFile: 'taste-chocolate.png'),
  DishMenu(
      value: DishTastes.TASTE_BANANA,
      name: 'banana',
      iconImageFile: 'taste-banana.png'),
];

final fillerTastes = <DishMenu>[
  DishMenu(
      value: DishTastes.TASTE_STRAWBERRY,
      name: 'strawberry',
      iconImageFile: 'filler-taste-strawberry.png'),
  DishMenu(
      value: DishTastes.TASTE_CHOCOLATE,
      name: 'chocolate',
      iconImageFile: 'filler-taste-chocolate.png'),
  DishMenu(
      value: DishTastes.TASTE_BANANA,
      name: 'banana',
      iconImageFile: 'filler-taste-banana.png'),
  // DishMenu(
  //     value: DishTastes.TASTE_CHERRY,
  //     name: 'cerry',
  //     iconImageFile: 'filler-taste-cherry.png'),
  DishMenu(
      value: DishTastes.TASTE_NONE,
      name: 'none',
      iconImageFile: 'place-holder.PNG'),
];

final creamTastes = <DishMenu>[
  DishMenu(
      value: DishTastes.TASTE_STRAWBERRY,
      name: 'strawberry',
      iconImageFile: 'cream-taste-strawberry.png'),
  DishMenu(
      value: DishTastes.TASTE_CHOCOLATE,
      name: 'chocolate',
      iconImageFile: 'cream-taste-chocolate.png'),
  DishMenu(
      value: DishTastes.TASTE_BANANA,
      name: 'banana',
      iconImageFile: 'cream-taste-banana.png'),
  // DishMenu(
  //     value: DishTastes.TASTE_CHERRY,
  //     name: 'cherry',
  //     iconImageFile: 'cream-taste-cherry.png'),
  DishMenu(
      value: DishTastes.TASTE_NONE,
      name: 'none',
      iconImageFile: 'place-holder.PNG'),
];



var imageAssets = [cakeAssets, cupcakeAssets, icecreamAssets].expand((element) => element).toList();
