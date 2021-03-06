import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import './constants/strings_constants.dart';
import './widgets/common_button.dart';
import './widgets/common_text.dart';
import './widgets/common_text_field.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: StringConstants.APP_NAME,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: StringConstants.APP_NAME),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  String username = "";

  void buttonSubmit() {
    print('username : ${usernameController.text}');
    print('password : ${passwordController.text}');

    setState(() {
      username = usernameController.text;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(widget.title),
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.all(10),
          padding: EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              CommonTextField(StringConstants.USERNAME, usernameController),
              CommonTextField(StringConstants.PASSWORD, passwordController),
              SizedBox(
                height: 20,
              ),
              CommonButton(StringConstants.SUBMIT, buttonSubmit),
              CommonText(username),
              Image(
                image: NetworkImage(
                  'https://picsum.photos/id/237/200/300',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
