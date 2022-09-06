import 'package:flutter/material.dart';

import '../buy_page/buyitems_page.dart';
import '../chat_page/chatPage.dart';
import '../chat_page/friends_chat/falanor_chat.dart';
import '../chat_page/friends_chat/mika_chat.dart';
import '../chat_page/friends_chat/unknow_chat.dart';
import '../contacts_page/contact_page.dart';
import '../event_page/events_page.dart';
import '../items_page/item_page.dart';
import '../login_page.dart';
import '../main.dart';
import '../sell_page/sells_page.dart';
import '../splash/splash_file.dart';

class materialAppMain extends StatelessWidget {
  const materialAppMain({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'FFXIV'),
      title: 'Final Fantasy XIV Companion',
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const SplashFile(),
        '/login-page': (context) => const LoginPage(),
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
    );
  }
}
