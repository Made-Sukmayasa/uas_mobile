import 'dart:ui';

import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static const String _title = 'Flutter Code Sample';

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: _title,
      home: MyStatefulWidget(),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static List<Widget> _widgetOptions = <Widget>[
    Column(
      children: [
        Padding(padding: EdgeInsets.only(top: 20.0)),
        const CircleAvatar(
          radius: 70.0,
          backgroundImage: AssetImage("ip.jpg"),
        ),
        Column(
          children: [
            Padding(padding: EdgeInsets.only(top: 20.0)),
            Text(
              'I Made Sukmayasa',
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
            ),
            Text(
              'Student',
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
            ),
            Padding(padding: EdgeInsets.only(top: 30.0)),
            Text(
              'About Me',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25.0),
            ),
            const Padding(padding: EdgeInsets.all(10.0)),
            const Text(
              'Made adalah salah satu dari pejuang kebebasan yang tersisa di bumi ini, made sangatlah ambisius, dengan tipe zodiak api, yang selalu membara kapan pun dimanapun',
              textAlign: TextAlign.justify,
            ),
            Padding(padding: EdgeInsets.all(20.0)),
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      Text(
                        'Skills',
                        style: TextStyle(
                            fontSize: 15.0, fontWeight: FontWeight.bold),
                      ),
                      Row(
                        children: [
                          Text('3'),
                          const Icon(
                            Icons.star,
                            size: 20.0,
                            color: Color.fromARGB(255, 238, 135, 67),
                          ),
                        ],
                      ),
                      Text('HTML'),
                    ],
                  ),
                  Column(
                    children: [
                      Text(
                        'Skills',
                        style: TextStyle(
                            fontSize: 15.0, fontWeight: FontWeight.bold),
                      ),
                      Row(
                        children: [
                          Text('3'),
                          const Icon(
                            Icons.star,
                            size: 20.0,
                            color: Color.fromARGB(255, 238, 135, 67),
                          ),
                        ],
                      ),
                      Text('CSS'),
                    ],
                  ),
                  Column(
                    children: [
                      Text(
                        'Skills',
                        style: TextStyle(
                            fontSize: 15.0, fontWeight: FontWeight.bold),
                      ),
                      Row(
                        children: [
                          Text('1'),
                          const Icon(
                            Icons.star,
                            size: 20.0,
                            color: Color.fromARGB(255, 238, 135, 67),
                          ),
                        ],
                      ),
                      // const Icon(
                      //   Icons.star,
                      //   size: 20.0,
                      //   color: Color.fromARGB(255, 238, 135, 67),
                      // ),
                      Text('Flutter'),
                    ],
                  )
                ],
              ),
            ),
            Padding(padding: EdgeInsets.all(20.0)),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  'Find Me On',
                  style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Padding(padding: EdgeInsets.all(20.0)),
                    const Icon(Icons.facebook),
                    const Text("Facebook"),
                    const Icon(Icons.telegram),
                    const Text('Telegram'),
                    const Icon(Icons.whatsapp),
                    const Text('WhatsApp'),
                    Padding(padding: EdgeInsets.all(20.0))
                  ],
                )
              ],
            ),
          ],
        )
      ],
    ),
    Column(
      children: const <Widget>[
        Expanded(
          child: ListTile(
            leading: CircleAvatar(
              radius: 40.0,
              backgroundImage: AssetImage('leo.jpeg'),
            ),
            title: Text('Leo'),
          ),
        ),
        Expanded(
          child: ListTile(
            leading: CircleAvatar(
              radius: 40.0,
              backgroundImage: AssetImage('gemini.jpeg'),
            ),
            title: Text('Gemini'),
          ),
        ),
        Expanded(
          child: ListTile(
            leading: CircleAvatar(
              radius: 40.0,
              backgroundImage: AssetImage('cancer.jpeg'),
            ),
            title: Text('Cancer'),
          ),
        ),
        Expanded(
          child: ListTile(
            leading: CircleAvatar(
              radius: 40.0,
              backgroundImage: AssetImage('sagitarius.jpeg'),
            ),
            title: Text('Sagitarius'),
          ),
        ),
        Expanded(
          child: ListTile(
            leading: CircleAvatar(
              radius: 40.0,
              backgroundImage: AssetImage('aquarius.jpeg'),
            ),
            title: Text('Aquarius'),
          ),
        ),
        Expanded(
          child: ListTile(
            leading: CircleAvatar(
              radius: 40.0,
              backgroundImage: AssetImage('aries.jpeg'),
            ),
            title: Text('Aries'),
          ),
        ),
        Expanded(
          child: ListTile(
            leading: CircleAvatar(
              radius: 40.0,
              backgroundImage: AssetImage('pisces.jpeg'),
            ),
            title: Text('Pisces'),
          ),
        ),
      ],
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text(
          'Made Best',
          style: TextStyle(color: Colors.black54, fontWeight: FontWeight.bold),
        ),
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.emoji_emotions),
            label: 'Zodiak',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
    );
  }
}
