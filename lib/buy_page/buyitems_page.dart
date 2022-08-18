import 'package:flutter/material.dart';

class BuyitemsPage extends StatelessWidget {
  const BuyitemsPage({Key? key}) : super(key: key);
  static const route = '/buy-page';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 25, 25, 29),
      appBar: AppBar(
        title: const Text('Buy Items'),
      ),
      body: Container(),
    );
  }
}
