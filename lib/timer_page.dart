import 'package:flutter/material.dart';

class TimerPage extends StatefulWidget {
  const TimerPage({super.key});

  @override
  State<TimerPage> createState() => _TimerPageState();
}

class _TimerPageState extends State<TimerPage> {
  List<Widget> time(String duration) {
    return [
      Text("00", style: TextStyle(fontSize: 55)),
      Column(
        children: [
          SizedBox(height: 12),
          Text(duration, style: TextStyle(fontSize: 22)),
        ],
      ),
    ];
  }

  final keys = [
    "1",
    "2",
    "3",
    "4",
    "5",
    "6",
    "7",
    "8",
    "9",
    "0",
    "00",
    "backspace",
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 25),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ...time("hrs"), // we can't use List<Widget> here it
            SizedBox(
              width: 12,
            ), //  need to place widgets so we have to use spread operator to insert all widgets of list
            ...time("min"),
            SizedBox(width: 12),
            ...time("sec"),
          ],
        ),
        SizedBox(height: 12),
        Center(
          child: Wrap(
            spacing: 20,
            runSpacing: 5,
            children: keys.map((key) {
              return SizedBox(
                width: 80,
                height: 85,
                child: IconWidget(
                  radius: BorderRadius.circular(12),
                  child: key == "backspace"
          ? const Icon(Icons.backspace_outlined)
          : Text(
              key,
              style: const TextStyle(fontSize: 22),
            ),
                ),
              );
            }).toList(),
          ),
        ),
        SizedBox(height: 12),
        IconWidget(radius: BorderRadius.circular(12), child: Icon(Icons.play_arrow))
      ],
    );
  }
}

class IconWidget extends StatelessWidget {
  final BorderRadius radius;
  final Widget child;
  const IconWidget({
    super.key,
    required this.child,
    required this.radius,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      margin: EdgeInsets.all(5),
      child: InkWell(
        onTap: () {},
        borderRadius: radius,
        child: Padding(padding: const EdgeInsets.all(26), child: child),
      ),
    );
  }
}
