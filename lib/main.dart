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
    // ignore: prefer_const_constructors
    return MaterialApp(
      // ignore: prefer_const_constructors
      home: Scaffold(
          backgroundColor: const Color.fromRGBO(103, 94, 113, 1.0),
          body: SafeArea(
            child: Center(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                // ignore: prefer_const_constructors
                CircleAvatar(
                  radius: 100.0,
                  backgroundImage: const AssetImage("assets/img/profile.png"),
                  backgroundColor: const Color.fromRGBO(103, 94, 113, 1.0),
                ),
                const Text(
                  "Rafael Schneider",
                  style: TextStyle(
                      fontSize: 40.0,
                      color: Colors.white,
                      fontFamily: "SansPro",
                      fontWeight: FontWeight.bold),
                ),
                const Text(
                  "a flutter Developer",
                  style: TextStyle(
                      fontSize: 30.0,
                      color: Colors.white,
                      fontFamily: "Pacifico"),
                ),
                const SizedBox(
                  height: 20.0,
                  width: 150.0,
                  child: Divider(
                    color: Colors.white,
                  ),
                ),
                // ignore: prefer_const_constructors
                Card(
                  color: Colors.white,
                  margin: const EdgeInsets.symmetric(
                      vertical: 10.0, horizontal: 25.0),
                  // ignore: prefer_const_constructors
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    // ignore: prefer_const_constructors
                    child: ListTile(
                      // ignore: prefer_const_constructors
                      leading: Icon(
                        Icons.phone,
                        color: const Color.fromRGBO(53, 10, 42, 10),
                      ),
                      title: const Text(
                        "+55 85 999845-5897",
                        style: TextStyle(
                            color: Color.fromRGBO(53, 10, 42, 10),
                            fontSize: 20),
                      ),
                    ),
                  ),
                ),
                // ignore: prefer_const_constructors
                Card(
                  color: Colors.white,
                  margin:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 25),
                  // ignore: prefer_const_constructors
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: const ListTile(
                      leading: Icon(
                        Icons.email,
                        color: Color.fromRGBO(53, 10, 42, 10),
                      ),
                      title: Text(
                        "email@email.com",
                        style: TextStyle(
                            fontSize: 20,
                            color: Color.fromRGBO(53, 10, 42, 10)),
                      ),
                    ),
                  ),
                )
              ],
            )),
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
