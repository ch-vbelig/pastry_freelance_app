import 'package:bakecake_app/constants/constants.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

// defaults
const transparentImageFile = 'place-holder.png';


// Dish properties
final dishTypeProvider = StateProvider<int>((ref) => DishTypes.TYPE_CAKE);
final dishFormProvider = StateProvider<int>((ref) => DishForms.FORM_ROUND);
final dishBodyProvider = StateProvider<int>((ref) => DishTastes.TASTE_CHOCOLATE);
final dishFillerProvider = StateProvider<int>((ref) => DishTastes.TASTE_CHOCOLATE);
final dishCreamProvider = StateProvider<int>((ref) => DishTastes.TASTE_CHOCOLATE);

// Menu
final dishOptionProvider = StateProvider<int>((ref) => DishOptions.OPTION_FORM);

// Menu
final dishSubMenuProvider = StateProvider((ref) {
  final dishForm = ref.watch(dishFormMenuProvider.state);
  switch (ref.watch(dishOptionProvider)) {
    case DishOptions.OPTION_FORM:
      return dishForm.state;
    case DishOptions.OPTION_FILLER:
      return fillerTastes;
    case DishOptions.OPTION_CREAM:
      return creamTastes;
  }
});

final dishFormMenuProvider = StateProvider((ref) {
  switch (ref.watch(dishTypeProvider)) {
    case DishTypes.TYPE_CAKE:
      return cakeForms;
    case DishTypes.TYPE_CUPCAKE:
      return cupcakeForms;
    case DishTypes.TYPE_ICECREAM:
      return icecreamForms;
  }
});

final imageBodyProvider = StateProvider<String>((ref) => 'place-holder.PNG');
final imageFillerProvider = StateProvider<String>((ref) => 'place-holder.PNG');
final imageCreamProvider = StateProvider<String>((ref) => 'place-holder.PNG');
final imageFormProvider = StateProvider<String>((ref) => 'place-holder.PNG');
final isDroppedProvider = StateProvider<bool>((ref) => false);

// TODO: Later it will be FutureProvider
