import 'package:flutter/material.dart';
//ephemeral state is always place inside the "State Class"

class MyEphemeral extends StatefulWidget {
  const MyEphemeral({Key? key}) : super(key: key);

  @override
  State<MyEphemeral> createState() => _MyEphemeralState();
}
int _number= 0;
class _MyEphemeralState extends State<MyEphemeral> {
  @override
  Widget build(BuildContext context) {
    void addNum(){
      setState((){
        _number++;
      });
    }
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Ephemeral State'),
        ),
        body: Row(
          children: [
            Center(
              child: IconButton(
                onPressed: (){
               addNum();
                },
                icon: Icon(Icons.add),
              ),
            ),
            Center(
              child: Text('CurrentNumber is: $_number'),
            ),
          ],
        ),
      ),
    );
  }
}


