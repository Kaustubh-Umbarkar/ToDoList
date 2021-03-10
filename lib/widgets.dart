import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TaskCardWidget extends StatelessWidget {
  final String title;
  final String desc;

  TaskCardWidget({this.title, this.desc});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        padding: EdgeInsets.symmetric(
          vertical: 32.0,
          horizontal: 24.0,
        ),
        margin: EdgeInsets.only(
          bottom: 20.0,
        ),
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(20.0)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title ?? "Unnamed?",
              style: TextStyle(
                color: Color(0xFF211511),
                fontSize: 22.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 20.0,
              ),
              child: Text(
                desc ?? "You tell me what to do",
                style: TextStyle(
                  fontSize: 16.0,
                  color: Color(0XFF86829D),
                  height: 1.5,
                ),
              ),
            )
          ],
        ));
  }
}

class TodoWidget extends StatelessWidget {
  final String text;
  final bool isDone;

  TodoWidget({this.text, @required this.isDone});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(
          horizontal: 24.0,
          vertical: 8.0,
        ),
        child: Row(
          children: [
            Container(
              margin: EdgeInsets.only(
                right: 12.0,
              ),
              width: 20.0,
              height: 20.0,
              decoration: BoxDecoration(
                border:isDone? null : Border.all(
                  color: Color(0xFF86829D),
                  width: 1.5,
                ),
                borderRadius: BorderRadius.circular(6.0),
                color: isDone? Color(0xFF7349FE):Colors.transparent,
              ),
              child: Image(
                image: AssetImage("assets/images/check_icon.png"),
              ),
            ),
            Text(
              text ?? "Todo Text",
              style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: isDone?FontWeight.bold:FontWeight.w500,
                  color:isDone? Color(0xFF211551) :Color(0xFF86892D)
              ),
            ),
          ],
        ));
  }
}
class NoGlowBehaviour extends ScrollBehavior {
  @override
  Widget buildViewportChrome(
      BuildContext context, Widget child, AxisDirection axisDirection) {
    return child;
  }
}
