import 'package:flutter/material.dart';

void main() {
  runApp(
      MaterialApp(
        title: "MovieDB App Test",
        home: new TestMain("test"),
      )
  );
}

class TestMain extends StatefulWidget {
  final String _appBarTitle;
  TestMain(this._appBarTitle, { Key key }) : super(key:key) ;

  @override
  _TestMain createState() => _TestMain(_appBarTitle);
}


class _TestMain extends State<StatefulWidget> {
  final String _appBarTitle;

  _TestMain(this._appBarTitle);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("TTTTT")),
      body: GridView.count(
        // Create a grid with 2 columns. If you change the scrollDirection to
        // horizontal, this would produce 2 rows.
        crossAxisCount: 2,
        // Generate 100 Widgets that display their index in the List
        children: List.generate(100, (index) {
          return Center(
            child: Text(
              'Item $index',
              style: Theme.of(context).textTheme.headline,
            ),
          );
        }),
      ),
    );
  }
}

class MainLayout {
  final BuildContext context2;

  MainLayout(this.context2);


  Widget main = Scaffold(
    appBar: AppBar(title: Text("TTTTT")),
    body: Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          RaisedButton(
            onPressed: () {},
            child: Text("Short"),
          ),
          RaisedButton(
            onPressed: () {},
            child: Text("A bit Longer"),
          ),
          RaisedButton(
            onPressed: () {},
            child: Text("The Longest text button"),
          )
        ],
      ),
    ),
  );

}