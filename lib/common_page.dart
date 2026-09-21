import 'world_clock.dart';
import 'timer_page.dart';
import 'stopwatch_page.dart';
import 'bedtime_page.dart';
import 'alarm_page.dart';
import 'package:flutter/material.dart';

class AlarmsPage extends StatefulWidget {
  const AlarmsPage({super.key});

  @override
  State<AlarmsPage> createState() => AlarmsPageState();
}

class AlarmsPageState extends State<AlarmsPage> {
  int num = 0;
  String text = "Alarms";
  List<String> tabTitles = [
    "Alarms",
    "World Clock",
    "Timers",
    "Stopwatch",
    "Bedtime",
  ];
  List<Widget> tabWidgets = [
    AlarmPage(),
    WorldClock(),
    TimerPage(),
    StopwatchPage(),
    BedtimePage(),
  ];

  Widget floatingButton() {
    return SizedBox(
      height: 70,
      width: 70,
      child: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.blue.shade300,
        child: Icon(Icons.add, size: 40, color: Colors.white),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(text, style: TextStyle(fontSize: 22)),
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.more_vert))],
      ),
      body: tabWidgets[num],

      bottomNavigationBar: NavigationBar(
        selectedIndex: num,
        destinations: [
          //Alarms
          NavigationDestination(
            icon: Icon(Icons.alarm),
            enabled: true,
            label: "Alarms",
          ),

          //World Clock
          NavigationDestination(
            icon: Icon(Icons.language),
            enabled: true,
            label: "World Clock",
          ),

          //Timers
          NavigationDestination(
            icon: Icon(Icons.hourglass_empty),
            selectedIcon: Icon(Icons.hourglass_bottom),
            enabled: true,
            label: "Timers",
          ),

          //Stopwatch
          NavigationDestination(
            icon: Icon(Icons.timer_sharp),
            enabled: true,
            label: "Stopwatch",
          ),

          //Bedtime
          NavigationDestination(
            icon: Icon(Icons.hotel_outlined),
            enabled: true,
            label: "Bedtime",
          ),
        ],
        onDestinationSelected: (value) {
          setState(() {
            num = value;
            text = tabTitles[num];
          });
        },
      ),
      floatingActionButton: num == 0 ? floatingButton() : num == 1 ? floatingButton() : SizedBox(),
    );
  }
}
