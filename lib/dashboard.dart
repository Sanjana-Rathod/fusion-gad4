import 'package:flutter/material.dart';
import 'layout/compose_file.dart';





class MyDrawer extends StatefulWidget {
  const MyDrawer({super.key});

  @override
  State<MyDrawer> createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: SafeArea(
                child: Column(
              children: [
                const UserAccountsDrawerHeader(
                  decoration:
                      BoxDecoration(color: Color.fromARGB(255, 43, 155, 225)),
                  accountName: Text(
                    "20BCS056",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  accountEmail: Text(
                    "20bcs056@iiitdmj.ac.in",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  currentAccountPicture: CircleAvatar(
                    radius: 60.0,
                    backgroundColor: Color.fromARGB(255, 226, 236, 247),
                    backgroundImage:
                        NetworkImage("Your Photo Url"), // for Network image
                    child: Icon(Icons.person, size: 55),
                  ),
                ),
                ExpansionTile(
                  title: Text(
                    "Modules",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  childrenPadding: EdgeInsets.only(
                    left: 30,
                    bottom: 2,
                  ), //children padding
                  children: [
                    ListTile(
                      title: Text("Academic Module"),
                      onTap: () {
                        //action on press
                      },
                    ),

                    ListTile(
                      title: Text("Programme& Curiculum Module"),
                      onTap: () {
                        //action on press
                      },
                    ),

                    ListTile(
                      title: Text("Gymkhana Module"),
                      onTap: () {
                        //action on press
                      },
                    ),
                    ListTile(
                      title: Text("IWD Module"),
                      onTap: () {
                        //action on press
                      },
                    ),
                    ListTile(
                      title: Text("Library Module"),
                      onTap: () {
                        //action on press
                      },
                    ),
                    ListTile(
                      title: Text("Awards & Scholorship Module"),
                      onTap: () {
                        //action on press
                      },
                    ),
                    ListTile(
                      title: Text("Complaint Module"),
                      onTap: () {
                        //action on press
                      },
                    ),
                    ListTile(
                      title: Text("Central MEss Module"),
                      onTap: () {
                        //action on press
                      },
                    ),
                    ListTile(
                      title: Text("Feeds Module"),
                      onTap: () {
                        //action on press
                      },
                    ),
                    ListTile(
                      title: Text("Health Center Module"),
                      onTap: () {
                        //action on press
                      },
                    ),
                    ListTile(
                      title: Text("Leave Module"),
                      onTap: () {
                        //action on press
                      },
                    ),
                    ListTile(
                      title: Text("Counselling Cell Module"),
                      onTap: () {
                        //action on press
                      },
                    ),
                    ListTile(
                      title: Text("Placement Module"),
                      onTap: () {
                        //action on press
                      },
                    ),
                    ListTile(
                      title: Text("Purchase & Store Module"),
                      onTap: () {
                        //action on press
                      },
                    ),
                    ListTile(
                      title: Text("Visitor Hostel Module"),
                      onTap: () {
                        //action on press
                      },
                    ),
                    ListTile(
                      title: Text("Hostel Module"),
                      onTap: () {
                        //action on press
                      },
                    ),
                    ListTile(
                      title: Text("File Tracking"),
                      onTap: () {
                        //action on press
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => MobileScaffold(),
                          ),
                        );
                      },
                    ),

                    //more child menu
                  ],
                ),

                // ExpansionTile(
                // title: Text("Parent Category 2"), //add icon
                // childrenPadding: EdgeInsets.only(left:30), //children padding
                // children: [
                ListTile(
                  title: Text(
                    "Dean Students",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                  onTap: () {
                    //action on press
                  },
                ),
                ListTile(
                  title: Text(
                    "Dean Academics",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                  onTap: () {
                    //action on press
                  },
                ),
                ListTile(
                  title: Text(
                    "Director Office",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                  onTap: () {
                    //action on press
                  },
                ),
                ListTile(
                  title: Text(
                    "Office OF HOD",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                  onTap: () {
                    //action on press
                  },
                ),
                ListTile(
                  title: Text(
                    "Office OF Registrar",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                  onTap: () {
                    //action on press
                  },
                ),

                ListTile(
                  title: Text(
                    "Finance and Accounts",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                  onTap: () {
                    //action on press
                  },
                ),

                //more child menu
              ],
            ))));
  }
}
