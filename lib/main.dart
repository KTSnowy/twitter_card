import 'package:flutter/material.dart';

void main() {
  runApp(ProjectLana());
}

class ProjectLana extends StatelessWidget {
  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Project Lana Arts and Software',
      theme: ThemeData(
          brightness: Brightness.dark,
          primaryColor: Color(0xFF222D38),
          accentColor: Color(0xFF222D38),
          scaffoldBackgroundColor: Color(0xFF182028)),
      home: HomePage(title: 'Project Lana Arts and Software'),
    );
  }
}

class HomePage extends StatefulWidget {
  HomePage({required this.title});

  final String title;

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
            Text(
              'Push the button to boop :3',
            ),
            Padding(
              padding: EdgeInsets.all(12.0),
              child: Text('You have booped the button this many times:'),
            ),
            Text(
              '$_counter',
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
