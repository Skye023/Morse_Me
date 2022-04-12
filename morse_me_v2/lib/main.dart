import 'dart:developer';

import 'package:flutter/material.dart';

import 'overview.dart';
import 'detail.dart';
import 'converter.dart';

void main() => runApp(const Morse_Me());

class Morse_Me extends StatelessWidget {
  const Morse_Me({Key? key}) : super(key: key);

  static const String _title = 'Morse Me!';

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
  static const _converterLabel = TextStyle(
      fontSize: 20.0,
      fontWeight: FontWeight.bold,
      color: Colors.deepOrangeAccent);
  static final List<ListView> _widgetOptions = <ListView>[
    ListView.builder(
      itemCount: Info.inf.length,
      itemBuilder: (BuildContext context, int index) {
        return GestureDetector(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return MorseDetail(info: Info.inf[index]);
            }));
          },
          child: buildInfoCard(Info.inf[index]),
        );
      },
    ),
    ListView.builder(
      itemCount: ConvTypy.typ.length,
      itemBuilder: (BuildContext context, int index) {
        return GestureDetector(
          onTap: () {
            if (index == 0) {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const Morse2Text()));
            } else if (index == 1) {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const Text2Morse()));
            } else {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const ErrorPage()));
            }
          },
          child: buildConvertType(ConvTypy.typ[index]),
        );
      },
    ),
  ];

  static Widget buildConvertType(ConvTypy type) {
    return Card(
      elevation: 2.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            Text(
              type.label,
              style: _converterLabel,
            ),
          ],
        ),
      ),
    );
  }

  static Widget buildInfoCard(Info info) {
    return Card(
      elevation: 2.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
      child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(children: <Widget>[
            SizedBox(
              height: 200,
              child: Image(image: AssetImage(info.imgURL)),
            ),
            const SizedBox(
              height: 20.0,
            ),
            Text(
              info.label,
              style: const TextStyle(
                  color: Colors.blueGrey,
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Palatino'),
            )
          ])),
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Morse Me!'),
        backgroundColor: Colors.black,
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.keyboard_outlined),
            label: 'Converter',
          ),
        ],
        backgroundColor: Colors.yellow[400],
        unselectedItemColor: Colors.white,
        selectedFontSize: 16.0,
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.black,
        onTap: _onItemTapped,
      ),
    );
  }
}
