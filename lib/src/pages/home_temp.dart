import 'package:flutter/material.dart';

class HomePageTemp extends StatelessWidget {
  final opciones = ['uno', 'dos', 'tres', 'cuatro'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Componentes Temp'),
      ),
      body: ListView(
        // children: _crearItems(),
        children: _crearItemsCorta(),
      ),
    );
  }

  List<Widget> _crearItems() {
    List<Widget> lista = [];
    for (String opt in opciones) {
      final tempWidget = ListTile(
        title: Text(opt),
      );
      lista
        ..add(tempWidget)
        ..add(Divider(
          height: 20,
        ));
    }
    return lista;
  }

  List<Widget> _crearItemsCorta() => opciones
      .map((String opt) => Column(
            children: [
              ListTile(
                title: Text(opt + '!'),
                subtitle: Text('cualquier cosa'),
                leading: Icon(Icons.access_alarm),
                trailing: Icon(Icons.keyboard_arrow_right),
                onTap: () {},
              ),
              Divider()
            ],
          ))
      .toList();
}
