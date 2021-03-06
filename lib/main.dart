// In the name of Allah

import 'package:flutter/material.dart';
import 'profile.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final TextEditingController queryController = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MWX Gravatar Viewer',
      home: Builder(
        builder: (context) => Scaffold(
          appBar: AppBar(
            title: Text('MWX Gravatar Viewer'),
          ),
          body: Center(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: TextField(
                    controller: queryController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Gravatar ID',
                      hintText: 'Enter Gravatar ID Here ...',
                    ),
                  ),
                ),
                ElevatedButton(
                  onPressed: () => Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => Profile(id: queryController.text),
                  )),
                  child: Icon(
                    Icons.search,
                    size: 30,
                  ),
                  style: ButtonStyle(
                    fixedSize: MaterialStateProperty.all(Size(150, 50)),
                  ),
                ),
                Expanded(
                  child: Align(
                    alignment: FractionalOffset.bottomCenter,
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 10),
                            child: ElevatedButton(
                              onPressed: () =>
                                  launchURL('https://mwxgaf.github.io/mgv'),
                              child: Text(
                                'About App',
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.all(Colors.purple),
                                fixedSize:
                                    MaterialStateProperty.all(Size(100, 50)),
                              ),
                            ),
                          ),
                          ElevatedButton(
                            onPressed: () => launchURL('http://mwxgaf.ir/'),
                            child: Text(
                              'About Developer',
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all(Colors.pink),
                              fixedSize:
                                  MaterialStateProperty.all(Size(100, 50)),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
