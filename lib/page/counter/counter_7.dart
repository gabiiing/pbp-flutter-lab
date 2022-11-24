import 'package:flutter/material.dart';
import 'package:counter_7/widgets/drawer/drawer_menu.dart';

class Counter7App extends StatefulWidget {
  const Counter7App({super.key});

  @override
  State<Counter7App> createState() => _Counter7AppState();
}

class _Counter7AppState extends State<Counter7App> {
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
      if (_counter > 0) {}
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
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text("Program Counter"),
      ),
      drawer: DrawerMenu(),
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
                )),
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
