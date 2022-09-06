import 'main_refactory/main_material_app.dart';
import 'package:flutter/material.dart';

import 'main_refactory/main_scaffold.dart';

void main() {
  runApp(
    const materialAppMain(),
  );
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return const scaffoldMain();
  }
}
