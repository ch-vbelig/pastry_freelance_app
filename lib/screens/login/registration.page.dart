import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class RegistrationPage extends StatelessWidget {
  final _sizeTextBlack = const TextStyle(fontSize: 18.0, color: Colors.black);
  @override
  final _formKey = GlobalKey<FormState>();

  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Form(
            key: _formKey,
            child: ListView(
              physics: BouncingScrollPhysics(),
              padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 60),
              // mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text('Cake-bake',
                    style: TextStyle(
                        fontSize: 55.0,
                        fontFamily: 'Cookie',
                        fontStyle: FontStyle.italic,
                        color: Color.fromRGBO(66, 95, 200, 1))),

                Container(
                  child: TextFormField(
                      decoration: InputDecoration(labelText: "Имя"),
                      keyboardType: TextInputType.name,
                      style: _sizeTextBlack,
                      validator: (value) {
                        if (value!.isEmpty)
                          return 'Пожалуйста введите свое имя';
                      }),
                ),

                Container(
                  child: TextFormField(
                      decoration: InputDecoration(labelText: "Фамилия"),
                      keyboardType: TextInputType.name,
                      style: _sizeTextBlack,
                      validator: (value) {
                        if (value!.isEmpty) return 'Пожалуйста введите фамилию';
                      }),
                ),

                Container(
                  child: TextFormField(
                      decoration: InputDecoration(labelText: "E-mail"),
                      keyboardType: TextInputType.emailAddress,
                      style: _sizeTextBlack,
                      validator: (value) {
                        if (value!.isEmpty)
                          return 'Пожалуйста введите свой Email';

                        String p =
                            "[a-zA-Z0-9+.\_\%-+]{1,256}@[a-zA-Z0-9][a-zA-Z0-9-]{0,64}(.[a-zA-Z0-9][a-zA-Z0-9-]{0,25})+";
                        RegExp regExp = RegExp(p);

                        if (regExp.hasMatch(value)) return null;

                        return 'Это не E-mail';
                      }),
                ),

                Container(
                  child: TextFormField(
                      decoration: InputDecoration(labelText: "Пароль"),
                      obscureText: true,
                      style: _sizeTextBlack,
                      validator: (value) {
                        if (value!.isEmpty) return 'Пожалуйста введите пароль';

                        if (value.length < 6) return 'Пароль слишком короткий';
                      }),
                ),

                Container(
                  child: TextFormField(
                      decoration: InputDecoration(labelText: "Город"),
                      keyboardType: TextInputType.text,
                      style: _sizeTextBlack,
                      validator: (value) {
                        if (value!.isEmpty)
                          return 'Пожалуйста введите название города';
                      }),
                ),

                Container(
                  child: TextFormField(
                      decoration: InputDecoration(labelText: "Улица"),
                      keyboardType: TextInputType.text,
                      style: _sizeTextBlack,
                      validator: (value) {
                        if (value!.isEmpty)
                          return 'Пожалуйста введите название улицы';
                      }),
                ),

                // Container(
                //   child: TextFormField(
                //       decoration: InputDecoration(labelText: "Дом"),
                //       keyboardType: TextInputType.number,
                //       style: _sizeTextBlack,
                //       validator: (value){
                //         if (value!.isEmpty) return 'Пожалуйста введите номер дома';
                //       }),
                // ),
                //
                // Container(
                //   child: TextFormField(
                //       decoration: InputDecoration(labelText: "Квартира"),
                //       keyboardType: TextInputType.number,
                //       style: _sizeTextBlack,
                //       validator: (value){
                //         if (value!.isEmpty) return 'Пожалуйста введите номер квартиры';
                //       }),
                // ),

                Container(
                  child: TextFormField(
                      inputFormatters: [
                        MaskTextInputFormatter(mask: "+# ###-###-##-##")
                      ],
                      decoration: InputDecoration(
                          hintText: "+_ ___-___-__-__",
                          labelText: "Номер телефона"),
                      keyboardType: TextInputType.phone,
                      style: _sizeTextBlack,
                      validator: (value) {
                        if (value!.isEmpty)
                          return 'Пожалуйста введите номер телефона';
                      }),
                ),

                Container(
                  child: TextFormField(
                      decoration: InputDecoration(
                          hintText: "@xxxxx", labelText: "Telegram"),
                      keyboardType: TextInputType.emailAddress,
                      style: _sizeTextBlack,
                      validator: (value) {
                        if (value!.isEmpty)
                          return 'Пожалуйста введите свой Telegram';

                        String p =
                            "@[a-zA-Z0-9][a-zA-Z0-9-]{0,64}(.[a-zA-Z0-9][a-zA-Z0-9-]{0,25})+";
                        RegExp regExp = RegExp(p);

                        if (regExp.hasMatch(value)) return null;

                        return 'Пожалуйста введите свой Telegram c @';
                      }),
                ),

                SizedBox(
                  height: 30.0,
                ),

                RaisedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      Scaffold.of(context).showSnackBar(const SnackBar(
                        content: Text('Данные введены верно'),
                        backgroundColor: Color.fromRGBO(66, 95, 200, 1),
                      ));
                    }
                  },
                  child: const Text(
                    'Зарегистрироваться',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                    ),
                  ),
                  color: const Color.fromRGBO(66, 95, 200, 1),
                )
              ],
            )),
      ),
    );
  }
}
