import 'package:flutter/material.dart';

main(List<String> args) {
  return runApp(TapBar());
}

class TapBar extends StatefulWidget {
  @override
  _TapBarState createState() => _TapBarState();
}

class _TapBarState extends State<TapBar> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:Home(),
    );
  }
}
class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text("tabBar widget"),
          bottom: TabBar(
            tabs: [
              Tab(
                icon: Icon(Icons.home),
                text: "Home",
              ),
              Tab(
                icon: Icon(Icons.settings),
                text: "Settings",
              ),
              Tab(
                icon: Icon(Icons.favorite),
                text: "Favorite",
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Center(
              child: Icon(
                Icons.home,
                size: 200,
              ),
            ),
            Center(
              child: Icon(
                Icons.settings,
                size: 200,
              ),
            ),
            Center(
              child: Icon(
                Icons.favorite,
                size: 200,
              ),
            ),

          ],
        ),
      ),
    );
  }
}

