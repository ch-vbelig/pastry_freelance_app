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
      selectedColor: const Color(0xFF283157),
      borderRadius: BorderRadius.circular(16.0),
      unselectedBorderColor: const Color(0xFF283157),
      selectedTextStyle: const TextStyle(
        fontWeight: FontWeight.w400,
        fontSize: 16,
        color: Colors.white,
      ),
      unselectedTextStyle: const TextStyle(
        fontWeight: FontWeight.w400,
        fontSize: 16,
        color: Color(0xFF283157),
      ),
      mainGroupAlignment: MainGroupAlignment.start,
    );

    return Container(
      margin: EdgeInsets.only(top:20),
      child: GroupButton(
        controller: controller,
        options: options,
        isRadio: true,
        onSelected: (index, isSelected) {
          switch (index) {
            case 0:
              {
                dishOption.state = Constants.OPTION_BODY;
                break;
              }
            case 1:
              {
                dishOption.state = Constants.OPTION_FILLER;
                break;
              }
            case 2:
              {
                dishOption.state = Constants.OPTION_CREAM;
                break;
              }
            case 3:
              {
                dishOption.state = Constants.OPTION_STYLE;
                break;
              }
            case 4:
              {
                dishOption.state = Constants.OPTION_DECOR;
                break;
              }
          }
          print("OptionButtons: dishOption: ${dishOption.state} isSelected: $isSelected}");
        },
        buttons: const ["Форма", "Начинка", "Крем", "Стиль", "Украшения", "Ярусы"],
      ),
    );
  }
}
