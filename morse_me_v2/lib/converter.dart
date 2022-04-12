import 'package:flutter/material.dart';

class Morse2Text extends StatelessWidget {
  const Morse2Text({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Morse2Text'),
          backgroundColor: Colors.deepOrangeAccent,
        ),
        body: SingleChildScrollView(
          child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(children: <Widget>[
                RawMaterialButton(
                    onPressed: () {},
                    fillColor: Colors.greenAccent,
                    hoverColor: Colors.green,
                    child: const Icon(
                      Icons.circle,
                      color: Colors.white,
                    )),
                RawMaterialButton(
                    onPressed: () {},
                    fillColor: Colors.greenAccent,
                    hoverColor: Colors.green,
                    child: const Icon(
                      Icons.rectangle,
                      color: Colors.white,
                    ))
              ])),
        ));
  }
}

class Text2Morse extends StatelessWidget {
  const Text2Morse({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Text2Morse'),
          backgroundColor: Colors.deepOrangeAccent,
        ),
        body: SingleChildScrollView(
          child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(children: <Widget>[
                TextField(
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.keyboard),
                      hintText: 'Text Input',
                      helperText: 'English Only!',
                      border: OutlineInputBorder()),
                )
              ])),
        ));
  }
}

class ErrorPage extends StatelessWidget {
  const ErrorPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ERROR!!!'),
      ),
      body: Center(
        child: Text('This is an error verification page.'),
      ),
    );
  }
}
