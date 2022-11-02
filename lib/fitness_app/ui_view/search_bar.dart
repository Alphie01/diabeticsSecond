import 'package:best_flutter_ui_templates/fitness_app/misc/apptitle.dart';
import 'package:flutter/cupertino.dart';
import 'package:best_flutter_ui_templates/main.dart';
import 'package:flutter/material.dart';
import '../fitness_app_theme.dart';

class SearchBar extends StatelessWidget {
  final AnimationController? animationController;
  final Animation<double>? animation;

  const SearchBar({Key? key, this.animationController, this.animation})
      : super(key: key);


  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: animationController!,
      builder: (BuildContext context, Widget? child) {
        return FadeTransition(
          opacity: animation!,
          child: new Transform(
            transform: new Matrix4.translationValues(
                0.0, 30 * (1.0 - animation!.value), 0.0),
            child: Container(
              padding: EdgeInsets.only(left: 25, right: 25, top: 10),
              child: TextField(
                onChanged: (news) {
                  print(news);
                },
                style: TextStyle(fontSize: 16, color: Colors.white),
                decoration: InputDecoration(
                  hintText: "Aramak istediğiniz kelimeyi yazınız.",
                  hintStyle: TextStyle(color: Colors.grey.shade500),
                  filled: true,
                  prefixText: ' ',
                  enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey.shade500)),
                  focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.white)),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
