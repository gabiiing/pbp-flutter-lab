import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Program Counter'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  bool isVisible = false;

  void _incrementCounter() {
    setState(() {
      _counter++;

      if (_counter == 0) {
        isVisible = false;
      }

      if (_counter > 0) {
        isVisible = true;
      }

    });
  }

  void _decrementCounter() {
    setState(() {
        _counter--;

      if (_counter == 0) {
        isVisible = false;
      }

      if (_counter > 0) {
        isVisible = true;
      }
      if (_counter > 0) {
      }
    });
  }

  Text showResult() {
    String data = "GENAP";
    if (_counter % 2 == 0) {
      return Text(
        data,
        style: const TextStyle(color: Colors.red),
      );
    } else {
      data = "GANJIL";
      return Text(
        data,
        style: const TextStyle(color: Colors.blue),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            showResult(),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(left: 30),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Visibility(
              visible: isVisible,
              child: FloatingActionButton(
              onPressed: () {
                _decrementCounter();
              },
              tooltip: 'Decrement',
              child: const Icon(Icons.remove),
            )
            ),
            
            Expanded(child: Container()),
            FloatingActionButton(
              onPressed: () {
                _incrementCounter();
              },
              tooltip: 'Increment',
              child: const Icon(Icons.add),
            )
          ],
        ),
      ),
    );
  }
}
