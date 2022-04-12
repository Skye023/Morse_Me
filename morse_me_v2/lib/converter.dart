import 'dart:developer';

import 'package:flutter/material.dart';

List<String> MorseCode = [
  '._',
  '_...',
  '_._.',
  '_..',
  '.',
  '.._.',
  '__.',
  '....',
  '..',
  '.___',
  '_._',
  '._..',
  '__',
  '_.',
  '___',
  '.__.',
  '__._',
  '._.',
  '...',
  '_',
  '.._',
  '..._',
  '.__',
  '_.._',
  '_.__',
  '__..',
  '_____',
  '.____',
  '..___',
  '...__',
  '...._',
  '.....',
  '_....',
  '__...',
  '___..',
  '____.',
  '......'
];
String a = '';
String b = '';
String _result = '';

void M2T() {
  log(a);
  _result = '';
  List<String> tmp = a.split(' ');
  log(tmp.toString());
  for (int i = 0; i < tmp.length; i++) {
    log(i.toString() + ' : ' + tmp[i]);
    for (int j = 0; j < MorseCode.length; j++) {
      log('j: ' + j.toString());
      if (tmp[i].compareTo(MorseCode[MorseCode.length - 1]) == 0) {
        _result += ' ';
        break;
      } else if (j < 26 && (tmp[i].compareTo(MorseCode[j]) == 0)) {
        log('c ' +
            j.toString() +
            ' ' +
            'a'.codeUnitAt(0).toString() +
            ' ' +
            String.fromCharCode(j + 'a'.codeUnitAt(0)));
        _result += String.fromCharCode(j + 'a'.codeUnitAt(0));
        break;
      } else if (j >= 26 && (tmp[i].compareTo(MorseCode[j]) == 0)) {
        log('n ' +
            j.toString() +
            ' ' +
            '0'.codeUnitAt(0).toString() +
            ' ' +
            String.fromCharCode(j + '0'.codeUnitAt(0)));
        _result += String.fromCharCode(j + '0'.codeUnitAt(0) - 26);
        break;
      }
    }
  }
  log('result: ' + _result);
}

void T2M() {
  _result = '';
  b = b.toLowerCase();
  for (int i = 0; i < b.length; i++) {
    if (b[i] == ' ') {
      _result += '/';
    } else {
      if (b.codeUnitAt(i) - 'a'.codeUnitAt(0) >= 0) {
        _result += MorseCode[b.codeUnitAt(i) - 'a'.codeUnitAt(0)];
      } else {
        _result += MorseCode[b.codeUnitAt(i) - 'a'.codeUnitAt(0) + 49 + 26];
      }
    }
    _result += ' ';
  }
}

class Morse2Text extends StatefulWidget {
  const Morse2Text({Key? key}) : super(key: key);

  @override
  _Morse2Text createState() => _Morse2Text();
}

class _Morse2Text extends State<Morse2Text> {
  @override
  Widget build(BuildContext context) {
    String _text = a;
    String _textResult = _result;
    void _doSth(int i) {
      if (i == -1) {
        a += ' ';
      } else if (i == 0) {
        a += '.';
      } else if (i == 1) {
        a += '_';
      } else if (i == 2) {
        a = a.substring(0, a.length - 1);
      } else if (i == 3) {
        M2T();
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
              height: 10.0,
            ),
            Text(
              _textResult,
              style: const TextStyle(
                  fontSize: 22.0,
                  fontWeight: FontWeight.w700,
                  color: Colors.teal),
            ),
            const SizedBox(
              height: 30.0,
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
            Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
              RawMaterialButton(
                onPressed: () {
                  log('|_|');
                  if (a.isNotEmpty) {
                    _doSth(-1);
                  }
                },
                constraints: BoxConstraints.tight(const Size(150, 80)),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0)),
                fillColor: Colors.yellowAccent,
                hoverColor: Colors.yellow,
                child: const Icon(
                  Icons.space_bar_rounded,
                  size: 50.0,
                  color: Colors.white,
                ),
              ),
              const SizedBox(
                width: 60,
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
            ]),
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
              constraints: BoxConstraints.tight(const Size(200, 80)),
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
            ),
            const SizedBox(
              height: 20.0,
            ),
            RawMaterialButton(
              onPressed: () {
                log('clear');
                a = '';
                _result = '';
                setState(() {});
              },
              constraints: BoxConstraints.tight(const Size(150, 80)),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0)),
              fillColor: Colors.red,
              hoverColor: Colors.red[800],
              child: const Text(
                'CLEAR',
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
                      helperText: 'English Character(s) Only!',
                      border: OutlineInputBorder()),
                ),
                const SizedBox(
                  height: 10,
                ),
                ElevatedButton(
                    onPressed: () {
                      b = _controller.text;
                      T2M();
                      setState(() {});
                    },
                    style: _buttonStyle,
                    child: const Text('CONVERT')),
                const SizedBox(
                  height: 40,
                ),
                Text(
                  'Text: ' + b,
                  style: const TextStyle(
                      fontWeight: FontWeight.w900,
                      fontSize: 20.0,
                      color: Colors.blueGrey),
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  'Morse Code: ' + _result,
                  style: const TextStyle(
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
