import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    myApp(),
  );
}

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  int number = 0;

  void Decrement() {
   setState(() {

       number--;

   });

  }


  void Increment() {
    setState(() {

        number++;

    });
  }

  bool get isEmpty => number == 0 ;
  bool get isFull => number == 20;



  @override
  Widget build(BuildContext context) {




    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text("Contador de Pessoas"),
        backgroundColor: Colors.blue,
      ),
      drawer: Drawer(),
      body: Container(decoration: BoxDecoration(image: DecorationImage(image:AssetImage('Assets/Images/image.jpg'), fit: BoxFit.cover ),),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
             isFull ? "lotado" : "pode Entrar"  ,
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Padding(
                padding: EdgeInsets.all(40),
                child: Text(
                 '$number',
                  style: TextStyle(
                    fontSize: 100,
                    color: Colors.white,
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                    onPressed: isEmpty ? null : Decrement,
                    child: const Text(
                      "saiu",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.w500),
                    ),
                    style: TextButton.styleFrom(
                      backgroundColor: isEmpty? Colors.white.withOpacity(0.2) :  Colors.white,
                      // padding: EdgeInsets.all(32),
                      fixedSize: Size(100, 100),
                      foregroundColor: Colors.blue,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 30,
                  ),
                  TextButton(
                    onPressed:isFull ? null :  Increment,
                    child: const Text(
                      "Entrou",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.w500),
                    ),
                    style: TextButton.styleFrom(
                      backgroundColor: isFull? Colors.white.withOpacity(0.2) :  Colors.white,
                      // padding: EdgeInsets.all(32),
                      fixedSize: Size(100, 100),
                      foregroundColor: Colors.blue,

                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                    ),
                  ),
                ],
              )
            ],
          )),
    );
  }
}



class myApp extends StatelessWidget {
  const myApp({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp( debugShowCheckedModeBanner: false ,home: App());
  }
}

