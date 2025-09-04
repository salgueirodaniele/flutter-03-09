import 'package:appteste/grid_page.dart';
import 'package:appteste/home_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'APP teste',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color.fromARGB(255, 231, 217, 83),
        ),
      ),

      routes: {'/': (context) => HomePage(), '/grid': (context) => GridPage()},
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
        title: Text('titulo', style: TextStyle(color: Colors.deepPurpleAccent)),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 89, 5, 105),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            Text('MENU'),
            ElevatedButton(onPressed: () {}, child: Text('Botao')),
          ],
        ),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'MEU TEXTO',
                style: TextStyle(fontSize: 33.5, color: Colors.blueAccent),
              ),
              Text('segundo texto'),
              SizedBox(height: 20),
              ElevatedButton.icon(
                onPressed: () {},
                icon: Icon(Icons.home),
                label: Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Text('botao'),
                ),
              ),
              SizedBox(height: 20),
              Container(
                height: 100,
                width: 100,
                color: const Color.fromARGB(255, 201, 123, 214),
                child: Center(child: Text('CAIXA')),
              ),
              SizedBox(height: 10),
              SizedBox(
                width: 200,
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
