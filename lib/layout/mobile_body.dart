import 'package:flutter/material.dart';
import '../constants.dart';
import '../util/my_box.dart';
import '../util/my_tile.dart';
import '../layout/mobile_page2.dart';

class MobileScaffold extends StatefulWidget {
  const MobileScaffold({Key? key}) : super(key: key);

  @override
  State<MobileScaffold> createState() => _MobileScaffoldState();
}

class _MobileScaffoldState extends State<MobileScaffold> {
  //use this controller to get what the user has typed
  final _textController = TextEditingController();
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
      appBar: myAppBar,
      drawer: myDrawer,
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // compose file dropdown

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

            //title box
            Text(
              'Title',
              style: TextStyle(fontSize: 17),
            ),

            const SizedBox(height: 8),
            TextField(
              controller: _textController,
              decoration: InputDecoration(
                  hintText: 'Title',
                  border: const OutlineInputBorder(),
                  suffixIcon: IconButton(
                    onPressed: () {
                      // clear what's currently in the text box
                      _textController.clear();
                    },
                    icon: Icon(Icons.clear),
                  )),
            ),

            const SizedBox(height: 25),

            //description box
            Text(
              'Description',
              style: TextStyle(fontSize: 17),
            ),

            const SizedBox(height: 10),
            TextField(
              controller: _textController,
              decoration: InputDecoration(
                  hintText: 'Description',
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

            // create box
            Text(
              'Create As',
              style: TextStyle(fontSize: 17),
            ),

            const SizedBox(height: 10),
            TextField(
              controller: _textController,
              decoration: InputDecoration(
                  hintText: 'Create As',
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

            // attach file
            Text(
              'Attach Files(Maximum Size: 10MB)',
              style: TextStyle(fontSize: 17),
            ),

            const SizedBox(height: 10),
            MaterialButton(
              onPressed: () {},
              color: Colors.blue,
              child: const Text(
                'Choose File',
                style: TextStyle(color: Colors.white),
              ),
            ),

            const SizedBox(height: 30),

            // remarks
            Text(
              'Remarks',
              style: TextStyle(fontSize: 17),
            ),

            const SizedBox(height: 10),
            TextField(
              controller: _textController,
              decoration: InputDecoration(
                  hintText: 'Remarks',
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

            //save to drafts & next

            Row(children: <Widget>[
              Expanded(
                child: Padding(
                    padding: const EdgeInsets.fromLTRB(0, 0, 130, 0),
                    child: MaterialButton(
                        onPressed: () {},
                        color: Colors.blue,
                        child: Text(
                          "Save Draft",
                          style: TextStyle(color: Colors.white),
                        ))),
              ),
              Expanded(
                child: Padding(
                    padding: const EdgeInsets.fromLTRB(130, 0, 0, 0),
                    child: MaterialButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const SecondRoute()));
                        },
                        color: Colors.blue,
                        child: Text(
                          "Next",
                          style: TextStyle(color: Colors.white),
                        ))),
              )
            ]),
          ],
        ),
      ),
    );
  }
}
