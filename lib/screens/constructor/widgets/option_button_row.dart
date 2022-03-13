import 'package:bakecake_app/constants/constants.dart';
import 'package:bakecake_app/screens/top-level.providers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:group_button/group_button.dart';

class OptionButtonRow extends ConsumerWidget {
  const OptionButtonRow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final dishOption = ref.watch(dishOptionProvider.state);
    final controller = GroupButtonController(
      selectedIndex: dishOption.state,
    );
    final options = GroupButtonOptions(
      // buttonHeight: 30,
      selectedColor: const Color(0xFF283157),
      borderRadius: BorderRadius.circular(16.0),
      unselectedBorderColor: const Color(0xFF283157),
      selectedTextStyle: const TextStyle(
        fontWeight: FontWeight.w400,
        fontSize: 14,
        color: Colors.white,
      ),
      unselectedTextStyle: const TextStyle(
        fontWeight: FontWeight.w400,
        fontSize: 14,
        color: Color(0xFF283157),
      ),
      mainGroupAlignment: MainGroupAlignment.start,
    );

    return Container(
      margin: EdgeInsets.only(top: 20, left: 24, right: 24),
      child: GroupButton(
        controller: controller,
        options: options,
        isRadio: true,
        onSelected: (index, isSelected) {
          switch (index) {
            case 0:
              {
                dishOption.state = DishOptions.OPTION_FORM;
                break;
              }
            case 1:
              {
                dishOption.state = DishOptions.OPTION_FILLER;
                break;
              }
            case 2:
              {
                dishOption.state = DishOptions.OPTION_CREAM;
                break;
              }
          }
          print(
              "OptionButtons: dishOption: ${dishOption.state} isSelected: $isSelected}");
        },
        buttons: const ["Форма", "Начинка", "Крем"],
      ),
    );
  }
}
