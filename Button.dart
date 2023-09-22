import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dickya Hidayah',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch(
          primarySwatch: Colors.deepPurple,
        ).copyWith(secondary: Colors.deepPurpleAccent),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Button'),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatelessWidget {
  final String title;

  const MyHomePage({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Column(
        children: <Widget>[
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: Colors.amber,
            ),
            onPressed: () {},
            child: Text("Elevated Button"),
          ),
          TextButton(
            style: TextButton.styleFrom(
              backgroundColor: Colors.lime,
            ),
            onPressed: () {},
            child: Text("Text Button"),
          ),
          TextButton(
            style: TextButton.styleFrom(
              backgroundColor: Colors.lightGreenAccent,
            ),
            onPressed: () {},
            child: Text("Text Button"),
          ),
        ],
      ),
    );
  }
}
