import 'package:flutter/material.dart';
import '../dashboard.dart';

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
      // backgroundColor: defaultBackgroundColor,

      drawer: MyDrawer(),
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'File Tracking',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 30.0,
            // fontStyle: FontStyle.italic,
            // decorationStyle: TextDecorationStyle.wavy,
          ),
        ),
        backgroundColor: Color.fromARGB(255, 96, 132, 211),
      ),
      body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: SafeArea(
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
                      MaterialButton(
                          onPressed: () {},
                          color: Colors.blue,
                          child: Text(
                            "Save To draft",
                            style: TextStyle(color: Colors.white),
                          )),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(120, 0, 0, 0),
                        child: MaterialButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const SecondRoute()));
                            },
                            color: Colors.blue,
                            child: Text(
                              "Next",
                              style: TextStyle(color: Colors.white),
                            )),
                      ),
                    ]),
                  ],
                ),
              ))),
    );
  }
}

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
      drawer: MyDrawer(),
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'File Tracking',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 30.0,
            // fontStyle: FontStyle.italic,
            // decorationStyle: TextDecorationStyle.wavy,
          ),
        ),
        backgroundColor: Color.fromARGB(255, 96, 132, 211),
      ),
      body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: SafeArea(
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

                    const SizedBox(height: 320),

                    //send
                    Padding(
                      padding: const EdgeInsets.fromLTRB(260, 0, 0, 0),
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
              ))),
    );
  }
}
