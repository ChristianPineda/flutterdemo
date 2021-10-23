import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _counter = 0;
  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _decrementCounter() {
    setState(() {
      _counter--;
    });
  }

  void _zeroCounter() {
    setState(() {
      _counter = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              "El counter vale:",
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline2,
            ),
          ],
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          const Spacer(),
          Container(
              margin: const EdgeInsets.only(right: 15.0),
              child: FloatingActionButton(
                onPressed: _incrementCounter,
                child: const Icon(Icons.exposure_plus_1),
              )),
          Container(
              margin: const EdgeInsets.only(right: 15.0),
              child: FloatingActionButton(
                onPressed: _decrementCounter,
                child: const Icon(Icons.exposure_minus_1),
              )),
          FloatingActionButton(
            onPressed: _zeroCounter,
            child: const Icon(Icons.exposure_zero),
          ),
        ],
      ),
    );
  }
}