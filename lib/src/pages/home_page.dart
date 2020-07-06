import 'package:flutter/material.dart';
import 'package:intro_components/src/providers/menu_providers.dart';
import 'package:intro_components/src/utils/icon_string_util.dart';

import 'alert_page.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Componentes"),
      ),
      body: _lista(),
    );
  }

  Widget _lista() {
    return FutureBuilder(
      future: menuProvider.loadData(),
      initialData: [],
      builder: (context, AsyncSnapshot<List<dynamic>> snapshot) {
        print("builder");
        print(snapshot.data);
        return ListView(
          children: listItems(snapshot.data, context),
        );
      },
    );
  }

  List<Widget> listItems(List<dynamic> data, context) {
    //menuProvider.loadData();
    final List<Widget> options = [];

    data.forEach((element) {
      final widgetTemp = ListTile(
        title: Text(element['texto']),
        leading: getIcon(element['icon']),
        trailing: Icon(
          Icons.keyboard_arrow_right,
          color: Colors.blue,
        ),
        onTap: () {
          /*final route = MaterialPageRoute(builder: (context) {
            return AlertPage();
          });
          Navigator.push(context, route);*/
          Navigator.pushNamed(context, element['ruta']);
        },
      );
      options..add(widgetTemp)..add(Divider());
    });
    return options;
  }
}
