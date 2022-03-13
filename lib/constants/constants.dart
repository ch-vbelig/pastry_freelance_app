
import 'package:bakecake_app/model/data/data.type.dart';
import 'package:bakecake_app/model/data/image.asset.dart';

class Constants {
  static const TYPE_CAKE = 0;
  static const TYPE_CUPCAKE = 1;
  static const TYPE_ICECREAM = 2;
  static const TYPE_CROISSANT = 3;

  static const OPTION_FORM = 0;
  static const OPTION_BODY = 1;
  static const OPTION_FILLER = 2;
  static const OPTION_CREAM = 3;
  static const OPTION_STYLE = 4;
  static const OPTION_DECOR = 5;
  static const FORM_ROUND = 0;
  static const FORM_SQUARE = 1;

}

class DishTypes{
  static const TYPE_CAKE = 0;
  static const TYPE_CUPCAKE = 1;
  static const TYPE_ICECREAM = 2;
  static const TYPE_CROISSANT = 3;
}

class DishOptions{
  static const OPTION_FORM = 0;
  // static const OPTION_BODY = 1;
  static const OPTION_FILLER = 2;
  static const OPTION_CREAM = 3;
}

class DishForms{
  static const FORM_ROUND = 0;
  static const FORM_SQUARE = 1;
  static const FORM_HEART = 2;
  static const FORM_TRIANGlE = 3;
  static const FORM_HORN = 4;
}

class DishTastes{
  static const TASTE_STRAWBERRY = 0;
  static const TASTE_CHOCOLATE = 1;
  static const TASTE_BANANA = 3;
  static const TASTE_CHERRY = 4;
}

final dishTypes = <DishMenu>[
  DishMenu(
      typeId: DishTypes.TYPE_CAKE,
      typeName: 'cake-type',
      iconImageFile: 'cake-icon.png'),
  DishMenu(
      typeId: DishTypes.TYPE_CUPCAKE,
      typeName: 'cupcake-type',
      iconImageFile: 'cupcake-icon.png'),
  DishMenu(
      typeId: DishTypes.TYPE_ICECREAM,
      typeName: 'icecream-type',
      iconImageFile: 'icecream-icon.png'),
  DishMenu(
      typeId: DishTypes.TYPE_CROISSANT,
      typeName: 'croissant-type',
      iconImageFile: 'croissant-icon.png'),
];

final cakeForms = [
  DishMenu(
      typeId: DishForms.FORM_ROUND,
      typeName: 'cake-form-round',
      iconImageFile: 'cake-round-icon.png'),
  DishMenu(
      typeId: DishForms.FORM_SQUARE,
      typeName: 'cake-form-square',
      iconImageFile: 'cake-square-icon.png'),
  DishMenu(
      typeId: DishForms.FORM_HEART,
      typeName: 'cake-form-heart',
      iconImageFile: 'cake-heart-icon.png'),
  DishMenu(
      typeId: DishForms.FORM_TRIANGlE,
      typeName: 'cake-form-triangle',
      iconImageFile: 'cake-triangle-icon.png'),
];

final cupcakeForms = [
  DishMenu(
      typeId: DishForms.FORM_ROUND,
      typeName: 'cupcake-form-round',
      iconImageFile: 'cake-round-icon.png'),
];

final icecreamForms = [
  DishMenu(
      typeId: DishForms.FORM_HORN,
      typeName: 'icecream-form-horn',
      iconImageFile: 'cake-round-icon.png'),
];


final bodyTastes = <DishMenu>[
  DishMenu(
      typeId: DishTastes.TASTE_STRAWBERRY,
      typeName: 'strawberry',
      iconImageFile: 'taste-strawberry.png'),
  DishMenu(
      typeId: DishTastes.TASTE_CHOCOLATE,
      typeName: 'chocolate',
      iconImageFile: 'taste-chocolate.png'),
  DishMenu(
      typeId: DishTastes.TASTE_BANANA,
      typeName: 'banana',
      iconImageFile: 'taste-banana.png'),
];


