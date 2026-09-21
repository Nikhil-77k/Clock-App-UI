import 'package:flutter/material.dart';

class StopwatchPage extends StatefulWidget {
  const StopwatchPage({super.key});

  @override
  State<StopwatchPage> createState() => _StopwatchPageState();
}

class _StopwatchPageState extends State<StopwatchPage> {
  Widget mytext(String text) {
    return Text(
      text,
      style: TextStyle(fontSize: 80, fontWeight: FontWeight.w300),
    );
  }

  bool isON = false;

  void change() {
    setState(() {
      isON = !isON;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            mytext("00"),
            mytext(":"),
            mytext("00"),
            mytext("."),
            mytext("00"),
          ],
        ),
        SizedBox(height: 170),

        Mytextbutton(
          ontap: change,
          color: isON ? Colors.blue.shade400 : Colors.green.shade400,
          radius: isON ? 50 : 25,
          size: 100,
          text: isON ? "Stop" : "Start",
        ),
        SizedBox(height: 8),
        Mytextbutton(
          ontap: () {},
          color: Colors.black26,
          radius: 55,
          size: 70,
          text: "Reset",
        ),
        SizedBox(height: 8),
        isON ? Mytextbutton(
          ontap: () {},
          color: Colors.black26,
          radius: 55,
          size: 50,
          text: "Lap",
        ) : SizedBox(),
      ],
    );
  }
}

class Mytextbutton extends StatelessWidget {
  final VoidCallback ontap;
  final Color color;
  final double radius;
  final double size;
  final String text;
  const Mytextbutton({
    super.key,
    required this.ontap,
    required this.color,
    required this.radius,
    required this.size,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: ontap,
      style: ButtonStyle(
        backgroundColor: WidgetStateProperty.all(color),
        shape: WidgetStateProperty.all(
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(radius)),
        ),
      ),
      child: SizedBox(
        width: 280,
        height: size,
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              fontSize: 27,
              color: Colors.white,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
      ),
    );
  }
}
