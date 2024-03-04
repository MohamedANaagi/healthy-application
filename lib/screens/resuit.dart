import 'package:bmindex/colors/app_color.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ResuitScreen extends StatelessWidget {
  ResuitScreen({super.key, required this.resuit});
  double resuit;
  String fnResuit() {
    String text;
    if (resuit < 16) {
      text = 'Severe Thinness	';
    } else if (resuit >= 16 && resuit < 17) {
      text = 'Moderate Thinness	';
    } else if (resuit >= 17 && resuit < 18.5) {
      text = 'Mild Thinness	';
    } else if (resuit >= 18.5 && resuit < 25) {
      text = 'Normal';
    } else if (resuit >= 25 && resuit < 30) {
      text = 'Overweight';
    } else if (resuit >= 30 && resuit < 35) {
      text = 'Obese Class I';
    } else if (resuit >= 35 && resuit < 40) {
      text = 'Obese Class II';
    } else {
      text = 'Obese Class III';
    }
    return text;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.appBar,
      appBar: AppBar(
        foregroundColor: Colors.white,
        backgroundColor: AppColor.appBar,
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            const Text(
              'Your result',
              style: TextStyle(color: Colors.white, fontSize: 25),
            ),
            Expanded(
              child: Container(
                padding: const EdgeInsets.all(30),
                decoration: BoxDecoration(
                    color: AppColor.contenrColor,
                    borderRadius: BorderRadius.circular(20)),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 40,
                    ),
                    Text(fnResuit(),
                        style: const TextStyle(
                            color: Color(0xff1edb8c),
                            fontWeight: FontWeight.w500)),
                    const SizedBox(
                      height: 80,
                    ),
                    Text(resuit.toStringAsFixed(2),
                        style: const TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                            fontSize: 65)),
                    const SizedBox(
                      height: 80,
                    ),
                    const Text(
                      'your body weight is absolutely normal, Good job💪',
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              height: 80,
              width: double.infinity,
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: AppColor.buttonColor,
                      foregroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10))),
                  child: const Text('Recalculate')),
            ),
          ],
        ),
      ),
    );
  }
}
