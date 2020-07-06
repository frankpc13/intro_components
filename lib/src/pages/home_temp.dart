import 'package:flutter/material.dart';

class HomePageTemp extends StatelessWidget {
  final options = ["Uno", "Dos", "Tres", "Cuatro"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Components Temp"),
      ),
      body: ListView(children: getOptions2()),
    );
  }

  List<Widget> getOptions() {
    var list = List<Widget>();
    final tempWidget = ListTile(title: Text("holas"));
    for (var i = 0; i < options.length; i++) {
      list..add(tempWidget)..add(Divider());
    }
    return list;
  }

  List<Widget> getOptions2() {
    return options.map((item) {
      return Column(
        children: <Widget>[
          ListTile(
            title: Text(item),
            subtitle: Text("By misaki13"),
            leading: Icon(Icons.person),
            trailing: Icon(Icons.arrow_forward_ios),
            onTap: () {},
          ),
          Divider(),
        ],
      );
    }).toList();
  }
}
