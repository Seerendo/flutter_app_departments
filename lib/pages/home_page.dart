import 'package:app_departments/components/components.dart';
import 'package:flutter/material.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBar(
        title: 'POST',
      ),
      drawer: Drawer(),
    );
  }
}
