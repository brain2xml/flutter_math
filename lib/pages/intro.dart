import 'package:flutter/material.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: const Text("M A T H")
      ),
      body: Center(
          child: Wrap(
            alignment: WrapAlignment.spaceAround,
            children: [
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/multiply');
                }, 
                child: const Text("Multiply")
                ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/division');
                }, 
                child: const Text("Division")
              ),
            ],
        ),
        ),
      );
  }
}