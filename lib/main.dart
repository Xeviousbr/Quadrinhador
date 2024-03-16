import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';

// Cria um objeto FirebaseOptions usando as informações do Firebase
// que você obteve do console do Firebase
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
  WidgetsFlutterBinding
      .ensureInitialized(); // Garante que os widgets estão inicializados
  await Firebase.initializeApp(
    options: firebaseConfig,
  ); // Inicializa o Firebase com as opções configuradas
  runApp(const MyApp()); // Executa o aplicativo
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const <Widget>[
            Text(
              'Seu aplicativo Firebase está pronto!',
            ),
          ],
        ),
      ),
    );
  }
}
