import 'package:bakecake_app/constants/constants.dart';
import 'package:bakecake_app/model/data/data.type.dart';
import 'package:bakecake_app/screens/top-level.providers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SubOptions extends ConsumerWidget {
  const SubOptions({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final dishOption = ref.watch(dishOptionProvider.state);
    final optionIcons = ref.watch(dishOptionIconProvider.state);
    final dishForm = ref.watch(dishFormProvider.state);
    final dishFiller = ref.watch(dishFillerProvider.state);
    final dishCream = ref.watch(dishCreamProvider.state);


    // Build Image Icon for each dish type
    Widget _buildOption(int index, DishMenu icon) {
      var isSelected = false;
      switch(dishOption.state){
        case DishOptions.OPTION_FORM:
          isSelected = dishForm.state == icon.value;
          break;
        case DishOptions.OPTION_FILLER:
          isSelected =dishFiller.state == icon.value;
          break;
        case DishOptions.OPTION_CREAM:
          isSelected = dishCream.state == icon.value;
          break;
      }
      return GestureDetector(
        onTap: (){
          switch(dishOption.state){
            case DishOptions.OPTION_FORM:
              dishForm.state = icon.value;
              break;
            case DishOptions.OPTION_FILLER:
              dishFiller.state = icon.value;
              break;
            case DishOptions.OPTION_CREAM:
              dishCream.state = icon.value;
              break;
          }
        },
        child: Container(
          height: 70,
          width: 70,
          alignment: Alignment.center,
          child: SizedBox( child: Image.asset("icons/${icon.iconImageFile}", height: 42, width: 42)),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            border: Border.all(
              width: isSelected ? 2 : 1,
              color: isSelected ? const Color(0xFF283157): Color(0xFF2F0F0F0)
            )
          ),
        ),
      );
    }

    final optionIconWidgets = <Widget>[];
    optionIcons.state.asMap().forEach((index, iconInfo) {
      optionIconWidgets.add(_buildOption(index, iconInfo));
    });

    return Container(
      margin: const EdgeInsets.all(8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: optionIconWidgets.toList(),
      ),
    );
  }
}
