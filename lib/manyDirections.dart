import 'package:flutter/material.dart';

void main() {
  runApp(const MyNewApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter Demo',
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyNewApp extends StatelessWidget {
  const MyNewApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: const Center(child: Text("My other app")),
            backgroundColor: Colors.teal[600],
          ),
          backgroundColor: Colors.teal[300],
          body: SafeArea(
            child: Column(
                //verticalDirection: VerticalDirection.down,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                //mainAxisAlignment: MainAxisAlignment.center,
                //mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Container(
                    height: 100.0,
                    width: 100.0,
                    color: Colors.white,
                    child: const Text("Container one"),
                  ),
                  Container(
                    height: 100,
                    width: 100,
                    color: Colors.black,
                    child:
                        const Image(image: AssetImage("assets/img/star.png")),
                  ),
                  Container(
                    width: 100.0,
                    height: 100.0,
                    color: Colors.blueAccent,
                    child: const Text("Second container"),
                  ),
                  Container(
                    width: 100.0,
                    height: 100.0,
                    color: Colors.amber[400],
                    child: const Text("Third Container"),
                  ),
                ]),
          )),
    );
  }
}

/*
Container(
          height: 100.0,
          width: 100.0,
          //margin: const EdgeInsets.symmetric(vertical: 50.0, horizontal: 50.0),
          margin: const EdgeInsets.fromLTRB(50.0, 20.0, 8.0, 0.0),
          padding: const EdgeInsets.all(25.0),
          color: Colors.white,
          child: const Text("Container one"),
*/

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
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
              'This is my second app ok ok --:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
