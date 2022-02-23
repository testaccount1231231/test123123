import 'package:flutter/material.dart';
import 'package:sample/widgets/page_1/counter_value_text.g.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:sample/controller/tag/counter_button_custom.dart';
import 'package:sample/controller/tag/counter_value_text_custom.dart';

class MyAppScreen extends StatefulWidget {
  const MyAppScreen({Key? key}) : super(key: key);
  @override
  _MyAppScreen createState() => _MyAppScreen();
}

class _MyAppScreen extends State<MyAppScreen> {
  _MyAppScreen();

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: Stack(children: [
        Positioned(
          left: 0,
          width: MediaQuery.of(context).size.width * 1.0,
          top: 0,
          height: 95.0,
          child: Container(
            width: MediaQuery.of(context).size.width * 1.000,
            height: 95.000,
            decoration: BoxDecoration(
              color: Color(0xff3598fb),
              borderRadius: BorderRadius.all(Radius.circular(0)),
            ),
          ),
        ),
        Positioned(
          left: MediaQuery.of(context).size.width * 0.171,
          width: MediaQuery.of(context).size.width * 0.677,
          top: 48.0,
          height: 28.0,
          child: Container(
              width: MediaQuery.of(context).size.width * 0.677,
              height: 28.000,
              child: AutoSizeText(
                'Flutter Demo Home Page',
                style: TextStyle(
                  fontFamily: 'Sanchez',
                  fontSize: 21,
                  fontWeight: FontWeight.w400,
                  fontStyle: FontStyle.normal,
                  letterSpacing: 0,
                  color: Colors.white,
                ),
                textAlign: TextAlign.center,
              )),
        ),
        Positioned(
          right: 22.0,
          width: 70.0,
          bottom: 25.0,
          height: 70.0,
          child: CounterButtonCustom(
              child: Stack(children: [
            Positioned(
              left: 0,
              width: 70.0,
              top: 0,
              height: 70.0,
              child: Container(
                width: 70.000,
                height: 70.000,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(0)),
                ),
              ),
            ),
            Positioned(
              left: 0,
              width: 70.0,
              top: 0,
              height: 70.0,
              child: Image.asset(
                'assets/images/1_134.png',
                package: 'sample',
                width: 70.000,
                height: 70.000,
                fit: BoxFit.none,
              ),
            ),
            Positioned(
              left: 14.0,
              width: 41.0,
              top: 0,
              height: 70.0,
              child: Container(
                  width: 41.000,
                  height: 70.000,
                  child: AutoSizeText(
                    '+',
                    style: TextStyle(
                      fontFamily: 'Sanchez',
                      fontSize: 48,
                      fontWeight: FontWeight.w400,
                      fontStyle: FontStyle.normal,
                      letterSpacing: 0,
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.center,
                  )),
            ),
          ])),
        ),
        Positioned(
          left: MediaQuery.of(context).size.width * 0.101,
          width: MediaQuery.of(context).size.width * 0.763,
          top: 385.0,
          height: 95.0,
          child: Center(
              child: Container(
                  width: 286.000,
                  height: 95.000,
                  child: AutoSizeText(
                    'You have pushed the button this many times:',
                    style: TextStyle(
                      fontFamily: 'Sanchez',
                      fontSize: 21,
                      fontWeight: FontWeight.w400,
                      fontStyle: FontStyle.normal,
                      letterSpacing: 0,
                      color: Colors.black,
                    ),
                    textAlign: TextAlign.center,
                  ))),
        ),
        Positioned(
          left: MediaQuery.of(context).size.width * 0.317,
          width: MediaQuery.of(context).size.width * 0.363,
          top: 451.0,
          height: 29.0,
          child: Center(
              child: Container(
                  width: 136.0,
                  child: CounterValueTextCustom(
                    child: LayoutBuilder(builder: (context, constraints) {
                      return CounterValueText(
                        constraints,
                        ovrValue: '0',
                      );
                    }),
                    ovrValue: '0',
                  ))),
        ),
      ]),
    );
  }

  @override
  void dispose() {
    super.dispose();
  }
}
