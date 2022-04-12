import 'dart:developer';

import 'package:flutter/material.dart';

class Morse2Text extends StatefulWidget {
  const Morse2Text({Key? key}) : super(key: key);

  @override
  _Morse2Text createState() => _Morse2Text();
}

String a = '';

class _Morse2Text extends State<Morse2Text> {
  @override
  Widget build(BuildContext context) {
    String _text = a;
    void _doSth(int i) {
      if (i == 0) {
        a += '.';
      } else if (i == 1) {
        a += '_';
      } else if (i == 2) {
        a = a.substring(0, a.length - 1);
      } else {
        log('error');
      }
      setState(() {});
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
              _text,
              style: const TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.w900,
                  color: Colors.deepPurple),
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
                width: 60,
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
            ]),
            const SizedBox(
              height: 35,
            ),
            RawMaterialButton(
              onPressed: () {
                log('del');
                if (a.isNotEmpty) {
                  _doSth(2);
                }
              },
              constraints: BoxConstraints.tight(const Size(150, 80)),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0)),
              fillColor: Colors.redAccent,
              hoverColor: Colors.red,
              child: const Icon(
                Icons.backspace_outlined,
                size: 50.0,
                color: Colors.white,
              ),
            ),
            const SizedBox(
              height: 40.0,
            ),
            RawMaterialButton(
              onPressed: () {
                log('convert');
                if (a.isNotEmpty) {
                  _doSth(3);
                }
              },
              constraints: BoxConstraints.tight(const Size(150, 80)),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0)),
              fillColor: Colors.lightGreenAccent,
              hoverColor: Colors.lightGreen,
              child: const Text(
                'CONVERT',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold),
              ),
            )
          ]),
        )));
  }
}

class Text2Morse extends StatefulWidget {
  const Text2Morse({Key? key}) : super(key: key);

  @override
  _Text2Morse createState() => _Text2Morse();
}

class _Text2Morse extends State<Text2Morse> {
  @override
  Widget build(BuildContext context) {
    final _controller = TextEditingController();

    @override
    void dispose() {
      _controller.dispose();
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
                      a = _controller.text;
                      T2M();
                      setState(() {});
                    },
                    style: _buttonStyle,
                    child: const Text('CONVERT')),
                const SizedBox(
                  height: 40,
                ),
                const Text(
                  'Text: ',
                  style: TextStyle(
                      fontWeight: FontWeight.w900,
                      fontSize: 20.0,
                      color: Colors.blueGrey),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  'Morse Code:',
                  style: TextStyle(
                      fontWeight: FontWeight.w900,
                      fontSize: 20.0,
                      color: Colors.cyan),
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  _controller.text,
                  style: const TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 20.0,
                      color: Colors.blueGrey),
                )
              ])),
        ));
  }
}

void T2M() {
  print(a);
}

class ErrorPage extends StatelessWidget {
  const ErrorPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ERROR!!!'),
      ),
      body: const Center(
        child: Text('This is an error verification page.'),
      ),
    );
  }
}
