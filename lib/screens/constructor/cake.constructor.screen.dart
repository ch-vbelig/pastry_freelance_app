import 'package:bakecake_app/screens/constructor/widgets/canvas.dart';
import 'package:bakecake_app/screens/constructor/widgets/dish.type-button.row.dart';
import 'package:bakecake_app/screens/constructor/widgets/option_button_row.dart';
import 'package:bakecake_app/screens/constructor/widgets/sub_option_button_row_new.dart';
import 'package:bakecake_app/screens/constructor/widgets/submit_button.dart';
import 'package:bakecake_app/screens/constructor/widgets/type_button_row.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CakeConstructorPage extends ConsumerWidget {
  const CakeConstructorPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(onPressed: () {  }, icon: Image.asset('icons/cart-icon.png'),),
        ],
        title: Text('Конструктор'),
        centerTitle: true,
        elevation: 0,
      ),
      body: SafeArea(
        child: Column(
          children: [
            DishTypeButtonRow(),
            Expanded(
              child: ListView(
                // padding: const EdgeInsets.only(left: 16, right: 16, bottom: 32),
                children: [
                  // TypeButtonRow(),
                  Canvas(),
                  OptionButtonRow(),
                  SubOptions(),
                  SubmitButton()
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildButtonRow() {
    return Row(
      children: [

      ],
    );
  }
}


