import 'package:bakecake_app/constants/constants.dart';
import 'package:bakecake_app/screens/top-level.providers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class Canvas extends ConsumerWidget {
  const Canvas({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final bodyTaste = ref.watch(dishBodyProvider.state);
    final bodyImage = ref.watch(imageBodyProvider.state);
    final fillerImage = ref.watch(imageFillerProvider.state);
    final creamImage = ref.watch(imageCreamProvider.state);
    final formImage = ref.watch(imageFormProvider.state);

    return Container(
      margin: EdgeInsets.only(top: 20),
      alignment: Alignment.center,
      height: 360,
      decoration: BoxDecoration(
        color: Color(0xffF7F7F7),
        borderRadius: BorderRadius.circular(40),
      ),
      child: Stack(fit: StackFit.expand, children: [
        // For forms
        // _buildImage("icecream-type"),
        _buildImage(formImage.state),
        _buildImage(bodyImage.state),
        _buildImage(fillerImage.state),
        _buildImage(creamImage.state),

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
                      bodyTaste.state = index;
                    },
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
