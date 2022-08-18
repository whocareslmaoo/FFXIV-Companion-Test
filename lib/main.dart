import 'package:flutter/material.dart';
import 'package:flutter_application_1/buy_page/buyitems_page.dart';
import 'package:flutter_application_1/chat_page/chatPage.dart';
import 'package:flutter_application_1/chat_page/friends_chat/falanor_chat.dart';
import 'package:flutter_application_1/chat_page/friends_chat/unknow_chat.dart';
import 'package:flutter_application_1/contacts_page/contact_page.dart';
import 'package:flutter_application_1/event_page/events_page.dart';
import 'package:flutter_application_1/items_page/item_page.dart';
import 'package:flutter_application_1/sell_page/sells_page.dart';
import 'package:flutter_application_1/splash/splash_file.dart';
import 'chat_page/friends_chat/mika_chat.dart';

// usar auto sized text para ficar de acordo com a tela
//animatedOpacity ou fadeInImage para transparecer os menus circulares
//senha android studio sora killby
void main() {
  runApp(
    MaterialApp(
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
      drawer: Drawer(
        backgroundColor: const Color.fromARGB(255, 25, 25, 29),
        child: Column(
          children: [
            Container(
              height: 150,
              width: 500,
              decoration: const BoxDecoration(color: Colors.black54),
              child: Row(
                children: [
                  //alignment: Alignment.centerLeft,
                  CircleAvatar(
                    radius: (26),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(60),
                      child: IconButton(
                          icon: Image.asset("assets/images/yuukiface.jpg"),
                          iconSize: 100,
                          onPressed: () {}

                          // width: 200,
                          // height: 200,
                          ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  const Text(
                    'Yuuki Miyashiya',
                    style: TextStyle(
                      color: (Colors.white),
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      backgroundColor: const Color.fromARGB(255, 10, 10, 10),
      appBar: AppBar(
        title: const Text('Final Fantasy XIV Companion'),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Stack(
              children: [
                Image.asset(
                  'assets/images/yuuki body.jpg',
                  fit: BoxFit.cover,
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height,
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: Wrap(
                      children: [
                        Row(
                          children: [
                            SizedBox(
                                height:
                                    MediaQuery.of(context).size.height / 15),
                            //const SizedBox(width: 15),
                            RawMaterialButton(
                              onPressed: () {
                                Navigator.of(context).pushNamed('/chat-page');
                              },
                              elevation: 2.0,
                              fillColor: Colors.grey.shade700,
                              padding: const EdgeInsets.all(25.0),
                              shape: const CircleBorder(),
                              child: const Icon(
                                Icons.chat_sharp,
                                color: Colors.white,
                                size: 50,
                              ),
                            ),
                            SizedBox(
                                height:
                                    MediaQuery.of(context).size.height / 40),
                            //const SizedBox(width: 40),
                            RawMaterialButton(
                              onPressed: () {
                                Navigator.of(context).pushNamed('/events-page');
                              },
                              elevation: 2.0,
                              fillColor: Colors.grey.shade700,
                              padding: const EdgeInsets.all(25.0),
                              shape: const CircleBorder(),
                              child: const Icon(
                                Icons.event_available,
                                color: Colors.white,
                                size: 50,
                              ),
                            ),
                            SizedBox(
                                height:
                                    MediaQuery.of(context).size.height / 40),
                            //const SizedBox(width: 40),
                            RawMaterialButton(
                              onPressed: () {
                                Navigator.of(context)
                                    .pushNamed('/contact-page');
                              },
                              // elevation: 2.0,
                              fillColor: Colors.grey.shade700,
                              padding: const EdgeInsets.all(25.0),
                              shape: const CircleBorder(),
                              child: const Icon(
                                Icons.contact_mail_sharp,
                                color: Colors.white,
                                size: 50,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                            height: MediaQuery.of(context).size.height / 130),
                        //const SizedBox(height: 130),
                        Row(
                          children: [
                            const SizedBox(width: 15),
                            RawMaterialButton(
                              onPressed: () {
                                Navigator.of(context).pushNamed('/item-page');
                              },
                              elevation: 2.0,
                              fillColor: Colors.grey.shade700,
                              padding: const EdgeInsets.all(25.0),
                              shape: const CircleBorder(),
                              child: const Icon(
                                Icons.shopping_bag,
                                color: Colors.white,
                                size: 50,
                              ),
                            ),
                            SizedBox(
                                height:
                                    MediaQuery.of(context).size.height / 40),
                            //const SizedBox(width: 40),
                            RawMaterialButton(
                              onPressed: () {
                                Navigator.of(context).pushNamed('/sell-page');
                              },
                              elevation: 2.0,
                              fillColor: Colors.grey.shade700,
                              padding: const EdgeInsets.all(25.0),
                              shape: const CircleBorder(),
                              child: const Icon(
                                Icons.sell,
                                color: Colors.white,
                                size: 50,
                              ),
                            ),
                            SizedBox(
                                height:
                                    MediaQuery.of(context).size.height / 40),
                            //const SizedBox(width: 40),
                            RawMaterialButton(
                              onPressed: () {
                                Navigator.of(context).pushNamed('/buy-page');
                              },
                              elevation: 2.0,
                              fillColor: Colors.grey.shade700,
                              padding: const EdgeInsets.all(25.0),
                              shape: const CircleBorder(),
                              child: const Icon(
                                Icons.shopping_cart,
                                color: Colors.white,
                                size: 50,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
