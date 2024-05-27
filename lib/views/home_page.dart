import 'package:flutter/material.dart';
import 'package:ex06_application/components/app_bar_component.dart';
import 'package:ex06_application/components/main_button_component.dart';
import 'package:ex06_application/controllers/number_controller.dart';
import 'package:ex06_application/model/number.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late int _counter;
  late String _numberStatus;

  @override
  void initState() {
    super.initState();
    _counter = Number.instance.getCounter();
    _numberStatus = NumberController.instance.getNumberStatus();
  }

  void _updateCounter() {
    setState(() {
      _counter = Number.instance.getCounter();
      _numberStatus = NumberController.instance.getNumberStatus();
      if (_counter < 0) {
        _showNegativeNumberAlert();
      }
    });
  }

  void _showNegativeNumberAlert() {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text('Número Negativo!'),
          content: const Text('O número não pode ser negativo!'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('OK'),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(
        title: 'App Numérico',
        icon: const Icon(Icons.tag),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Número',
                style: TextStyle(
                  fontSize: 30,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                _counter.toString(),
                style: const TextStyle(
                  fontSize: 80,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Este número é $_numberStatus',
                style: const TextStyle(
                  fontSize: 20,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              mainButton(
                buttonText: '+ 5',
                buttonFunction: () {
                  int newValue = _counter + 5;
                  if (newValue >= 0) {
                    NumberController.instance.increaseFive();
                    _updateCounter();
                  } else {
                    _showNegativeNumberAlert();
                  }
                },
                buttonColor: Colors.green,
                textButtonColor: Colors.white,
              ),
              const SizedBox(
                height: 30,
                width: 10,
              ),
              mainButton(
                buttonText: '- 5',
                buttonFunction: () {
                  int newValue = _counter - 5;
                  if (newValue >= 0) {
                    NumberController.instance.decreaseFive();
                    _updateCounter();
                  } else {
                    _showNegativeNumberAlert();
                  }
                },
                buttonColor: Colors.red,
                textButtonColor: Colors.white,
              ),
              const SizedBox(
                height: 30,
                width: 10,
              ),
              mainButton(
                buttonText: 'x 2',
                buttonFunction: () {
                  int newValue = _counter * 2;
                  if (newValue >= 0) {
                    NumberController.instance.multiplyByTwo();
                    _updateCounter();
                  } else {
                    _showNegativeNumberAlert();
                  }
                },
                buttonColor: Colors.blue,
                textButtonColor: Colors.white,
              ),
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              mainButton(
                buttonText: 'Zerar Número',
                buttonFunction: () {
                  if (_counter != 0) {
                    NumberController.instance.reset();
                    _updateCounter();
                  }
                },
                buttonColor: Colors.orange,
                textButtonColor: Colors.white,
                horizontalPadding: 65,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
