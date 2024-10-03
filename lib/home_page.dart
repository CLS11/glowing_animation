import 'package:flutter/material.dart';
import 'package:glowing_animation/circle_clipper.dart';
import 'package:glowing_animation/random_color.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ClipPath(
          clipper: const CircleClipper(),
          child: TweenAnimationBuilder(
            tween: ColorTween(
              begin: getRandomColor(),
              end: _color,
            ),
            onEnd: () {
              setState(
                () {
                  _color = getRandomColor();
                },
              );
            },
            duration: Duration(seconds: 1),
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.width,
              color: Colors.blueGrey,
            ),
            builder: (context, Color? color, child) {
              return ColorFiltered(
                colorFilter: ColorFilter.mode(
                  color!,
                  BlendMode.srcATop,
                ),
                child: child,
              );
            },
          ),
        ),
      ),
    );
  }
}
