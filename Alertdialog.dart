import 'package:flutter/material.dart';
import 'package:giffy_dialog/giffy_dialog.dart';

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
      home: MyHomePage(title: 'Text'),
      debugShowCheckedModeBanner: false, // Ini untuk menghilangkan debug overlay
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
      body: Center(
        child: Container(
          color: Colors.red,
          child: MaterialButton(
            child: Text("Alert Dialog"),
            textColor: Colors.white,
            onPressed: () {
              showDialog(
                context: context,
                builder: (_) => NetworkGiffyDialog(
                  image: Image.asset('assets/package_demo.gif'),
                  title: Text(
                    'Men Wearing Jackets',
                    style: TextStyle(
                      fontSize: 22.0,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  description: Text(
                    'This is a men wearing jackets',
                    textAlign: TextAlign.center,
                    style: TextStyle(),
                  ),
                  onOkButtonPressed: () {},
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
