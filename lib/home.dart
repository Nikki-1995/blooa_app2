import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  static final id = 'home';
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text(
            'Home',
          ),
        ),
        body: Column(
          children: [
            Row(
              children: [
                Group('A+'),
                Group('A-'),
              ],
            ),
            Row(
              children: [
                Group('B+'),
                Group('B-'),
              ],
            ),
            Row(
              children: [
                Group('AB+'),
                Group('AB-'),
              ],
            ),
            Row(
              children: [
                Group('O+'),
                Group('O-'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class Group extends StatelessWidget {
  final String group;
  Group(this.group);
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        onTap: () {},
        child: Container(
          decoration: BoxDecoration(color: Colors.red),
          padding: EdgeInsets.all(40),
          child: Text(
            group,
            style: TextStyle(fontSize: 16, color: Colors.white),
          ),
        ),
      ),
    );
  }
}
