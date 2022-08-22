import 'drawer_homepage.dart';
import 'sell_page/sells_page.dart';
import 'splash/splash_file.dart';
import 'package:flutter/material.dart';
import 'buy_page/buyitems_page.dart';
import 'chat_page/chatPage.dart';
import 'chat_page/friends_chat/falanor_chat.dart';
import 'chat_page/friends_chat/mika_chat.dart';
import 'chat_page/friends_chat/unknow_chat.dart';
import 'contacts_page/contact_page.dart';
import 'event_page/events_page.dart';
import 'items_page/item_page.dart';

// usar auto sized text para ficar de acordo com a tela
//animatedOpacity ou fadeInImage para transparecer os menus circulares
//senha android studio sora killby

void main() {
  runApp(
    MaterialApp(
      theme: ThemeData(fontFamily: 'Myriad'),
      title: 'Final Fantasy XIV Companion',
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const SplashFile(),
        '/home-page': (context) => const HomePage(),
        '/events-page': (context) => const EventsPage(),
        '/item-page': (context) => const ItemPage(),
        '/contact-page': (context) => const ContactPage(),
        '/sell-page': (context) => const SellsPage(),
        '/buy-page': (context) => const BuyitemsPage(),
        '/chat-page': (context) => const ChatPage(),
        '/mika-chat': (context) => const MikaChat(),
        '/falanor-chat': (context) => const FalanorChat(),
        '/unknow-chat': (context) => const UnknowChat(),
      },
    ),
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
    return Scaffold(
      extendBodyBehindAppBar: true,
      endDrawer: const DrawerHomePage(),
      backgroundColor: const Color.fromARGB(255, 10, 10, 10),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text('Yuuki Miyashiya'),
      ),
      body: SingleChildScrollView(
        child: Column(
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
                          color: const Color.fromARGB(0, 26, 84, 170)
                              .withOpacity(0.7),
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
        ),
      ),
    );
  }
}

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
