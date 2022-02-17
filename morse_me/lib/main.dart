import 'package:flutter/material.dart';
import 'overview.dart';
import 'detail.dart';

void main() {
  runApp(const Morse_Me());
}

class Morse_Me extends StatelessWidget {
  const Morse_Me({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = ThemeData();
    return MaterialApp(
      title: 'Morse Me!',
      theme: theme.copyWith(
        colorScheme: theme.colorScheme.copyWith(
          primary: Colors.black,
          secondary: Colors.yellow,
        ),
      ),
      home: const MyHomePage(title: 'Morse Me!'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: SafeArea(
        child: ListView.builder(
          itemCount: Info.inf.length,
          itemBuilder: (BuildContext context, int index) {
            return GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return MorseDetail(info: Info.inf[index]);
                  }));
                },
                child: buildInfoCard(Info.inf[index]));
          },
        ),
      ),
    );
  }

  Widget buildInfoCard(Info info) {
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
}
