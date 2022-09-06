import 'package:flutter/material.dart';

import '../drawer_homepage.dart';
import 'main_column.dart';

class scaffoldMain extends StatelessWidget {
  const scaffoldMain({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      endDrawer: const DrawerHomePage(),
      backgroundColor: const Color.fromARGB(255, 10, 10, 10),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text('Yuuki Miyashiya'),
      ),
      body: const SingleChildScrollView(
        child: columnMain(),
      ),
    );
  }
}
