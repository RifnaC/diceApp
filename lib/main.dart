import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: dice(),
  ));
}

class dice extends StatefulWidget {
  const dice({Key? key}) : super(key: key);

  @override
  State<dice> createState() => _diceState();
}

class _diceState extends State<dice> {
  int leftdice=1;
  int rightdice=1;
  @override

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        centerTitle: true,
        title: Text('Dice App'),
      ),
      backgroundColor: Colors.teal,
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: TextButton(
                  onPressed: () {
                    change();
                  },
                  child: Image.asset(
                    'images/$leftdice.jpeg',
                  )),),
            Expanded(child: TextButton(onPressed: () { change();},
                child: Image.asset(
                  'images/$rightdice.jpeg',
                )))],
        ),
      ),
    );
  }
  void change(){
    leftdice=Random().nextInt(6)+1;
    rightdice=Random().nextInt(6)+1;
    setState(() {
      leftdice;
      rightdice;
    });
  }
}
