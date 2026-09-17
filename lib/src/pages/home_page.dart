import 'package:flutter/material.dart';
import '../provider/menu_provider.dart';
import '../utils/icon_string_util.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<Widget> _listaitem(List<dynamic> data, BuildContext context) {
    return data
        .map(
          (dat) => Column(
            children: [
              ListTile(
                title: Text(dat['texto']),
                leading: getIcon(dat['icon'], Colors.purple),
                trailing: Icon(Icons.arrow_forward_ios),
                onTap: () {
                  Navigator.pushNamed(context, dat['ruta']);
                },
              ),
              Divider(),
            ],
          ),
        )
        .toList();
  }

  Widget _lista(BuildContext context) {
    return FutureBuilder(
      future: menuProvider.cargarData(),
      builder: (BuildContext context, AsyncSnapshot snapshot) {
        return ListView(children: _listaitem(snapshot.data, context));
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("App Componentes"),
      ),

      body: _lista(context),
    );
  }
}
