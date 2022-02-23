import 'package:bakecake_app/constants/constants.dart';
import 'package:bakecake_app/screens/top-level.providers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:group_button/group_button.dart';

class TypeButtonRow extends ConsumerWidget {
  const TypeButtonRow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final dishType = ref.watch(dishTypeProvider.state);
    final controller = GroupButtonController(
      selectedIndex: dishType.state,
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
      mainGroupAlignment: MainGroupAlignment.center,

    );

    return Container(
      margin: EdgeInsets.only(top: 20),
      child: GroupButton(
        controller: controller,
        options: options,
        isRadio: true,
        onSelected: (index, isSelected) {
          switch (index) {
            case 0:
              {
                dishType.state = Constants.TYPE_CAKE;
                break;
              }
            case 1:
              {
                dishType.state = Constants.TYPE_CUPCAKE;
                break;
              }
            case 2:
              {
                dishType.state = Constants.TYPE_ICECREAM;
                break;
              }
          }
          print("$index isSelected: $isSelected dishType: ${dishType.state}");
        },
        buttons: const ["Торт", "Капкейк", "Мороженное"],
      ),
    );
  }
}
