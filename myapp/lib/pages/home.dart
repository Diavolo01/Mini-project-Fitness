import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  static const appTitle = "Let's Workout";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: appTitle,
      home: MyHomePage(title: appTitle),
      theme: ThemeData(primarySwatch: Colors.orange),
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
      drawer: Drawer(
        child: ListView(padding: EdgeInsets.zero, children: [
          const DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
            child: Text("Rule"),
          )
        ]),
      ),
      appBar: AppBar(
        title: Text(MyApp.appTitle),
      ),
      body: Container(
        decoration: BoxDecoration(color: Colors.white),
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                border: Border.all(width: 0.5, color: Colors.grey.shade400),
                color: Colors.grey[200],
              ),
              child: Padding(
                padding: EdgeInsets.all(10),
                child: Row(
                  children: const [
                    Icon(
                      Icons.home,
                    ),
                    Text("Home"),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 5, top: 10, right: 5, bottom: 5),
              child: Container(
                height: 50,
                width: 1000,
                decoration: BoxDecoration(
                    border: Border.all(width: 0.5, color: Colors.black12),
                    color: Colors.blue),
                child: Center(
                  child: Text(
                    "Date",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
            Padding(padding: EdgeInsets.zero),

          ],
        ),
      ),
    );
  }
}
