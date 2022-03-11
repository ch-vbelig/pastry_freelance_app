import 'package:bakecake_app/model/data/data.type.dart';
import 'package:bakecake_app/screens/top-level.providers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class DishTypeButtonRow extends ConsumerWidget {
  const DishTypeButtonRow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final dishTypeProviderState = ref.watch(dishTypeProvider.state);
    final imageBodyProviderState = ref.watch(imageBodyProvider.state);
    final imageFillerProviderState = ref.watch(imageFillerProvider.state);
    final imageCreamProviderState = ref.watch(imageCreamProvider.state);
    final imageFormProviderState = ref.watch(imageFormProvider.state);

    // Build Image Icon for each dish type
    Widget _buildOption(int index, DishType dishType, StateController dishTypeProviderState) {
      final bool isSelected = index == dishTypeProviderState.state;
      return GestureDetector(
        onTap: (){
          if (dishTypeProviderState.state != index){
            imageBodyProviderState.state = 'place-holder';
            imageFillerProviderState.state = 'place-holder';
            imageCreamProviderState.state = 'place-holder';
            imageFormProviderState.state = 'place-holder';
          }
          dishTypeProviderState.state = index;

        },
        child: Container(
          height: 70,
          child: Image.asset("icons/${dishType.iconImageName}.png",
            color: isSelected? Colors.white: Colors.black,
          ),
          decoration: BoxDecoration(
            color: isSelected? Color(0xff425FC8): Color(0xffF7F7F7),
            borderRadius: BorderRadius.circular(16),
          ),
        ),
      );
    }

    final dishWidgets = <Widget>[];
    dishTypes.asMap().forEach((index, dishType) {
      dishWidgets.add(_buildOption(index, dishType, dishTypeProviderState));
    });

    return Container(
      margin: const EdgeInsets.all(8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: dishWidgets.toList(),
      ),
    );
  }


}
