import 'package:bmindex/colors/app_color.dart';
import 'package:bmindex/screens/resuit.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  double height = 100;
  int weight = 20;
  int age = 15;
  bool isMale = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.appBar,
      appBar: AppBar(
        backgroundColor: AppColor.appBar,
        title: const Text(
          '🍕Bmindex',
          style: TextStyle(
              color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            Expanded(
                child: Row(
              children: [
                Expanded(
                  child: InkWell(
                    onTap: () {
                      setState(() {
                        isMale = true;
                      });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          color: isMale == true
                              ? AppColor.buttonColor
                              : AppColor.contenrColor,
                          borderRadius: BorderRadius.circular(20)),
                      child: const Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.male,
                              color: Colors.white,
                              size: 50,
                            ),
                            Text(
                              'Male',
                              style: TextStyle(color: Colors.white),
                            )
                          ]),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: InkWell(
                    onTap: () {
                      setState(() {
                        isMale = false;
                      });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          color: isMale != true
                              ? AppColor.buttonColor
                              : AppColor.contenrColor,
                          borderRadius: BorderRadius.circular(20)),
                      child: const Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.female,
                              color: Colors.white,
                              size: 50,
                            ),
                            Text(
                              'Female',
                              style: TextStyle(color: Colors.white),
                            )
                          ]),
                    ),
                  ),
                ),
              ],
            )),
            const SizedBox(
              height: 10,
            ),
            Expanded(
                child: Container(
              decoration: BoxDecoration(
                  color: AppColor.contenrColor,
                  borderRadius: BorderRadius.circular(20)),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text('Height',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 25,
                            fontWeight: FontWeight.bold)),
                    Text(
                      '${height.toInt()}cm',
                      style: const TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                          fontWeight: FontWeight.bold),
                    ),
                    Slider(
                        activeColor: AppColor.buttonColor,
                        min: 100.0,
                        max: 225.0,
                        value: height,
                        onChanged: (value) {
                          setState(() {
                            height = value;
                          });
                        }
                        )
                  ]),
            )),
            const SizedBox(
              height: 10,
            ),
            Expanded(
                child: Row(
              children: [
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                        color: AppColor.contenrColor,
                        borderRadius: BorderRadius.circular(20)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          'Weight',
                          style: TextStyle(color: Colors.white),
                        ),
                        Text(
                          '$weight',
                          style: const TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            IconButton(
                                onPressed: () {
                                  setState(() {
                                    weight--;
                                  });
                                },
                                style: IconButton.styleFrom(
                                    backgroundColor: AppColor.iconButtonColor),
                                icon: const Icon(
                                  Icons.remove,
                                  color: Colors.white,
                                )),
                            const SizedBox(
                              width: 10,
                            ),
                            IconButton(
                                onPressed: () {
                                  setState(() {
                                    weight++;
                                  });
                                },
                                style: IconButton.styleFrom(
                                    backgroundColor: AppColor.iconButtonColor),
                                icon: const Icon(
                                  Icons.add,
                                  color: Colors.white,
                                )),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                        color: AppColor.contenrColor,
                        borderRadius: BorderRadius.circular(20)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          'age',
                          style: TextStyle(color: Colors.white),
                        ),
                        Text(
                          '$age',
                          style: const TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            IconButton(
                                onPressed: () {
                                  setState(() {
                                    age--;
                                  });
                                },
                                style: IconButton.styleFrom(
                                    backgroundColor: AppColor.iconButtonColor),
                                icon: const Icon(
                                  Icons.remove,
                                  color: Colors.white,
                                )),
                            const SizedBox(
                              width: 10,
                            ),
                            IconButton(
                                onPressed: () {
                                  setState(() {
                                    age++;
                                  });
                                },
                                style: IconButton.styleFrom(
                                    backgroundColor: AppColor.iconButtonColor),
                                icon: const Icon(
                                  Icons.add,
                                  color: Colors.white,
                                )),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ],
            )),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              height: 70,
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  double resuit = weight / ((height / 100) * (height / 100));
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return ResuitScreen(resuit: resuit);
                    },
                  ));
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: AppColor.buttonColor,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10))),
                child: const Text(
                  'Calculate',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
