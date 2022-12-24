import 'package:flutter/material.dart';
import "package:onboarding/onboarding.dart";

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  late Material materialButton;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("DEEZ RAILWAYS",style: TextStyle(fontWeight: FontWeight.w500)),
          leading: Icon(Icons.train),
          backgroundColor: background,
          foregroundColor: Colors.white,
          shadowColor: Colors.white,
        ),
        backgroundColor: background,
        body:
        Center(
          child: Column(
            children: [
              Container(
                height: 500,width: 500,
                child: Image.asset('thomas.png',height: 200,width: 500),
              ),
              Center(
                child: Container(
                  decoration: BoxDecoration(
                    color: background,
                    border: Border.all(
                      width: 0.0,
                      color: background,
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 16.0),
                decoration: BoxDecoration(
                  color: background,
                  border: Border.all(
                    width: 0.0,
                    color: Colors.grey,
                  ),
                ),
                child: ColoredBox(
                  color: Colors.grey.withOpacity(0.05),
                  child: Padding(
                    padding: const EdgeInsets.all(25.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustomIndicator(
                          netDragPercent: 0.0,
                          pagesLength: 1,
                          indicator: Indicator(
                            indicatorDesign: IndicatorDesign.line(
                              lineDesign: LineDesign(
                                lineType: DesignType.line_uniform,
                              ),
                            ),
                          ),
                        ),
                        _signupButton
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),

        ),
      ),
    );
  }

  Material get _signupButton {
    return Material(
      borderRadius: defaultProceedButtonBorderRadius,
      color: defaultProceedButtonColor,
      child: InkWell(
        borderRadius: defaultProceedButtonBorderRadius,
        onTap: () {},
        child: const Padding(
          padding: defaultProceedButtonPadding,
          child: Text(
            'JUMP IN',
            style: defaultProceedButtonTextStyle,
          ),
        ),
      ),
    );
  }
}