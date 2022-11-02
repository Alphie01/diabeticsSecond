import 'package:best_flutter_ui_templates/fitness_app/misc/apptitle.dart';
import 'package:flutter/cupertino.dart';
import 'package:best_flutter_ui_templates/main.dart';
import 'package:flutter/material.dart';
import '../fitness_app_theme.dart';
import 'package:charts_painter/chart.dart';

class graphChart extends StatelessWidget {
  final AnimationController? animationController;
  final Animation<double>? animation;

  const graphChart({Key? key, this.animationController, this.animation})
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
              child: charts(),
            ),
          ),
        );
      },
    );
  }
}

class charts extends StatelessWidget {
  const charts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Chart(
      state: ChartState.bar(
        ChartData.fromList(
          <double>[1, 3, 4, 2, 10.4, 6, 2, 5, 4]
              .map((e) => BarValue<void>(e))
              .toList(),
        ),
        itemOptions: BarItemOptions(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          radius: BorderRadius.vertical(top: Radius.circular(42.0)),
        ),
        backgroundDecorations: [
          GridDecoration(
            verticalAxisStep: 1,
            horizontalAxisStep: 1,
          ),
        ],
      ),
    );
  }
}
