import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    myApp(),
  );
}

class myApp extends StatelessWidget {
  const myApp({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(home: TelaPrincipal());
  }
}

class TelaPrincipal extends StatelessWidget {
  const TelaPrincipal({super.key});

  @override
  Widget build(BuildContext context) {
    void Decrement() {
      print("decrment");
    }

    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text("Contador de Pessoas"),
        backgroundColor: Colors.blue,
      ),
      drawer: Drawer(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Pode Entrar",
            style: TextStyle(
              fontSize: 30,
              color: Colors.white,
              fontWeight: FontWeight.w500,
            ),
          ),
          Padding(padding: EdgeInsets.all(40), child: Text(
            "0",
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
                onPressed: Decrement,
                child: const Text(
                  "saiu",
                  style:
                  TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.w500),
                ) ,
                style: TextButton.styleFrom(
                  backgroundColor: Colors.white,
                  // padding: EdgeInsets.all(32),
                  fixedSize: Size(100, 100),
                  foregroundColor: Colors.blue,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ) ,
                    ),
              ), const SizedBox(width: 30,),

              TextButton(
                onPressed: Increment,
                child: const Text(
                  "Entrou",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.w500),
                ),
                style: TextButton.styleFrom(
                  backgroundColor: Colors.white,
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
      ),
    );
  }

  Increment() {
    print("icnrement");
  }
}
