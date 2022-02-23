import 'package:bakecake_app/constants/constants.dart';
import 'package:bakecake_app/screens/top-level.providers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class Canvas extends ConsumerWidget {
  const Canvas({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final dishForm = ref.watch(dishFormOptionProvider.state);
    final dishOption = ref.watch(dishOptionProvider.state);
    final bodyImage = ref.watch(imageBodyProvider.state);
    final fillerImage = ref.watch(imageFillerProvider.state);
    final creamImage = ref.watch(imageCreamProvider.state);

    final suggestions = images.where((image) {
      if (dishOption.state == Constants.OPTION_BODY) {
        return image.optionId == Constants.OPTION_FORM;
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
      child: Stack(children: [
        // For forms
        // _buildImage("icecream-type"),
        _buildImage(bodyImage.state),
        _buildImage(fillerImage.state),
        _buildImage(creamImage.state),
        Positioned(
          top: 0,
          right: 0,
          child: Container(
            height: 360,
            width: 120,
            child: ListView.builder(
                scrollDirection: Axis.vertical,
                itemCount: suggestions.length,
                itemBuilder: (context, index) {
                  var imageAsset = suggestions[index];
                  return GestureDetector(
                    onTap: () {
                      if (imageAsset.formId != null) {
                        dishForm.state = imageAsset.formId!;
                      }
                      print(imageAsset.formId);
                    },
                    child: Image.asset("assets/${imageAsset.imagePath}.PNG"),
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
