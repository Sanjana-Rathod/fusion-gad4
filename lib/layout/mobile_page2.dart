import 'package:flutter/material.dart';
import '../constants.dart';
import '../util/my_box.dart';
import '../util/my_tile.dart';

class SecondRoute extends StatefulWidget {
  const SecondRoute({Key? key}) : super(key: key);

  @override
  State<SecondRoute> createState() => _SecondRouteState();
}

class _SecondRouteState extends State<SecondRoute> {
  get _textController => TextEditingController();

  final List<String> items = [
    'Item1',
    'Item2',
    'Item3',
    'Item4',
  ];
  String? selectedValue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: defaultBackgroundColor,
      appBar: AppBar(
        backgroundColor: appBarColor,
        title: Text('Dashboard'),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            //compose file dropdown
            DropdownButtonHideUnderline(
              child: DropdownButton(
                hint: Text(
                  'Compose File',
                  style: TextStyle(fontSize: 19),
                ),
                items: items
                    .map((item) => DropdownMenuItem<String>(
                          value: item,
                          child: Text(
                            item,
                            style: const TextStyle(
                              fontSize: 14,
                            ),
                          ),
                        ))
                    .toList(),
                value: selectedValue,
                onChanged: (value) {
                  setState(() {
                    selectedValue = value as String;
                  });
                },
              ),
            ),

            const SizedBox(height: 10),

            //forward to
            Text(
              'Forward To',
              style: TextStyle(fontSize: 17),
            ),

            const SizedBox(height: 10),
            TextField(
              controller: _textController,
              decoration: InputDecoration(
                  hintText: 'Forward To',
                  border: const OutlineInputBorder(),
                  suffixIcon: IconButton(
                    onPressed: () {
                      // clear what's currently in the text box
                      _textController.clear();
                    },
                    icon: Icon(Icons.clear),
                  )),
            ),

            const SizedBox(height: 30),

            //reciever's designation
            Text(
              'Recievers Designation',
              style: TextStyle(fontSize: 17),
            ),

            const SizedBox(height: 10),
            TextField(
              controller: _textController,
              decoration: InputDecoration(
                  hintText: 'Recievers Designation',
                  border: const OutlineInputBorder(),
                  suffixIcon: IconButton(
                    onPressed: () {
                      // clear what's currently in the text box
                      _textController.clear();
                    },
                    icon: Icon(Icons.clear),
                  )),
            ),

            const SizedBox(height: 350),

            //send
            Padding(
              padding: const EdgeInsets.fromLTRB(375, 0, 0, 0),
              child: MaterialButton(
                onPressed: () {},
                color: Colors.green,
                child: const Text(
                  'Send',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
