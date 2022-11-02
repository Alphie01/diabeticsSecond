import 'package:best_flutter_ui_templates/fitness_app/misc/apptitle.dart';
import 'package:flutter/cupertino.dart';
import 'package:best_flutter_ui_templates/main.dart';
import 'package:flutter/material.dart';
import '../fitness_app_theme.dart';

class settingsPersonal extends StatelessWidget {
  final AnimationController? animationController;
  final Animation<double>? animation;

  const settingsPersonal({Key? key, this.animationController, this.animation})
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
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      AppLargeText(text:"Bildirimlere İzin Ver?"),
                      Text("Alp Selçuk")

                    ],
                  ),
                  Divider(height: 5,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      AppLargeText(text:"Konuma İzin Ver?"),
                      Text("alpsel3@gmail.com")

                    ],
                  ),
                  SizedBox(height: 5,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      AppLargeText(text:"Hareketlerini Takip Etmeye İzin Ver?"),
                      Text("25.08.1999")
                    ],
                  ),
                  SizedBox(height: 5,)

                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
