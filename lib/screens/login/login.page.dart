import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();

  LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: const Color.fromRGBO(66, 95, 200, 1),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 230,
                child: Stack(
                  children: <Widget>[
                    Positioned(
                      top: -20,
                      right: 0,
                      child: Image.asset(
                        'assets/login/plate.png',
                        height: 220,
                      ),
                    ),
                    Positioned(
                      top: 0,
                      left: 0,
                      child: Image.asset(
                        'assets/login/liane.png',
                        height: 210,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 50),
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(60),
                    topRight: Radius.circular(60),
                  ),
                  color: Colors.white,
                ),
                child: Form(
                  child: Column(
                    children: <Widget>[
                      const Text('Добро пожаловать!',
                          style: TextStyle(
                              fontSize: 32.0,
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.normal)),
                      const SizedBox(
                        height: 40.0,
                      ),
                      const Text(
                        'E-mail:',
                        style: TextStyle(fontSize: 20.0),
                      ),
                      TextFormField(validator: (value) {
                        if (value!.isEmpty)
                          return 'Пожалуйста введите свой Email';

                        String p =
                            "[a-zA-Z0-9+.\_\%-+]{1,256}@[a-zA-Z0-9][a-zA-Z0-9-]{0,64}(.[a-zA-Z0-9][a-zA-Z0-9-]{0,25})+";
                        RegExp regExp = RegExp(p);

                        if (regExp.hasMatch(value)) return null;

                        return 'Это не E-mail';
                      }),
                      const SizedBox(height: 20.0),
                      const Text(
                        'Пароль:',
                        style: TextStyle(fontSize: 20.0),
                      ),
                      TextFormField(
                          obscureText: true,
                          validator: (value) {
                            if (value!.isEmpty)
                              return 'Пожалуйста введите пароль';

                            if (value.length < 6)
                              return 'Пароль слишком короткий';
                          }),
                      const SizedBox(height: 30.0),
                      ElevatedButton(
                        onPressed: () {
                          // if (_formKey.currentState!.validate()) {
                          //   ScaffoldMessenger.of(context)
                          //       .showSnackBar(const SnackBar(
                          //     content: Text('Данные введены верно'),
                          //     backgroundColor: Colors.blue,
                          //   ));
                          // }
                            Navigator.pushNamed(context, "/constructor");
                        },
                        child: const Text(
                          'Войти',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 22,
                          ),
                        ),
                        // color: Color.fromRGBO(66, 95, 200, 1)
                      ),
                      const SizedBox(height: 10.0),
                      GestureDetector(
                        onTap: () => {
                          Navigator.pushNamed(context, "/register")
                        },
                        child: const Text(
                          "Зарегистрироваться",
                          style: TextStyle(fontSize: 16, color: Colors.grey, decoration: TextDecoration.underline),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
