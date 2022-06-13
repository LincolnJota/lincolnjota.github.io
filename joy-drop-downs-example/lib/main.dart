import 'package:flutter/material.dart';
import 'package:joy_dropdowns/joy_dropdowns.dart';

import 'src/models/example_button.dart';

void main() {
  runApp(const MaterialApp(
    home: HomePage(),
  ));
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    List<JoyMenuItem> items = [
      JoyMenuItem(
          icon: const Icon(Icons.abc),
          title: const Text('Category'),
          onTap: () => print('Category')),
      JoyMenuItem(
          icon: const Icon(Icons.access_time_filled),
          title: const Text('About me'),
          onTap: () => print('About me')),
      JoyMenuItem(
          icon: const Icon(Icons.abc),
          title: const Text('Buy now'),
          onTap: () => print('Buy now')),
      JoyMenuItem(
          icon: const Icon(Icons.abc),
          title: const Text('anything'),
          onTap: () => print('anything')),
    ];
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Joy'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Positions',
              style: TextStyle(fontSize: 50),
            ),
            const SizedBox(height: 20),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // LEFT POSITION
                JoyDropDown(
                  overlayHeight: 300,
                  overlayWidth: 250,
                  overlayOffset: const Offset(-5, 0),
                  overlayPosition: JoyOverlayPosition.left,
                  overlayWidget: Container(
                    decoration: const BoxDecoration(
                      color: Colors.red,
                    ),
                    child: SingleChildScrollView(
                      physics: const ScrollPhysics(),
                      child: ListView.builder(
                        shrinkWrap: true,
                        itemCount: 18,
                        itemBuilder: (context, index) {
                          return InkWell(
                            onTap: () {
                              print('$index');
                            },
                            child: ListTile(
                              leading: const Icon(Icons.ac_unit),
                              title: Text('Item $index'),
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                  child: const ExampleButton(
                      text: 'Left Position', color: Colors.red),
                ),
                const SizedBox(width: 20),
                JoyDropDown(
                  overlayHeight: 300,
                  overlayWidth: 250,
                  overlayOffset: const Offset(5, 0),
                  overlayPosition: JoyOverlayPosition.right,
                  overlayWidget: Container(
                    decoration: const BoxDecoration(
                      color: Colors.purple,
                    ),
                    child: SingleChildScrollView(
                      physics: const ScrollPhysics(),
                      child: ListView.builder(
                          shrinkWrap: true,
                          itemCount: 18,
                          itemBuilder: (context, index) {
                            return InkWell(
                              onTap: () {
                                print('$index');
                              },
                              child: ListTile(
                                leading: const Icon(Icons.ac_unit),
                                title: Text('Item $index'),
                              ),
                            );
                          }),
                    ),
                  ),
                  child: const ExampleButton(
                      text: 'Right Position', color: Colors.purple),
                ),
                const SizedBox(width: 20),
                JoyDropDown.list(
                  overlayOffset: const Offset(0, -5),
                  menu: JoyMenu(
                    menuDecoration: BoxDecoration(
                      color: Colors.blue,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.5),
                          blurRadius: 10,
                          spreadRadius: 2,
                        ),
                      ],
                      borderRadius: BorderRadius.circular(10),
                    ),
                    hoverColor: const Color.fromARGB(255, 24, 116, 192),
                    defaultColor: Colors.blue,
                    items: items,
                  ),
                  overlayPosition: JoyOverlayPosition.top,
                  child: const ExampleButton(
                      text: 'Styled Top Position', color: Colors.blue),
                ),
                const SizedBox(width: 20),
                JoyDropDown.list(
                  overlayOffset: const Offset(0, 5),
                  menu: JoyMenu(
                    menuDecoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.5),
                          blurRadius: 10,
                          spreadRadius: 2,
                        ),
                      ],
                      borderRadius: BorderRadius.circular(10),
                    ),
                    hoverColor: Color.fromARGB(255, 0, 116, 104),
                    defaultColor: Colors.teal,
                    items: items,
                  ),
                  overlayPosition: JoyOverlayPosition.bottom,
                  child: const ExampleButton(
                      text: 'Styled Bottom Position', color: Colors.teal),
                ),
              ],
            ),
            const SizedBox(height: 60),
            const Text(
              'or try adding anything xD',
              style: TextStyle(fontSize: 40),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                JoyDropDown(
                  overlayHeight: 200,
                  overlayWidth: 200,
                  overlayOffset: const Offset(0, 5),
                  overlayPosition: JoyOverlayPosition.bottom,
                  overlayWidget: Container(
                    clipBehavior: Clip.hardEdge,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Image.network(
                        'https://c.tenor.com/2roX3uxz_68AAAAM/cat-space.gif',
                        fit: BoxFit.cover,
                        width: 100,
                        height: 100),
                  ),
                  child: const ExampleButton(
                      text: 'Like this', color: Color.fromARGB(255, 4, 52, 92)),
                ),
                const SizedBox(width: 20),
                JoyDropDown(
                  overlayHeight: 200,
                  overlayWidth: 200,
                  overlayOffset: const Offset(0, 5),
                  overlayPosition: JoyOverlayPosition.bottom,
                  overlayWidget: Container(
                    clipBehavior: Clip.hardEdge,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Image.network(
                        'https://magiagifs.com.br/wp-content/uploads/2019/08/gifs-engracados-animais3-1.gif',
                        fit: BoxFit.cover,
                        width: 200,
                        height: 200),
                  ),
                  child: const ExampleButton(
                      text: 'or this',
                      color: Color.fromARGB(255, 180, 127, 108)),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
