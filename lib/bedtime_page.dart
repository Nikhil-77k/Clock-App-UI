import 'package:flutter/material.dart';

class BedtimePage extends StatefulWidget {
  const BedtimePage({super.key});

  @override
  State<BedtimePage> createState() => _BedtimePageState();
}

class _BedtimePageState extends State<BedtimePage> {
  Color color = Colors.white;

  Widget mybutton(String text, String time) {
    return TextButton(
      onPressed: () {},
      child: Row(
        children: [
          Text(text, style: TextStyle(fontSize: 45)),
          SizedBox(width: 4),
          Column(
            children: [
              SizedBox(height: 19),
              Text(time, style: TextStyle(fontSize: 17)),
            ],
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(7),
      child: Container(
        height: 220,
        padding: EdgeInsets.all(15),
        decoration: BoxDecoration(
          color: const Color.fromARGB(134, 204, 204, 204),
          borderRadius: BorderRadius.circular(15),
        ),
        child: Column(
          children: [
            Column(
              children: [
                Row(
                  children: [
                    Container(
                      padding: EdgeInsets.all(2),
                      decoration: BoxDecoration(
                        color: Colors.blue.shade200,
                        shape: BoxShape.circle,
                      ),
                      child: Icon(Icons.timer_outlined),
                    ),
                    SizedBox(width: 10),
                    Text("Schedule"),
                  ],
                ),
                SizedBox(height: 15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text("BEDTIME"),
                    Text("WAKE-UP"),
                  ],
                ),
                Row(children: [
                    mybutton("11:00", "PM"),
                    mybutton("7:00", "AM"),
                  ],
                ),
                SizedBox(height: 15),
                Center(
                  child: Text("Turned Off", style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500)),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
