import 'package:flutter/material.dart';

class ContactPage extends StatelessWidget {
  const ContactPage({Key? key}) : super(key: key);
  static const route = '/contact-page';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 25, 25, 29),
      appBar: AppBar(
        title: const Text('Contacts'),
      ),
      body: Column(
        children: const [
          ListTile(
            leading: Icon(
              Icons.perm_contact_calendar_sharp,
              color: Colors.white,
            ),
            title: Text(
              'Mika Ruru                                          Online',
              textAlign: TextAlign.start,
              style: TextStyle(color: Colors.white),
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.perm_contact_calendar_sharp,
              color: Colors.white,
            ),
            title: Text(
              'Falanor Onkydrasa                           Online',
              textAlign: TextAlign.start,
              style: TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
