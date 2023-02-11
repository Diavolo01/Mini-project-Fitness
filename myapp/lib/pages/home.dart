import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  static const appTitle = "Let's Workout";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
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
       
        child: Column(children: [
          Container(
            decoration: BoxDecoration(
              border: Border.all(width: 0.5, color: Colors.grey.shade400),
              color: Colors.grey[200],
            ),
            child: Padding(
              padding: EdgeInsets.all(10),
              child: Row(children: const [
                Icon(
                  Icons.home,
                ),
                Text("Home"),
              ]),
            ),
          ),
          Column(children: [
            Container(
              height: 50,
              width: 1000,
              decoration: BoxDecoration(
                  border: Border.all(width: 0.5, color: Colors.black12),
                  color: Colors.blue),
              child: const Center(
                child: Text(
                  "Date",
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
              ),
            ),]
          ),
          Padding(
            padding: EdgeInsets.zero,
            child: Container(
              height: 100,
              width: double.infinity,
              decoration: BoxDecoration(
                  border: Border.all(width: 0.5, color: Colors.grey.shade400),
                  color: Colors.grey.shade200),
              child: Column(
                children: [
                  Table(
                    border: TableBorder.all(),
                    defaultColumnWidth: FixedColumnWidth(100),
                    children: [
                      TableRow(
                        children: [
                          Container(
                            height: 32,
                            child: const Center(
                              child: Text(
                                "No.",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                          Container(
                            height: 32,
                            child: const Center(
                              child: Text(
                                "Time Submit",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                          Container(
                            height: 32,
                            child: const Center(
                              child: Text(
                                "Time Use",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                          Container(
                            height: 32,
                            child: const Center(
                              child: Text(
                                "Name",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(17),
                    child: Row(
                      children: const [
                        Text("<< No Data >>"),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          )
        ]),
      ),
    );
  }
}
