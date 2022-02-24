import 'package:bakecake_app/constants/constants.dart';
import 'package:bakecake_app/screens/top-level.providers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class Canvas extends ConsumerWidget {
  const Canvas({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final dishType = ref.watch(dishTypeProvider.state);
    final dishForm = ref.watch(dishFormOptionProvider.state);
    final dishOption = ref.watch(dishOptionProvider.state);
    final bodyImage = ref.watch(imageBodyProvider.state);
    final fillerImage = ref.watch(imageFillerProvider.state);
    final creamImage = ref.watch(imageCreamProvider.state);
    final formImage = ref.watch(imageFormProvider.state);

    final suggestions = images.where((image) {
      if (dishOption.state == Constants.OPTION_BODY) {
        return image.typeId == dishType.state && image.optionId == Constants.OPTION_FORM;
      } else {
        return false;
      }
    }).toList();

    // suggestions.forEach((element) {
    //   print(element.imagePath);
    // });

    return Container(
      alignment: Alignment.center,
      height: 360,
      decoration: BoxDecoration(
          color: Color(0xffF0F0F0),
        borderRadius: BorderRadius.circular(40),
      ),
      child: Stack(children: [
        // For forms
        // _buildImage("icecream-type"),
        _buildImage(formImage.state),
        _buildImage(bodyImage.state),
        _buildImage(fillerImage.state),
        _buildImage(creamImage.state),
        Positioned(
          bottom: 0,
          left: 0,
          child: Container(
            height: 100,
            width: 400,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: suggestions.length,
                itemBuilder: (context, index) {
                  var imageAsset = suggestions[index];
                  return IconButton(
                    iconSize: 100,
                    onPressed: () {
                      if (imageAsset.formId != null) {
                        dishForm.state = imageAsset.formId!;
                        formImage.state = imageAsset.imagePath;
                      }
                      print(imageAsset.formId);
                    },
                    icon: Image.asset(
                      "assets/${imageAsset.imagePath}.PNG",
                      height: 100,
                    ),
                  );
                }),
          ),
        ),
      ]),
    );
  }

  Widget _buildImage(imageFile) {
    return Image.asset("assets/$imageFile.PNG");
  }
}
