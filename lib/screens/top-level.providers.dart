import 'package:bakecake_app/constants/constants.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final dishTypeProvider = StateProvider<int>((ref) => Constants.TYPE_CAKE);
final dishOptionProvider = StateProvider<int>((ref) => Constants.OPTION_BODY);
final dishFormOptionProvider = StateProvider<int>((ref) => Constants.FORM_ROUND);
final imageBodyProvider = StateProvider<String>((ref) => 'cake-round-body-dark');
final imageFillerProvider = StateProvider<String>((ref) => 'cake-round-filler-dark');
final imageCreamProvider = StateProvider<String>((ref) => 'cream-dark');


class ImageAsset {
  int typeId;
  int optionId;
  int? formId;
  String imagePath;

  ImageAsset({
    required this.typeId,
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
      typeId: Constants.TYPE_CAKE,
      optionId: Constants.OPTION_FILLER,
      formId: Constants.FORM_SQUARE,
      imagePath: 'cake-square-filler-pink'
  ),
  ImageAsset(
      typeId: Constants.TYPE_CAKE,
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
];
