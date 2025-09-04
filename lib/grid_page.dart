import 'package:appteste/app_drawer.dart';
import 'package:appteste/cliente.dart';
import 'package:flutter/material.dart';

class GridPage extends StatefulWidget {
  const GridPage({super.key});

  @override
  State<GridPage> createState() => _GridPageState();
}

class _GridPageState extends State<GridPage> {
  final clientes = [
    Cliente('Isabelly', 20),
    Cliente('Daniele', 30),
    Cliente('Échilley', 40),
    Cliente('Cristina', 50),
    Cliente('Adrian', 60),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Clientes')),
      drawer: AppDrawer(),
      body: GridView.builder(
        itemCount: clientes.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
        ),
        itemBuilder: (_, int index) => Card(
          child: ListTile(
            title: Text(clientes[index].nome),
            leading: Text(clientes[index].idade.toString()),
            trailing: IconButton(
              onPressed: () {
                setState(() {
                  clientes[index].aniversario();
                });
              },
              icon: Icon(Icons.add),
            ),
          ),
        ),
      ),
    );
  }
}
