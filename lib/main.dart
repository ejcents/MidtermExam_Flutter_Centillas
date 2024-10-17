import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MiddyDiddy(),
    );
  }
}

class MiddyDiddy extends StatefulWidget {
  @override
  _MiddyDiddyState createState() => _MiddyDiddyState();
}

class _MiddyDiddyState extends State<MiddyDiddy> {
  final List<String> items = [
    'Cone Doom',
    'Raw Boost',
    'Shotgun 3 Hits',
    'Tulfone 500gb RAM',
    'iPhone 16 Pro Max',
    'iPhone 2024 Edge',
    'Samsong S23 Ultrasound',
    'Sinbad but Good',
    'Happy but Sad',
    'Yellowpad color green'
  ];
  List<bool> addedItems = List.filled(10, false);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Centillas_EfrenJacob_Midterm'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.builder(
          itemCount: items.length,
          itemBuilder: (context, index) {
            return Card(
              color: addedItems[index] ? Colors.green[200] : Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Text(
                        items[index],
                        style: const TextStyle(fontSize: 18),
                      ),
                    ),
                    Row(
                      children: [
                        ElevatedButton(
                          onPressed: () {
                            print('Details of ${items[index]}');
                          },
                          child: const Text('Details'),
                        ),
                        const SizedBox(width: 10),
                        ElevatedButton(
                          onPressed: () {
                            setState(() {
                              addedItems[index] = true;
                            });
                          },
                          style: ElevatedButton.styleFrom(
                              backgroundColor: addedItems[index]
                                  ? Colors.green
                                  : Colors.blue),
                          child: Text(
                            addedItems[index] ? 'Added' : 'Add',
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}