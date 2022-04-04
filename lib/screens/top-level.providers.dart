import 'package:bakecake_app/constants/constants.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

// defaults
const transparentImageFile = 'place-holder.PNG';

// final userProvider = FutureProvider<List<Todo>>((ref) async {
//   //return Future.delayed(Duration(seconds: 2)).then((value) => fakeTodos);
//   final _todosList = <Todo>[];
//
//   final response = await http.get(Uri.parse(
//       'https://elegion-hack.herokuapp.com/api/user_tasks/?id_user=1'));
//   final responseToRedmine = await http
//       .get(Uri.parse('https://elegion-hack.herokuapp.com/redmine/issues/'));
//
//   if (response.statusCode == 200) {
//     for (var i = 0;
//         i < jsonDecode(utf8.decode(response.bodyBytes)).length;
//         ++i) {
//       _todosList
//           .add(Todo.fromJson(jsonDecode(utf8.decode(response.bodyBytes))[i]));
//     }
//   } else {
//     throw Exception('Failed to load our todos');
//   }
//
//   if (responseToRedmine.statusCode == 200) {
//     for (var i = 0;
//         i < jsonDecode(utf8.decode(responseToRedmine.bodyBytes)).length;
//         ++i) {
//       _todosList
//           .add(Todo.fromJson(jsonDecode(utf8.decode(responseToRedmine.bodyBytes))[i]));
//     }
//   } else {
//     throw Exception('Failed to load redmine todos');
//   }
//
//   return _todosList;
// });

// Dish properties
final dishTypeProvider = StateProvider<int>((ref) => DishTypes.TYPE_CAKE);
final dishFormProvider = StateProvider<int>((ref) => DishForms.FORM_ROUND);
final dishBodyProvider =
    StateProvider<int>((ref) => DishTastes.TASTE_NONE);
final dishFillerProvider =
    StateProvider<int>((ref) => DishTastes.TASTE_NONE);
final dishCreamProvider =
    StateProvider<int>((ref) => DishTastes.TASTE_NONE);

// Menu
final dishOptionProvider = StateProvider<int>((ref) => DishOptions.OPTION_FORM);

// Render menu icons below constructor
final dishOptionIconProvider = StateProvider((ref) {
  final dishForm = ref.watch(dishFormIconProvider.state);
  switch (ref.watch(dishOptionProvider.state).state) {
    case DishOptions.OPTION_FORM:
      return dishForm.state;
    case DishOptions.OPTION_FILLER:
      return fillerTastes;
    case DishOptions.OPTION_CREAM:
      return creamTastes;
    default:
      return dishForm.state;
  }
});

// Determine available forms for each dish type
final dishFormIconProvider = StateProvider((ref) {
  switch (ref.watch(dishTypeProvider)) {
    case DishTypes.TYPE_CAKE:
      return cakeForms;
    case DishTypes.TYPE_CUPCAKE:
      return cupcakeForms;
    case DishTypes.TYPE_ICECREAM:
      return icecreamForms;
    default:
      return cakeForms;
  }
});

final imageBodyProvider = StateProvider<String>((ref) {
  final typeId = ref.watch(dishTypeProvider.state);
  final formId = ref.watch(dishFormProvider.state);
  final bodyTasteId = ref.watch(dishBodyProvider.state);
  final foundImageAssets = imageAssets
      .where((img) =>
          img.optionId == DishOptions.OPTION_BODY &&
          img.formId == formId.state &&
          img.typeId == typeId.state &&
          img.tasteId == bodyTasteId.state)
      .toList();

  return foundImageAssets.isNotEmpty ? foundImageAssets[0].imagePath : 'place-holder.PNG';
});

final imageFillerProvider = StateProvider<String>((ref) {
  final typeId = ref.watch(dishTypeProvider.state);
  final formId = ref.watch(dishFormProvider.state);
  final fillerTasteId = ref.watch(dishFillerProvider.state);
  final foundImageAssets = imageAssets
      .where((img) =>
  img.optionId == DishOptions.OPTION_FILLER &&
      img.formId == formId.state &&
      img.typeId == typeId.state &&
      img.tasteId == fillerTasteId.state)
      .toList();

  return foundImageAssets.isNotEmpty ? foundImageAssets[0].imagePath : 'place-holder.PNG';
});
final imageCreamProvider = StateProvider<String>((ref) {
  final typeId = ref.watch(dishTypeProvider.state);
  final formId = ref.watch(dishFormProvider.state);
  final creamTasteId = ref.watch(dishCreamProvider.state);
  final foundImageAssets = imageAssets
      .where((img) =>
  img.optionId == DishOptions.OPTION_CREAM &&
      img.formId == formId.state &&
      img.typeId == typeId.state &&
      img.tasteId == creamTasteId.state)
      .toList();
  return foundImageAssets.isNotEmpty ? foundImageAssets[0].imagePath : 'place-holder.PNG';
});

final imageFormProvider = StateProvider<String>((ref) {
  final typeId = ref.watch(dishTypeProvider.state);
  final formId = ref.watch(dishFormProvider.state);
  final foundImageAssets = imageAssets
      .where((img) =>
  img.optionId == DishOptions.OPTION_FORM &&
      img.formId == formId.state &&
      img.typeId == typeId.state)
      .toList();
  return foundImageAssets.isNotEmpty ? foundImageAssets[0].imagePath : 'place-holder.PNG';
});


// TODO: Later it will be FutureProvider
