import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp( MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Random random = Random();
  int x = 0 ;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Lottery_App'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(child: Text('Lottery wining number is $x')),
            const SizedBox(height: 20,),
            Container(
              height: 250,
              width: 300,
              decoration: BoxDecoration(
                color: x == 4 ? Colors.teal : Colors.grey.withOpacity(0.3),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: x == 4 ? Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(Icons.done,size: 35,color: Colors.green,),
                    SizedBox(height: 20,),
                    Text('Congratulation you have won the lottery $x\n ',textAlign: TextAlign.center,)

                  ],
                ):
                
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(Icons.error,size: 35,color: Colors.red,),
                    SizedBox(height: 20,),
                    Text('Better luck next time your number is $x\n try again',textAlign: TextAlign.center,)

                  ],
                ),
              ),
            )

          ],

        ),
        floatingActionButton: FloatingActionButton(
          onPressed: (){
            x = random.nextInt(6);
            print(x);
            setState(() {

            });
          },
          child: Icon(Icons.refresh),
        ),
      ),
    );
  }
}

