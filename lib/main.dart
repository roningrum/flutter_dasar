import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
        // This makes the visual density adapt to the platform that you run
        // the app on. For desktop platforms, the controls will be smaller and
        // closer together (more dense) than on mobile platforms.
      ),
      home: PageTabBar(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class PageTabBar extends StatefulWidget {
  @override
  _PageTabBarState createState() => _PageTabBarState();
}

class _PageTabBarState extends State<PageTabBar>
    with SingleTickerProviderStateMixin {
  TabController tabController;
  int _selectedIndex;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    tabController = new TabController(length: 4, vsync: this);
    _selectedIndex = 0;
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tab Bar Apps"),
        bottom: new TabBar(controller: tabController, tabs: <Widget>[
          new Tab(icon: new Icon(Icons.home)),
          new Tab(icon: new Icon(Icons.dashboard)),
          new Tab(icon: new Icon(Icons.data_usage)),
          new Tab(icon: new Icon(Icons.close))
        ]),
      ),
      body: new TabBarView(controller: tabController, children: <Widget>[
        new HomePage(_selectedIndex),
        new DashBoardPage(_selectedIndex),
        new DataPage(_selectedIndex),
        new ClosePage(_selectedIndex),
      ]),
    );
  }
}

class HomePage extends StatelessWidget {
  final int index;

  HomePage(this.index);

  @override
  Widget build(BuildContext context) {
    return new Center(
      child: new Text('Welcome to Home, index: $index'),
    );
  }
}

class DashBoardPage extends StatelessWidget {
  final int index;

  DashBoardPage(this.index);

  @override
  Widget build(BuildContext context) {
    return new Center(
      child: new Text('Welcome to Dashboard, index: $index'),
    );
  }
}

class DataPage extends StatelessWidget {
  final int index;

  DataPage(this.index);

  @override
  Widget build(BuildContext context) {
    return new Center(
      child: new Text('Welcome to Data, index: $index'),
    );
  }
}

class ClosePage extends StatelessWidget {
  final int index;

  ClosePage(this.index);

  @override
  Widget build(BuildContext context) {
    return new Center(
      child: new Text('Welcome to Close, index: $index'),
    );
  }
}
