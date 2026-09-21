import 'package:flutter/material.dart';

class WorldClock extends StatefulWidget {
  const WorldClock({super.key});

  @override
  State<WorldClock> createState() => WorldClockState();
}

class WorldClockState extends State<WorldClock> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsetsDirectional.only(start: 12, end: 12),
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "11:48",
              style: TextStyle(fontSize: 100, fontWeight: FontWeight.w300),
            ),
            Column(
              children: [
                SizedBox(height: 50),
                Text("AM", style: TextStyle(fontSize: 23)),
              ],
            ),
          ],
        ),
        SizedBox(height: 20),
        Center(
          child: Text(
            "Thu, Jun 11",
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
          ),
        ),
        Text(
          "Locations",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w300),
        ),
        WorldClockCard(),
        WorldClockCard(),
        WorldClockCard(),
        WorldClockCard(),
        SizedBox(height: 120),
      ],
    );
  }
}

class WorldClockCard extends StatefulWidget {
  const WorldClockCard({super.key});

  @override
  State<WorldClockCard> createState() => WorldClockCardState();
}

class WorldClockCardState extends State<WorldClockCard> {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 7,
      child: Padding(
        padding: EdgeInsets.all(23),
        child: Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Haryana",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w400,
                    color: Colors.blue.shade700,
                  ),
                ),
                SizedBox(height: 5),
                Text(
                  "-0h",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
                ),
              ],
            ),
            Spacer(),
            Text(
              "12:33",
              style: TextStyle(fontSize: 35, fontWeight: FontWeight.w300),
            ),
            Column(
              children: [
                SizedBox(height: 12),
                Text(
                  "PM",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
