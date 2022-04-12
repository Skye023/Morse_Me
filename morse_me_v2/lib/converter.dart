import 'dart:developer';

import 'package:flutter/material.dart';

class Morse2Text extends StatelessWidget {
  const Morse2Text({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Morse2Text'),
          backgroundColor: Colors.deepOrangeAccent,
        ),
        body: SingleChildScrollView(
          child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    RawMaterialButton(
                        onPressed: () {
                          log('did');
                        },
                        constraints: BoxConstraints.tight(const Size(150, 150)),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0)),
                        fillColor: Colors.greenAccent,
                        hoverColor: Colors.green,
                        child: const Icon(
                          Icons.circle,
                          size: 50.0,
                          color: Colors.white,
                        )),
                    const SizedBox(
                      width: 50,
                    ),
                    RawMaterialButton(
                      onPressed: () {
                        log('dah');
                      },
                      constraints: BoxConstraints.tight(const Size(150, 150)),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0)),
                      fillColor: Colors.greenAccent,
                      hoverColor: Colors.green,
                      child: const Icon(
                        Icons.rectangle,
                        size: 50.0,
                        color: Colors.white,
                      ),
                    )
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
          title: const Text('Text2Morse'),
          backgroundColor: Colors.deepOrangeAccent,
        ),
        body: SingleChildScrollView(
          child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(children: <Widget>[
                const TextField(
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.keyboard),
                      hintText: 'Text Input',
                      helperText: 'English Only!',
                      border: OutlineInputBorder()),
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: const Icon(
                    Icons.transform_rounded,
                    size: 20.0,
                  ),
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
        child: const Text('This is an error verification page.'),
      ),
    );
  }
}
