import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:todo/screens/taskpage.dart';
import 'package:todo/screens/widgets.dart';

class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          padding: EdgeInsets.symmetric(
            horizontal: 24.0,

          ),
          color: Color(0xFFF6F6F6),
          child:Stack(
            children: [
              Column(
                crossAxisAlignment:CrossAxisAlignment.start ,
                children: [
                  Container(
                    margin: EdgeInsets.only(
                      top: 32.0,
                      bottom: 32.0,
                    ),
                    child: Image(image: AssetImage(
                      "assets/images/logo.png"
                    ),
                    ),
                  ),
                  Expanded(
                    child: ListView(
                      children: [
                        TaskCardWidget(
                          title: "Hello there",
                          desc: "You did it",
                        ),
                        TaskCardWidget(),
                        TaskCardWidget(),
                        TaskCardWidget(),
                        TaskCardWidget(),
                      ],
                    ),
                  )
                ],

              ),
              Positioned(
                bottom: 20.0,
                  right: 0.0,
                child: GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> Taskpage()
                    ),
                    );
                  },
                  child: Container(
                    width: 60.0,
                      height: 60.0,
                    decoration:BoxDecoration(
                      color: Color(0xFF7349FE),
                      borderRadius: BorderRadius.circular(20.0),
                    ) ,
                    child:Image(
                      image: AssetImage(
                        "assets/images/add_icon.png",
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

