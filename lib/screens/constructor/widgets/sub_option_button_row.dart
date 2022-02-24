import 'package:bakecake_app/constants/constants.dart';
import 'package:bakecake_app/screens/top-level.providers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SubOptions extends ConsumerWidget {
  const SubOptions({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final dishType = ref.watch(dishTypeProvider.state);
    final dishOption = ref.watch(dishOptionProvider.state);
    final dishForm = ref.watch(dishFormOptionProvider.state);
    final bodyImage = ref.watch(imageBodyProvider.state);
    final fillerImage = ref.watch(imageFillerProvider.state);
    final creamImage = ref.watch(imageCreamProvider.state);

    final suggestions = images.where((image) {
      if (image.optionId == Constants.OPTION_BODY ||
          image.optionId == Constants.OPTION_FILLER ) {
        return image.typeId == dishType.state &&
            image.optionId == dishOption.state &&
            image.formId == dishForm.state;
      } else {
        return image.optionId == dishOption.state;
      }
    }).toList();

    return Container(
      alignment: Alignment.center,
      margin: EdgeInsets.only(left: 24, right: 24),
      height: 120,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: suggestions.length,
          itemBuilder: (context, index) {
            var imageAsset = suggestions[index];
            return IconButton(
              iconSize: 100,
              onPressed: () {
                switch (imageAsset.optionId) {
                  case Constants.OPTION_BODY:
                    bodyImage.state = imageAsset.imagePath;
                    break;
                  case Constants.OPTION_FILLER:
                    fillerImage.state = imageAsset.imagePath;
                    break;
                  case Constants.OPTION_CREAM:
                    creamImage.state = imageAsset.imagePath;
                    break;
                }
              },
              icon: Image.asset("assets/${imageAsset.imagePath}.PNG", height: 100,),
              // child: Image.asset("assets/${imageAsset.imagePath}.PNG"),
            );
          }),
    );
  }
}

// ToggleButtons(
// selectedColor: Colors.black,
// fillColor: Colors.white,
// color: Colors.grey,
// children: [
// Icon(Icons.adjust_outlined, size: 100,),
// Icon(Icons.crop_square, size: 100,),
// ],
// isSelected: formOptions.state,
// onPressed: (int index) {
// List<bool>isSelected = [];
// isSelected.addAll(formOptions.state);
// for (int i = 0; i < formOptions.state.length; i++) {
// if (i == index) {
// isSelected[i] = true;
// } else {
// isSelected[i] = false;
// }
// }
// formOptions.state = isSelected;
// print(formOptions.state);
// }),
