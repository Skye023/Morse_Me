import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'overview.dart';

class MorseDetail extends StatefulWidget {
  final Info info;
  const MorseDetail({Key? key, required this.info}) : super(key: key);
  @override
  _MorseDetailState createState() {
    return _MorseDetailState();
  }
}

class _MorseDetailState extends State<MorseDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.info.label),
          backgroundColor: Colors.greenAccent,
        ),
        body: SingleChildScrollView(
          child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(children: <Widget>[
                SizedBox(
                    height: 400,
                    width: double.infinity,
                    child: Image(image: AssetImage(widget.info.imgURL))),
                const SizedBox(
                  height: 4,
                ),
                Text(
                  widget.info.info,
                  style: const TextStyle(color: Colors.teal, fontSize: 18),
                ),
              ])),
        ));
  }
}