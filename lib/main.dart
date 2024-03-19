import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';

const firebaseConfig = FirebaseOptions(
  apiKey: "AIzaSyAxshWzSUqafQ3awLfV97UsqoUYjaV_f2s",
  authDomain: "quadrinheitor.firebaseapp.com",
  projectId: "quadrinheitor",
  storageBucket: "quadrinheitor.appspot.com",
  messagingSenderId: "268911224563",
  appId: "1:268911224563:web:8d562d59f3bdf78c8a7986",
  measurementId: "G-F8P1JMD35J",
);

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: firebaseConfig,
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool _automaticFrames = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Quadrinheitor'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text('Nr de quadros'),
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Informe o numero',
              ),
            ),
            Row(
              children: <Widget>[
                Checkbox(
                  value: _automaticFrames,
                  onChanged: (bool? value) {
                    setState(() {
                      _automaticFrames = value ?? false;
                    });
                  },
                ),
                Text('Quadros automáticos'),
              ],
            ),
            SizedBox(height: 8),
            Text('Texto'),
            Container(
              margin: EdgeInsets.symmetric(vertical: 10),
              height: 200,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black),
              ),
            ),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  // Add your onPressed code here!
                },
                child: Text('Processar'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
