import 'package:flutter/material.dart';

class ButtonCircleIconHome extends StatelessWidget {
  const ButtonCircleIconHome({
    Key? key,
    required this.route,
    required this.icon,
  }) : super(key: key);

  final String route;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: () {
        Navigator.of(context).pushNamed(route);
      },
      elevation: 2.0,
      fillColor: Colors.transparent.withOpacity(0.3),
      padding: const EdgeInsets.all(20.0),
      shape: const CircleBorder(),
      child: Icon(
        icon,
        color: Colors.white,
        size: 40,
      ),
    );
  }
}
