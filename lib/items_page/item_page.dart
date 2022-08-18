import 'package:flutter/material.dart';

class ItemPage extends StatelessWidget {
  const ItemPage({Key? key}) : super(key: key);
  static const route = '/item-page';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 25, 25, 29),
      appBar: AppBar(
        title: const Text('Inventory'),
      ),
      body: Row(
        children: [
          Container(
            height: 70,
            width: 410,
            decoration: const BoxDecoration(
              color: Colors.black38,
              borderRadius: BorderRadius.all(
                Radius.circular(40),
              ),
            ),
            child: const Text(
              'Yuuno Sabitsumade',
              style: TextStyle(fontSize: 15, color: Colors.white),
              textAlign: TextAlign.start,
            ),
          ),
        ],
      ),
    );
  }
}
