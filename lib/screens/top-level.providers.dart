import 'package:bakecake_app/constants/constants.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final dishTypeProvider = StateProvider<int>((ref) => Constants.TYPE_CAKE);
final dishOptionProvider = StateProvider<int>((ref) => Constants.OPTION_BODY);
final dishFormOptionProvider = StateProvider<int>((ref) => Constants.FORM_ROUND);
final imageBodyProvider = StateProvider<String>((ref) => 'place-holder');
final imageFillerProvider = StateProvider<String>((ref) => 'place-holder');
final imageCreamProvider = StateProvider<String>((ref) => 'place-holder');
final imageFormProvider = StateProvider<String>((ref) => 'place-holder');


class ImageAsset {
  int? typeId;
  int optionId;
  int? formId;
  String imagePath;

  ImageAsset({
    this.typeId,
    required this.optionId,
    this.formId,
    required this.imagePath,
  }) {}
}

final images = [
  ImageAsset(
      typeId: Constants.TYPE_CAKE,
      optionId: Constants.OPTION_BODY,
      formId: Constants.FORM_ROUND,
      imagePath: 'cake-round-body-dark'
  ),
  ImageAsset(
      typeId: Constants.TYPE_CAKE,
      optionId: Constants.OPTION_BODY,
      formId: Constants.FORM_ROUND,
      imagePath: 'cake-round-body-light'
  ),
  ImageAsset(
      typeId: Constants.TYPE_CAKE,
      optionId: Constants.OPTION_BODY,
      formId: Constants.FORM_ROUND,
      imagePath: 'cake-round-body-pink'
  ),
  ImageAsset(
      typeId: Constants.TYPE_CAKE,
      optionId: Constants.OPTION_FILLER,
      formId: Constants.FORM_ROUND,
      imagePath: 'cake-round-filler-dark'
  ),
  ImageAsset(
      typeId: Constants.TYPE_CAKE,
      optionId: Constants.OPTION_FILLER,
      formId: Constants.FORM_ROUND,
      imagePath: 'cake-round-filler-light'
  ),
  ImageAsset(
      typeId: Constants.TYPE_CAKE,
      optionId: Constants.OPTION_FILLER,
      formId: Constants.FORM_ROUND,
      imagePath: 'cake-round-filler-pink'
  ),
  ImageAsset(
      typeId: Constants.TYPE_CAKE,
      optionId: Constants.OPTION_BODY,
      formId: Constants.FORM_SQUARE,
      imagePath: 'cake-square-body-dark'
  ),
  ImageAsset(
      typeId: Constants.TYPE_CAKE,
      optionId: Constants.OPTION_BODY,
      formId: Constants.FORM_SQUARE,
      imagePath: 'cake-square-body-light'
  ),
  ImageAsset(
      typeId: Constants.TYPE_CAKE,
      optionId: Constants.OPTION_BODY,
      formId: Constants.FORM_SQUARE,
      imagePath: 'cake-square-body-pink'
  ),
  ImageAsset(
      typeId: Constants.TYPE_CAKE,
      optionId: Constants.OPTION_FILLER,
      formId: Constants.FORM_SQUARE,
      imagePath: 'cake-square-filler-dark'
  ),
  ImageAsset(
      typeId: Constants.TYPE_CAKE,
      optionId: Constants.OPTION_FILLER,
      formId: Constants.FORM_SQUARE,
      imagePath: 'cake-square-filler-light'
  ),
  ImageAsset(
      optionId: Constants.OPTION_FILLER,
      formId: Constants.FORM_SQUARE,
      imagePath: 'cake-square-filler-pink'
  ),
  ImageAsset(
      optionId: Constants.OPTION_CREAM,
      imagePath: 'cream-dark'
  ),
  ImageAsset(
      typeId: Constants.TYPE_CAKE,
      optionId: Constants.OPTION_CREAM,
      imagePath: 'cream-light'
  ),
  ImageAsset(
      typeId: Constants.TYPE_CAKE,
      optionId: Constants.OPTION_CREAM,
      imagePath: 'cream-pink'
  ),
  ImageAsset(
      typeId: Constants.TYPE_CAKE,
      optionId: Constants.OPTION_FORM,
      formId: Constants.FORM_ROUND,
      imagePath: 'cake-round-form'
  ),
  ImageAsset(
      typeId: Constants.TYPE_CAKE,
      optionId: Constants.OPTION_FORM,
      formId: Constants.FORM_SQUARE,
      imagePath: 'cake-square-form'
  ),
  ImageAsset(
      optionId: Constants.OPTION_CREAM,
      imagePath: 'style-birthday'
  ),
  ImageAsset(
      optionId: Constants.OPTION_CREAM,
      imagePath: 'style-wedding'
  ),
  ImageAsset(
    typeId: Constants.TYPE_CUPCAKE,
      optionId: Constants.OPTION_BODY,
      formId: Constants.FORM_ROUND,
      imagePath: 'cupcake-round-body-dark'
  ),
  ImageAsset(
      typeId: Constants.TYPE_CUPCAKE,
      optionId: Constants.OPTION_BODY,
      formId: Constants.FORM_ROUND,
      imagePath: 'cupcake-round-body-light'
  ),
  ImageAsset(
      typeId: Constants.TYPE_CUPCAKE,
      optionId: Constants.OPTION_FILLER,
      formId: Constants.FORM_ROUND,
      imagePath: 'cupcake-round-filler-dark'
  ),
  ImageAsset(
      typeId: Constants.TYPE_CUPCAKE,
      optionId: Constants.OPTION_FILLER,
      formId: Constants.FORM_ROUND,
      imagePath: 'cupcake-round-filler-pink'
  ),

  ImageAsset(
      typeId: Constants.TYPE_CUPCAKE,
      optionId: Constants.OPTION_FORM,
      formId: Constants.FORM_ROUND,
      imagePath: 'cupcake-round-form'
  ),
  ImageAsset(
      typeId: Constants.TYPE_ICECREAM,
      optionId: Constants.OPTION_FORM,
      formId: Constants.FORM_ROUND,
      imagePath: 'icecream-type'
  ),
  ImageAsset(
      typeId: Constants.TYPE_ICECREAM,
      optionId: Constants.OPTION_BODY,
      formId: Constants.FORM_ROUND,
      imagePath: 'icecream-round-body-blue'
  ),
  ImageAsset(
      typeId: Constants.TYPE_ICECREAM,
      optionId: Constants.OPTION_BODY,
      formId: Constants.FORM_ROUND,
      imagePath: 'icecream-round-body-dark'
  ),
  ImageAsset(
      typeId: Constants.TYPE_ICECREAM,
      optionId: Constants.OPTION_FILLER,
      formId: Constants.FORM_ROUND,
      imagePath: 'icecream-round-filler-dark'
  ),
  ImageAsset(
      typeId: Constants.TYPE_ICECREAM,
      optionId: Constants.OPTION_FILLER,
      formId: Constants.FORM_ROUND,
      imagePath: 'icecream-round-filler-pink'
  ),



];
