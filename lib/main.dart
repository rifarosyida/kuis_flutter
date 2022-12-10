import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final buttonController1 = TextEditingController();

  final buttonController2 = TextEditingController();

  final buttonController3 = TextEditingController();

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('KALKULATOR'),
        ),
        body: Column(children: [
          Container(
              padding: EdgeInsets.all(10),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Nilai 1',
                ),
                keyboardType: TextInputType.number,
                inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                controller: buttonController1,
              )),
          Container(
              padding: EdgeInsets.all(10),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Nilai 2',
                ),
                keyboardType: TextInputType.number,
                inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                controller: buttonController2,
              )),
          Container(
              padding: EdgeInsets.all(10),
              child: TextField(
                readOnly: true,
                enableInteractiveSelection: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Hasil',
                ),
                keyboardType: TextInputType.number,
                inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                controller: buttonController3,
              )),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                margin: const EdgeInsets.all(10.0),
                width: 45,
                height: 45,
                child: TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 241, 101, 194),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  onPressed: () {
                    var buttonController1 =
                        int.parse(this.buttonController1.text);
                    var buttonController2 =
                        int.parse(this.buttonController2.text);
                    // Calculate
                    var result = buttonController1 + buttonController2;
                    // Set value to textfield
                    buttonController3.text = result.toString();
                  },
                  child: Text(
                    "+",
                    style: TextStyle(
                      color: Color(0xffffffff),
                    ),
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.all(10.0),
                width: 45,
                height: 45,
                child: TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 241, 101, 194),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  onPressed: () {
                    var buttonController1 =
                        int.parse(this.buttonController1.text);
                    var buttonController2 =
                        int.parse(this.buttonController2.text);
                    // Calculate
                    var result = buttonController1 - buttonController2;
                    // Set value to textfield
                    buttonController3.text = result.toString();
                  },
                  child: Text(
                    "-",
                    style: TextStyle(
                      color: Color(0xffffffff),
                    ),
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.all(10.0),
                width: 45,
                height: 45,
                child: TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 241, 101, 194),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  onPressed: () {
                    var buttonController1 =
                        int.parse(this.buttonController1.text);
                    var buttonController2 =
                        int.parse(this.buttonController2.text);
                    // Calculate
                    var result = buttonController1 * buttonController2;
                    // Set value to textfield
                    buttonController3.text = result.toString();
                  },
                  child: Text(
                    "x",
                    style: TextStyle(
                      color: Color(0xffffffff),
                    ),
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.all(10.0),
                width: 45,
                height: 45,
                child: TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 241, 101, 194),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  onPressed: () {
                    var buttonController1 =
                        int.parse(this.buttonController1.text);
                    var buttonController2 =
                        int.parse(this.buttonController2.text);
                    // Calculate
                    var result = buttonController1 / buttonController2;
                    // Set value to textfield
                    buttonController3.text = result.toString();
                  },
                  child: Text(
                    "/",
                    style: TextStyle(
                      color: Color(0xffffffff),
                    ),
                  ),
                ),
              ),
            ],
          )
        ]),
      ),
    );
  }
}