final fillerTastes = <DishMenu>[
  DishMenu(
      typeId: DishTastes.TASTE_STRAWBERRY,
      typeName: 'strawberry',
      iconImageFile: 'filler-taste-strawberry.png'),
  DishMenu(
      typeId: DishTastes.TASTE_CHOCOLATE,
      typeName: 'chocolate',
      iconImageFile: 'filler-taste-chocolate.png'),
  DishMenu(
      typeId: DishTastes.TASTE_BANANA,
      typeName: 'banana',
      iconImageFile: 'filler-taste-banana.png'),
  DishMenu(
      typeId: DishTastes.TASTE_CHERRY,
      typeName: 'cerry',
      iconImageFile: 'filler-taste-cherry.png'),
];

final creamTastes = <DishMenu>[
  DishMenu(
      typeId: DishTastes.TASTE_STRAWBERRY,
      typeName: 'strawberry',
      iconImageFile: 'filler-taste-strawberry.png'),
  DishMenu(
      typeId: DishTastes.TASTE_CHOCOLATE,
      typeName: 'chocolate',
      iconImageFile: 'filler-taste-chocolate.png'),
  DishMenu(
      typeId: DishTastes.TASTE_BANANA,
      typeName: 'banana',
      iconImageFile: 'filler-taste-banana.png'),
  DishMenu(
      typeId: DishTastes.TASTE_CHERRY,
      typeName: 'cerry',
      iconImageFile: 'filler-taste-cherry.png'),
];

