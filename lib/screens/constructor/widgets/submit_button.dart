import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SubmitButton extends ConsumerWidget {
  const SubmitButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      margin: EdgeInsets.all(20),
      child: TextButton(
          onPressed: () {},
          style: ButtonStyle(
              padding: MaterialStateProperty.all(EdgeInsets.all(12)),
              backgroundColor: MaterialStateProperty.all(Color(0xFF425FC8)),
              foregroundColor: MaterialStateProperty.all(Colors.white)),
          child: Text(
            'Заказать',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w500,
            ),
          )),
    );
  }
}
