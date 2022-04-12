import 'dart:developer';

import 'package:flutter/material.dart';

class Morse2Text extends StatelessWidget {
  const Morse2Text({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    void _doSth(int i) {
      if (i == 0) {

      } else if (i == 1) {
      } else
        print('error');
    }

    return Scaffold(
        appBar: AppBar(
          title: const Text('Morse2Text'),
          backgroundColor: Colors.deepOrangeAccent,
        ),
        body: SingleChildScrollView(
            child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(children: <Widget>[
            Text(
             '.___.._.',
              style: TextStyle(fontSize: 30,fontWeight: FontWeight.w900,color: Colors.deepPurple),
            ),
            const SizedBox(
              height: 25.0,
            ),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
              RawMaterialButton(
                  onPressed: () {
                    log('did');
                    _doSth(0);
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
                  _doSth(1);
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
            ])
          ]),
        )));
  }
}

class Text2Morse extends StatelessWidget {
  const Text2Morse({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _controller = TextEditingController();

    @override
    void dispose() {
      _controller.dispose();
    }

    void T2M(String a) {
      print(a);
    }

    final ButtonStyle _buttonStyle = ElevatedButton.styleFrom(
        primary: Colors.green,
        padding: const EdgeInsets.all(20),
        textStyle: const TextStyle(fontSize: 20));
    return Scaffold(
        appBar: AppBar(
          title: const Text('Text2Morse'),
          backgroundColor: Colors.deepOrangeAccent,
        ),
        body: SingleChildScrollView(
          child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(children: <Widget>[
                TextField(
                  controller: _controller,
                  decoration: const InputDecoration(
                      suffixIcon: Icon(Icons.keyboard),
                      hintText: 'Text Input',
                      helperText: 'English Only!',
                      border: OutlineInputBorder()),
                ),
                const SizedBox(
                  height: 10,
                ),
                ElevatedButton(
                    onPressed: () {
                      T2M(_controller.text);
                    },
                    style: _buttonStyle,
                    child: const Text('CONVERT')),
                const SizedBox(
                  height: 30,
                ),
                TextField(
                  controller: _controller,
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
