import 'package:flutter/material.dart';
import '../mult.dart';


class Multiply extends StatefulWidget {
  const Multiply({super.key});

  @override
  MultiplyState createState() => MultiplyState();
}

class MultiplyState extends State<Multiply> {
  List items = [new Mult()];

  void _incrementCounter() {
    setState(() {
      items.insert(0, new Mult());
    });
  }

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            title: const Text('M A T H | Multiply'),
            leading: IconButton(
                icon: const Icon(Icons.arrow_back),
                iconSize: 30.0,
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
          ),
          body: ListView.builder(
            itemCount: items.length,
            itemBuilder: (context, index) {
              Mult mult = items[index];

              final myController = TextEditingController();
              if (index > 0) {
                myController.text = mult.z.toString();
              }

              return Container(
                margin: const EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                  color: Colors.grey[200], // Set background color
                  borderRadius: BorderRadius.circular(
                      8.0), // Add rounded corners (optional)
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  //mainAxisSize: MainAxisSize.max,
                  children: [
                    Text(mult.x.toString()),
                    const Text(' × '),
                    Text(mult.y.toString()),
                    const Text(' = '),
                    SizedBox(
                      width: 100,
                      height: 60,
                      child: TextField(
                        controller: myController,
                        enabled: index == 0,
                        keyboardType: TextInputType.number,
                        textInputAction: TextInputAction.none,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: myController.text == mult.z.toString()
                                  ? Colors.green
                                  : Colors.red,
                            ),
                          ),
                        ),
                        onSubmitted: (String text) {
                          var value = int.parse(text);
                          if (value != mult.z) {
                            myController.text = "";
                          } else {
                            myController.text = text;
                            _incrementCounter();
                          }
                        },
                      ),
                    )
                  ],
                ),
              );
            },
          ),
        )
      );
  }
}
