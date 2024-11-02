import 'package:unit_6_assignment_fernandez/components/tab_widget_1.dart';
import 'package:unit_6_assignment_fernandez/components/tab_widget_2.dart';
import 'package:flutter/material.dart';

class About_Me extends StatefulWidget {
  const About_Me({super.key});

  @override
  State<About_Me> createState() => _About_MeState();
}

class _About_MeState extends State<About_Me> {
  List<Widget> tabScreens = [TabWidget1(), TabWidget2()];

  List<Widget> tabItems = [
    // Tab widget
    Tab(icon: Icon(Icons.photo_size_select_actual_rounded, color: Colors.blue,), text: "Tab 1"),
    Tab(icon: Icon(Icons.music_note, color: Colors.blue), text: "Tab 2"),
  ];

  @override
  Widget build(BuildContext context) {
    // INSERT CODE HERE!!!!
    // Hint: You need to use the following widgets
    // DefaultTabController, TabBar, Tab and TabBarView
    return DefaultTabController(
        length: tabScreens.length,
        child: Scaffold(
            appBar: AppBar(
              title: const Text("About Me"),
              bottom: TabBar(tabs: tabItems),
            ),
            body: TabBarView(
              children: tabScreens,
            )));
  }
}
