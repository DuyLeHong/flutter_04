import 'package:flutter/material.dart';

import 'font.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  final TextEditingController _controller = TextEditingController(text: '5354');

  void _incrementCounter() {
    final text = _controller.text;

    print('hoan.dv: text input is $text');

    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: SingleChildScrollView(
        child: Container(
          // color: Colors.amber,
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              const Text(
                'Hello',
                style: TextStyle(
                  fontSize: 16,
                  fontFamily: characterFont,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic,
                  color: Colors.blue,
                ),
              ),
              Text(
                '$_counter',
                style: Theme.of(context).textTheme.headline4,
              ),
              TextButton(
                onPressed: () {
                  print('hoan.dv: press button');
                },
                style: ButtonStyle(
                  shadowColor: MaterialStateProperty.all(Colors.black12),
                ),
                child: const Text('Please press me'),
              ),
              const Icon(
                Icons.add,
                color: Colors.amber,
                size: 30,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
                child: TextField(
                  controller: _controller,
                  keyboardType: TextInputType.number,
                  textAlign: TextAlign.end,
                  obscureText: true,
                  decoration: const InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.amber, width: 5.0),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.red, width: 5.0),
                    ),
                    hintText: 'Mobile Number',
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.only(
                    left: 10, right: 15, top: 10, bottom: 30),
                child: TextField(
                  controller: _controller,
                  keyboardType: TextInputType.number,
                  textAlign: TextAlign.end,
                  obscureText: true,
                  decoration: const InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.amber, width: 5.0),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.red, width: 5.0),
                    ),
                    hintText: 'User Name',
                  ),
                ),
              ),
              Container(
                color: Colors.orange,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: const [
                    TextButton(
                      onPressed: null,
                      child: Text('Button 1'),
                    ),
                    TextButton(
                      onPressed: null,
                      child: Text('Button 2'),
                    ),
                  ],
                ),
              ),
              Stack(
                children: [
                  Padding(
                    padding: EdgeInsets.all(8),
                    child: Image.asset('assets/images/monkey.png'),
                  ),
                  Positioned(
                    left: 30,
                    top: 30,
                    child: Container(
                      width: 100,
                      height: 100,
                      color: Colors.orange,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
