import 'package:app_departments/components/components.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: _LoginContainer());
  }
}

class _LoginContainer extends StatelessWidget {
  const _LoginContainer({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Center(
        child: Padding(
      padding: const EdgeInsets.all(20.0),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20), color: Colors.red),
        height: size.height * 0.50,
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Container(
            child: Column(
              children: [
                TextField(),
                TextField(),
                CustomTextButton(
                  function: () {
                    print('object');
                  },
                  backgroundColor: Colors.indigo,
                  width: size.width,
                  height: 36,
                  child: Text('Texto de Prueba'),
                )
              ],
            ),
          ),
        ),
      ),
    ));
  }
}
