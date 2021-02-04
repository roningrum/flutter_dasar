import 'package:flutter/material.dart';
import 'package:flutter_dasar/page_ketiga.dart';

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
        primarySwatch: Colors.green,
        // This makes the visual density adapt to the platform that you run
        // the app on. For desktop platforms, the controls will be smaller and
        // closer together (more dense) than on mobile platforms.
      ),
      home: PageUtama(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class PageUtama extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: new Center(
          child: Column(
            children: <Widget>[
              MaterialButton(
                  onPressed: () {
                    //seperti intent di android
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => PagePertama()));
                  }, child: Text('Page Pertama'),
                  color: Colors.lightGreen,
                  textColor: Colors.white),
              MaterialButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => PageKedua()));
                }, child: Text('Page Kedua'),
                color: Colors.red,
                textColor: Colors.white,),
              MaterialButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => PageKetiga()));
                }, child: Text('Page Ketiga'),
                color: Colors.yellow,
                textColor: Colors.white,)
            ],
          ),
        )
    );
  }
}

class PagePertama extends StatefulWidget {
  @override
  _PagePertamaState createState() => _PagePertamaState();
}

class _PagePertamaState extends State<PagePertama> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: new Text('Halaman Pertama')
      ),
    );
  }
}

class PageKedua extends StatefulWidget {
  @override
  _PageKeduaState createState() => _PageKeduaState();
}

class _PageKeduaState extends State<PageKedua> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: new Text('Halaman Kedua')
      ),
    );
  }
}





