import 'package:ex06_application/components/app_bar_component.dart';
import 'package:ex06_application/components/main_button_component.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(
          title: 'App Numérico',
          icon: const Icon(Icons.tag)
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Número',
                style: TextStyle(
                  fontSize: 30
                ),
              ),
            ],
          ),

          SizedBox(
            height: 20,
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                  '30',
                  style: TextStyle(
                    fontSize: 80,
                    fontWeight: FontWeight.bold
                  ),
                ),
            ],
          ),

          SizedBox(
            height: 20,
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                  'Esse número é par',
                  style: TextStyle(
                    fontSize: 20
                  ),
                ),
            ],
          ),

          SizedBox(
            height: 30,
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              mainButton(
                buttonText: '+ 5', 
                buttonFunction:() => print('+5'),
                buttonColor: Colors.green,
                textButtonColor: Colors.white
              ),
              SizedBox(
                height: 30,
                width: 10,
              ),
              mainButton(
                buttonText: '- 5', 
                buttonFunction:() => print('-5'),
                buttonColor: Colors.red,
                textButtonColor: Colors.white
              ),
              SizedBox(
                height: 30,
                width: 10,
              ),
              mainButton(
                buttonText: 'x 2', 
                buttonFunction:() => print('x2'),
                buttonColor: Colors.blue,
                textButtonColor: Colors.white
              ),
            ],
          ),

          SizedBox(
            height: 30,
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              mainButton(
                buttonText: 'Zerar Número', 
                buttonFunction:() => print('x2'),
                buttonColor: Colors.orange,
                textButtonColor: Colors.white,
                horizontalPadding: 65
              ),
            ],
          )

        ],
      ),

    );
  }
}

