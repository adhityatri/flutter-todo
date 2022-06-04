import 'package:flutter/material.dart';
import 'package:simple_todos/widgets/taskcardwidget.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
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
            vertical: 32.0,
          ),
          color: Color(0xFFF6F6F6),
          child: Stack(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.only(bottom: 32.0),
                    child: Image(
                      image: AssetImage("assets/images/logo.png"),
                      height: 32,
                    ),
                  ),
                  TaskCardWidget(
                      title: "Get Started",
                      desc:
                          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book"),
                ],
              ),
              Positioned(
                bottom: 0.0,
                right: 0.0,
                child: Container(
                  decoration: BoxDecoration(
                    color: Color(0xff7349fe),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  height: 60.0,
                  width: 60.0,
                  child: Image(
                    image: AssetImage("assets/images/add.png"),
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
