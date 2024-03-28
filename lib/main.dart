// ignore_for_file: prefer_const_constructors

import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    DevicePreview(
      enabled: true,
      builder: (context) => const MainApp(),
    ),
  );
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: PrincipalView(),
    );
  }
}

class PrincipalView extends StatelessWidget {
  const PrincipalView({super.key});

  //
  // Método para criação dinâmica do Container
  //

  Widget _criarContainer(String texto, Color? cor) {
    return Expanded(
      flex: 1,
      child: Container(
        height: 90.0,
        decoration: BoxDecoration(
          color: cor ?? Colors.blue,
          // border: Border.all(width: 1.0),
        ),
        child: Center(
          child: Text(
            texto,
            style: TextStyle(fontSize: 23.0, color: Colors.white),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'App',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.indigo,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              _criarContainer('A', Colors.blue),
              _criarContainer('B', Colors.blue.shade700),
            ],
          ),
          Expanded(
            child: Container(
              color: Colors.blueGrey,
              child: Center(
                child: Text(
                  'C',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 26.0,
                  ),
                ),
              ),
            ),
          ),
          Row(
            children: [
              _criarContainer('D', Colors.blue),
              _criarContainer('E', Colors.blue.shade700),
            ],
          ),
        ],
      ),
    );
  }
}
