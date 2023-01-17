import 'package:angel_raul_alec_pokedex/model.dart';
import 'package:angel_raul_alec_pokedex/pokemon.dart';
import 'package:angel_raul_alec_pokedex/teamView.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
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
        title: Text(widget.title),
      ),
      body: ListView(
        children: [
          for (Pokemon p in Model().pokedex)
            ListTile(
              title: Row(children: [Text("${p.no}" "\t" "${p.name}")]),
              subtitle:
                  Text("${p.type1.toString()}" "\t" "${p.type2.toString()}"),
            )
        ],
      ),
      drawer: Drawer(
          child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.red,
            ),
            child: Text('Menu'),
          ),
          ListTile(
            title: const Text('Pokédex'),
            onTap: () {
              // Update the state of the app.
              // ...
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const teamView()),
              );
            },
          ),
          ListTile(
            title: const Text('Creador de equipo'),
            onTap: () {
              // Update the state of the app.
              // ...
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const teamView()),
              );
            },
          ),
          ListTile(
            title: const Text('Fakemon'),
            onTap: () {
              // Update the state of the app.
              // ...
            },
          ),
        ],
      )),
    );
  }
}