final images = [
  ImageAsset(
      typeId: Constants.TYPE_CAKE,
      optionId: Constants.OPTION_BODY,
      formId: Constants.FORM_ROUND,
      imagePath: 'cake-round-body-dark.PNG'),
  ImageAsset(
      typeId: Constants.TYPE_CAKE,
      optionId: Constants.OPTION_BODY,
      formId: Constants.FORM_ROUND,
      imagePath: 'cake-round-body-light.PNG'),
  ImageAsset(
      typeId: Constants.TYPE_CAKE,
      optionId: Constants.OPTION_BODY,
      formId: Constants.FORM_ROUND,
      imagePath: 'cake-round-body-pink.PNG'),
  ImageAsset(
      typeId: Constants.TYPE_CAKE,
      optionId: Constants.OPTION_FILLER,
      formId: Constants.FORM_ROUND,
      imagePath: 'cake-round-filler-dark.PNG'),
  ImageAsset(
      typeId: Constants.TYPE_CAKE,
      optionId: Constants.OPTION_FILLER,
      formId: Constants.FORM_ROUND,
      imagePath: 'cake-round-filler-light.PNG'),
  ImageAsset(
      typeId: Constants.TYPE_CAKE,
      optionId: Constants.OPTION_FILLER,
      formId: Constants.FORM_ROUND,
      imagePath: 'cake-round-filler-pink.PNG'),
  ImageAsset(
      typeId: Constants.TYPE_CAKE,
      optionId: Constants.OPTION_BODY,
      formId: Constants.FORM_SQUARE,
      imagePath: 'cake-square-body-dark.PNG'),
  ImageAsset(
      typeId: Constants.TYPE_CAKE,
      optionId: Constants.OPTION_BODY,
      formId: Constants.FORM_SQUARE,
      imagePath: 'cake-square-body-light.PNG'),
  ImageAsset(
      typeId: Constants.TYPE_CAKE,
      optionId: Constants.OPTION_BODY,
      formId: Constants.FORM_SQUARE,
      imagePath: 'cake-square-body-pink.PNG'),
  ImageAsset(
      typeId: Constants.TYPE_CAKE,
      optionId: Constants.OPTION_FILLER,
      formId: Constants.FORM_SQUARE,
      imagePath: 'cake-square-filler-dark.PNG'),
  ImageAsset(
      typeId: Constants.TYPE_CAKE,
      optionId: Constants.OPTION_FILLER,
      formId: Constants.FORM_SQUARE,
      imagePath: 'cake-square-filler-light.PNG'),
  ImageAsset(
      optionId: Constants.OPTION_FILLER,
      formId: Constants.FORM_SQUARE,
      imagePath: 'cake-square-filler-pink.PNG'),
  ImageAsset(optionId: Constants.OPTION_CREAM, imagePath: 'cream-dark.PNG'),
  ImageAsset(
      typeId: Constants.TYPE_CAKE,
      optionId: Constants.OPTION_CREAM,
      imagePath: 'cream-light.PNG'),
  ImageAsset(
      typeId: Constants.TYPE_CAKE,
      optionId: Constants.OPTION_CREAM,
      imagePath: 'cream-pink.PNG'),
  ImageAsset(
      typeId: Constants.TYPE_CAKE,
      optionId: Constants.OPTION_FORM,
      formId: Constants.FORM_ROUND,
      imagePath: 'cake-round-form.PNG'),
  ImageAsset(
      typeId: Constants.TYPE_CAKE,
      optionId: Constants.OPTION_FORM,
      formId: Constants.FORM_SQUARE,
      imagePath: 'cake-square-form.PNG'),
  ImageAsset(optionId: Constants.OPTION_CREAM, imagePath: 'style-birthday.PNG'),
  ImageAsset(optionId: Constants.OPTION_CREAM, imagePath: 'style-wedding.PNG'),
  ImageAsset(
      typeId: Constants.TYPE_CUPCAKE,
      optionId: Constants.OPTION_BODY,
      formId: Constants.FORM_ROUND,
      imagePath: 'cupcake-round-body-dark.PNG'),
  ImageAsset(
      typeId: Constants.TYPE_CUPCAKE,
      optionId: Constants.OPTION_BODY,
      formId: Constants.FORM_ROUND,
      imagePath: 'cupcake-round-body-light.PNG'),
  ImageAsset(
      typeId: Constants.TYPE_CUPCAKE,
      optionId: Constants.OPTION_FILLER,
      formId: Constants.FORM_ROUND,
      imagePath: 'cupcake-round-filler-dark.PNG'),
  ImageAsset(
      typeId: Constants.TYPE_CUPCAKE,
      optionId: Constants.OPTION_FILLER,
      formId: Constants.FORM_ROUND,
      imagePath: 'cupcake-round-filler-pink.PNG'),
  ImageAsset(
      typeId: Constants.TYPE_CUPCAKE,
      optionId: Constants.OPTION_FORM,
      formId: Constants.FORM_ROUND,
      imagePath: 'cupcake-round-form.PNG'),
  ImageAsset(
      typeId: Constants.TYPE_ICECREAM,
      optionId: Constants.OPTION_FORM,
      formId: Constants.FORM_ROUND,
      imagePath: 'icecream-type.PNG'),
  ImageAsset(
      typeId: Constants.TYPE_ICECREAM,
      optionId: Constants.OPTION_BODY,
      formId: Constants.FORM_ROUND,
      imagePath: 'icecream-round-body-blue.PNG'),
  ImageAsset(
      typeId: Constants.TYPE_ICECREAM,
      optionId: Constants.OPTION_BODY,
      formId: Constants.FORM_ROUND,
      imagePath: 'icecream-round-body-dark.PNG'),
  ImageAsset(
      typeId: Constants.TYPE_ICECREAM,
      optionId: Constants.OPTION_FILLER,
      formId: Constants.FORM_ROUND,
      imagePath: 'icecream-round-filler-dark.PNG'),
  ImageAsset(
      typeId: Constants.TYPE_ICECREAM,
      optionId: Constants.OPTION_FILLER,
      formId: Constants.FORM_ROUND,
      imagePath: 'icecream-round-filler-pink.png'),
];
