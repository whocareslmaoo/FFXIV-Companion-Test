import 'package:flutter/material.dart';

class SellsPage extends StatelessWidget {
  const SellsPage({Key? key}) : super(key: key);
  static const route = '/sell-page';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 25, 25, 29),
      appBar: AppBar(
        title: const Text('Sell Items'),
      ),
      body: Container(),
    );
  }
}
