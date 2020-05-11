import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/basic.dart';
import 'package:flutter/src/widgets/container.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
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
          // This makes the visual density adapt to the platform that you run
          // the app on. For desktop platforms, the controls will be smaller and
          // closer together (more dense) than on mobile platforms.
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: Scaffold(
          appBar: AppBar(
            title: Text("What's Your Luck",
                style: TextStyle(color: Colors.red[700])),
            backgroundColor: Colors.yellow[600],
            centerTitle: true,
          ),
          body: HomePage(),
        ));
  }
}

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int firstDie = 1;
  int secondDie = 1;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        color: Colors.blueGrey[300],
        height: double.infinity,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RaisedButton(
              child: Text(
                '$firstDie',
                style: TextStyle(color: Colors.red[700], fontSize: 42),
              ),
              onPressed: () {
                setState(() {
                  firstDie = 3;
                });
              },
            ),
            SizedBox(width: 128),
            RaisedButton(
              child: Text(
                '$secondDie',
                style: TextStyle(color: Colors.red[700], fontSize: 42),
              ),
              onPressed: () {
                setState(() {
                  secondDie = 6;
                });
              },
            )
          ],
        ),
      ),
    );
  }
}
