import 'package:flutter/material.dart';

class AlarmPage extends StatefulWidget {
  const AlarmPage({super.key});

  @override
  State<AlarmPage> createState() => _AlarmPageState();
}

class _AlarmPageState extends State<AlarmPage> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.only(right: 12, left: 12),
      children: [
        AlarmCard(),
        AlarmCard(),
        AlarmCard(),
        AlarmCard(),
        AlarmCard(),
        AlarmCard(),
        SizedBox(height: 120),
      ],
    );
  }
}

class AlarmCard extends StatefulWidget {
  const AlarmCard({super.key});

  @override
  State<AlarmCard> createState() => _AlarmCardState();
}

class _AlarmCardState extends State<AlarmCard> {
  bool isON = false;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 7,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
      child: Padding(
        padding: const EdgeInsets.all(18),
        child: Row(
          children: [
            Column(
              children: [
                Text("Not Scheduled", style: TextStyle(fontSize: 15)),
                SizedBox(height: 12),
                Row(
                  children: [
                    TextButton(
                      onPressed: (){
                        Drawer();
                      },
                      child: Text(
                        "06:05",
                        style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ),
                    Column(
                      children: [
                        SizedBox(height: 12),
                        Text("AM", style: TextStyle(fontSize: 16)),
                      ],
                    ),
                  ],
                ),
              ],
            ),
            Spacer(),
            Switch(
              value: isON,
              onChanged: (value) {
                setState(() {
                  isON = value;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
