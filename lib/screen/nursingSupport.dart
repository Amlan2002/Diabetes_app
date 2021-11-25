import 'package:diabetes_app/widget/nursingSupportCard.dart';
import 'package:flutter/material.dart';

class NursingSupport extends StatelessWidget {
  const NursingSupport({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQueryData = MediaQuery.of(context);
    double deviceHeight = mediaQueryData.size.height;
    double devicewidth = mediaQueryData.size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        elevation: 10,
        title: Text(
          'Nursing Support',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Container(
        height: deviceHeight * 0.82,
        child: SingleChildScrollView(
          child: Column(
            children: [
              NursingSupportCard(),
              NursingSupportCard(),
              NursingSupportCard(),
              NursingSupportCard(),
            ],
          ),
        ),
      ),
    );
  }
}
