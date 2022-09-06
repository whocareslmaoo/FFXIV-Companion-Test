import 'package:flutter/material.dart';

import '../button_circle_home.dart';

class columnMain extends StatelessWidget {
  const columnMain({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Stack(
          //usar position
          alignment: Alignment.bottomCenter,
          children: [
            Image.asset(
              'assets/images/yuuki body.jpg',
              fit: BoxFit.cover,
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
            ),
            Positioned(
              top: 70,
              left: 20,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.transparent.withOpacity(0.6),
                  borderRadius: BorderRadius.circular(25),
                ),
                width: 125,
                height: 25,
                child: Row(
                  children: [
                    const SizedBox(width: 10),
                    Icon(
                      Icons.alarm_off_outlined,
                      size: 16,
                      color: const Color.fromARGB(132, 71, 67, 67)
                          .withOpacity(0.9),
                    ),
                    const SizedBox(width: 10),
                    const Text(
                      'Bahamut',
                      style: TextStyle(
                        color: Color.fromARGB(255, 241, 237, 192),
                        fontSize: 12,
                      ),
                    ),
                    const SizedBox(width: 15),
                    Icon(
                      Icons.keyboard_arrow_up,
                      color:
                          const Color.fromARGB(0, 26, 84, 170).withOpacity(0.7),
                    ),
                  ],
                ),
              ),
            ),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: const [
                    ButtonCircleIconHome(
                      icon: Icons.chat,
                      route: '/chat-page',
                    ),
                    ButtonCircleIconHome(
                      icon: Icons.event_available,
                      route: '/events-page',
                    ),
                    ButtonCircleIconHome(
                      icon: Icons.contact_mail_sharp,
                      route: '/contact-page',
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: const [
                    ButtonCircleIconHome(
                      icon: Icons.shopping_bag,
                      route: '/item-page',
                    ),
                    ButtonCircleIconHome(
                      icon: Icons.sell,
                      route: '/sell-page',
                    ),
                    ButtonCircleIconHome(
                      icon: Icons.shopping_cart,
                      route: '/buy-page',
                    ),
                  ],
                ),
                const SizedBox(height: 30),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
