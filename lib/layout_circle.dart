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
                //crossAxisAlignment: CrossAxisAlignment.stretch,
                //crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                //mainAxisAlignment: MainAxisAlignment.center,
                //mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  SizedBox(
                      height: 100.0,
                      width: 100.0,
                      //color: Colors.white,
                      child: Row(
                        children: const <Widget>[
                          Expanded(
                              child: CircleAvatar(
                            radius: 50.0,
                            backgroundColor: Colors.greenAccent,
                            backgroundImage: AssetImage("assets/img/star.png"),
                          )),
                        ],
                      )),
                  SizedBox(
                      height: 100.0,
                      width: 100.0,
                      //color: Colors.white,
                      child: Row(
                        children: const <Widget>[
                          Expanded(
                              child: CircleAvatar(
                            radius: 50.0,
                            backgroundColor: Colors.orangeAccent,
                            backgroundImage: AssetImage("assets/img/star.png"),
                          )),
                        ],
                      )),
                  SizedBox(
                      height: 100.0,
                      width: 100.0,
                      //color: Colors.white,
                      child: Row(
                        children: const <Widget>[
                          Expanded(
                              child: CircleAvatar(
                            radius: 50.0,
                            backgroundColor: Colors.redAccent,
                            backgroundImage: AssetImage("assets/img/star.png"),
                          )),
                        ],
                      )),
                  SizedBox(
                      height: 100.0,
                      width: 100.0,
                      //color: Colors.white,
                      child: Row(
                        children: const <Widget>[
                          Expanded(
                              child: CircleAvatar(
                            radius: 50.0,
                            backgroundColor: Colors.blueAccent,
                            backgroundImage: AssetImage("assets/img/star.png"),
                          )),
                        ],
                      )),
                ]),
          )),
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
