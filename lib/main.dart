import 'dart:ffi';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.red),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'manojpractiseapp'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final number1 = TextEditingController();
  final number2 = TextEditingController();
  int total = 0;
  int? _value = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: const Text('ManoPractiseApp'),
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Radio(
                      value: 1,
                      groupValue: _value,
                      onChanged: (value) {
                        setState(() {
                          _value = value;
                        });
                      }),
                  const SizedBox(
                    width: 10,
                  ),
                  const Text('add'),
                  Radio(
                      value: 2,
                      groupValue: _value,
                      onChanged: (value) {
                        setState(() {
                          _value = value;
                        });
                      }),
                  const SizedBox(
                    width: 10,
                  ),
                  const Text('subtract'),
                  Radio(
                      value: 3,
                      groupValue: _value,
                      onChanged: (value) {
                        setState(() {
                          _value = value;
                        });
                      }),
                  const SizedBox(
                    width: 10,
                  ),
                  const Text('multiply')
                ],
              ),
              TextField(
                controller: number1,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Enter a search term',
                ),
              ),
              TextField(
                controller: number2,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Enter a search term',
                ),
              ),
              SizedBox(
                height: 250,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      total.toString(),
                      style: const TextStyle(
                          fontStyle: FontStyle.italic, fontSize: 30),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
        persistentFooterButtons: [
          ElevatedButton(
              onPressed: () {
                if (_value == 1) {
                  setState(() {
                    total = int.parse(number1.text) + int.parse(number2.text);
                  });
                }
                if (_value == 2) {
                  setState(() {
                    total = int.parse(number1.text) - int.parse(number2.text);
                  });
                }
                if (_value == 3) {
                  setState(() {
                    total = int.parse(number1.text) * int.parse(number2.text);
                  });
                }
              },
              child: const Text('Result'))
        ]);
  }
}
