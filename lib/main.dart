import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(MyApp());
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      systemNavigationBarColor: Colors.red, statusBarColor: Colors.green));
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            MaterialButton(
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (ctx) => Page2(),
                ),
              ),
              child: Container(
                padding: EdgeInsets.all(10),
                height: 38,
                width: 155,
                decoration: BoxDecoration(
                    color: Colors.yellow,
                    borderRadius: BorderRadius.circular(20)),
                child: Text("Second Page"),
              ),
            )
          ],
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

class Page2 extends StatefulWidget {
  Page2({Key? key}) : super(key: key);

  @override
  _Page2State createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  Color statusBarColor = Colors.black;
  Color navigationBarColor = Colors.pink;

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle.light.copyWith(
          systemNavigationBarColor: navigationBarColor,
          statusBarColor: statusBarColor),
      child: SafeArea(
        child: Scaffold(
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  children: [
                    Expanded(child: Container()),
                    MaterialButton(
                      onPressed: () {
                        setState(() {
                          statusBarColor = Colors.yellow;
                        });
                      },
                      child: Container(
                        padding: EdgeInsets.all(10),
                        height: 38,
                        width: 155,
                        decoration: BoxDecoration(
                          color: Colors.yellow,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Text("Yellow Status Bar"),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    MaterialButton(
                      onPressed: () {
                        setState(() {
                          navigationBarColor = Colors.yellow;
                        });
                      },
                      child: Container(
                        padding: EdgeInsets.all(10),
                        height: 38,
                        width: 155,
                        decoration: BoxDecoration(
                          color: Colors.yellow,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Text("Yellow Navigation Bar"),
                      ),
                    ),
                    Expanded(child: Container()),
                  ],
                ),
                //====================
                Row(
                  children: [
                    Expanded(child: Container()),
                    MaterialButton(
                      onPressed: () {
                        setState(() {
                          statusBarColor = Colors.red;
                        });
                      },
                      child: Container(
                        padding: EdgeInsets.all(10),
                        height: 38,
                        width: 155,
                        decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Text("Red Status Bar"),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    MaterialButton(
                      onPressed: () {
                        setState(() {
                          navigationBarColor = Colors.red;
                        });
                      },
                      child: Container(
                        padding: EdgeInsets.all(10),
                        height: 38,
                        width: 155,
                        decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Text("Red Navigation Bar"),
                      ),
                    ),
                    Expanded(child: Container()),
                  ],
                ),
                Row(
                  children: [
                    Expanded(child: Container()),
                    MaterialButton(
                      onPressed: () {
                        setState(() {
                          statusBarColor = Colors.green;
                        });
                      },
                      child: Container(
                        padding: EdgeInsets.all(10),
                        height: 38,
                        width: 155,
                        decoration: BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Text("Green Status Bar"),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    MaterialButton(
                      onPressed: () {
                        setState(() {
                          navigationBarColor = Colors.green;
                        });
                      },
                      child: Container(
                        padding: EdgeInsets.all(10),
                        height: 38,
                        width: 155,
                        decoration: BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Text("Green Navigation Bar"),
                      ),
                    ),
                    Expanded(child: Container()),
                  ],
                ),
                Row(
                  children: [
                    Expanded(child: Container()),
                    MaterialButton(
                      onPressed: () {
                        setState(() {
                          statusBarColor = Colors.grey;
                        });
                      },
                      child: Container(
                        padding: EdgeInsets.all(10),
                        height: 38,
                        width: 155,
                        decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Text("Grey Status Bar"),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    MaterialButton(
                      onPressed: () {
                        setState(() {
                          navigationBarColor = Colors.grey;
                        });
                      },
                      child: Container(
                        padding: EdgeInsets.all(10),
                        height: 38,
                        width: 155,
                        decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Text("Grey Navigation Bar"),
                      ),
                    ),
                    Expanded(child: Container()),
                  ],
                ),
                Row(
                  children: [
                    Expanded(child: Container()),
                    MaterialButton(
                      onPressed: () {
                        setState(() {
                          statusBarColor = Colors.teal;
                        });
                      },
                      child: Container(
                        padding: EdgeInsets.all(10),
                        height: 38,
                        width: 155,
                        decoration: BoxDecoration(
                          color: Colors.teal,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Text("Teal Status Bar"),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    MaterialButton(
                      onPressed: () {
                        setState(() {
                          navigationBarColor = Colors.teal;
                        });
                      },
                      child: Container(
                        padding: EdgeInsets.all(10),
                        height: 38,
                        width: 155,
                        decoration: BoxDecoration(
                          color: Colors.teal,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Center(child: Text("Teal Navigation Bar")),
                      ),
                    ),
                    Expanded(child: Container()),
                  ],
                ),
                MaterialButton(
                  onPressed: () {
                    setState(() {
                      statusBarColor = Colors.black;
                      navigationBarColor = Colors.pink;
                    });
                  },
                  child: Container(
                    padding: EdgeInsets.all(10),
                    height: 38,
                    width: 155,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Text("Reset"),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
