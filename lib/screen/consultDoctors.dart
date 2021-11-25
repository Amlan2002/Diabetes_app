import 'package:diabetes_app/widget/consultDoctors_card.dart';
import 'package:flutter/material.dart';

class ConsultDoctors extends StatelessWidget {
  const ConsultDoctors({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQueryData = MediaQuery.of(context);
    double deviceHeight = mediaQueryData.size.height;
    double devicewidth = mediaQueryData.size.width;
    return Scaffold(
      appBar: AppBar(
        elevation: 10,
        backgroundColor: Colors.amber,
        title: Text(
          'Consult Doctors',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Container(
        height: deviceHeight * 0.82,
        child: SingleChildScrollView(
          child: Column(
            children: [
              ConsultDoctorsCard(),
              ConsultDoctorsCard(),
              ConsultDoctorsCard(),
              ConsultDoctorsCard(),
            ],
          ),
        ),
      ),
    );
  }
}
