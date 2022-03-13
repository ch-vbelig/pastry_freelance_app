import 'package:bakecake_app/constants/constants.dart';
import 'package:bakecake_app/screens/top-level.providers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class Canvas extends ConsumerWidget {
  const Canvas({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isDropped = ref.watch(isDroppedProvider.state);
    final dishType = ref.watch(dishTypeProvider.state);
    final dishForm = ref.watch(dishFormProvider.state);
    final dishOption = ref.watch(dishOptionProvider.state);
    final bodyImage = ref.watch(imageBodyProvider.state);
    final fillerImage = ref.watch(imageFillerProvider.state);
    final creamImage = ref.watch(imageCreamProvider.state);
    final formImage = ref.watch(imageFormProvider.state);

    final suggestions = images.where((image) {
      if (dishOption.state == Constants.OPTION_BODY) {
        return image.typeId == dishType.state &&
            image.optionId == Constants.OPTION_FORM;
      } else {
        return false;
      }
    }).toList();


    return Container(
      margin: EdgeInsets.only(top: 20),
      alignment: Alignment.center,
      height: 360,
      decoration: BoxDecoration(
        color: Color(0xffF7F7F7),
        borderRadius: BorderRadius.circular(40),
      ),
      child: Stack(
        fit: StackFit.expand,
          children: [
        // For forms
        // _buildImage("icecream-type"),
        _buildImage(formImage.state),
        _buildImage(bodyImage.state),
        _buildImage(fillerImage.state),
        _buildImage(creamImage.state),
        // Positioned(
        //   top: 0,
        //   right: 0,
        //   child: Draggable(
        //     data: 1,
        //     child:Container(height: 24, width: 24, color: Colors.blue,),
        //     childWhenDragging: Container(height: 24, width: 24, color: Colors.grey,),
        //     feedback: Container(height: 24, width: 24, color: Colors.blue,),
        //   ),
        // ),
        // DragTarget(
        //   builder: (context, accepted, rejected) {
        //     // return Container( height:32, width: 32, color: Colors.black,);
        //     return isDropped.state ? Container(height: 32, width: 32, color: Colors.blue) : Container( height:32, width: 32, color: Colors.black,);
        //   },
        //   onWillAccept: (data){
        //     print('onWillAccept');
        //     return true;
        //   },
        //   onAccept: (data){
        //     print('onAccept');
        //     isDropped.state = true;
        //   },
        // ),

        Positioned(
          top: 0,
          right: 0,
          child: Container(
            width: 50,
            height: 200,
            child: ListView.builder(
                scrollDirection: Axis.vertical,
                itemCount: bodyTastes.length,
                itemBuilder: (context, index) {
                  return IconButton(
                    iconSize: 28,
                    onPressed: () {
                      // if (imageAsset.formId != null) {
                      //   dishForm.state = imageAsset.formId!;
                      //   formImage.state = imageAsset.imagePath;
                      // }
                      // print(imageAsset.formId);
                    },
                    // icon: Icon(Icons.favorite),
                    icon: Image.asset(
                      "icons/${bodyTastes[index].iconImageFile}",
                    ),
                  );
                }),
          ),
        ),
      ]),
    );
  }

  Widget _buildImage(imageFile) {
    return Image.asset("assets/$imageFile");
  }
}
