import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key, required this.moveToHealthSupport})
      : super(key: key);
  final VoidCallback moveToHealthSupport;
  static const routeName = '/Home-page';

  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQueryData = MediaQuery.of(context);
    double deviceHeight = mediaQueryData.size.height;
    double devicewidth = mediaQueryData.size.width;

    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          Container(
            height: deviceHeight * 0.12,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.amber,
            ),
            child: Stack(
              children: [
                Positioned(
                  top: 40,
                  left: 0,
                  child: Container(
                    alignment: Alignment.center,
                    height: deviceHeight * 0.05,
                    width: 200,
                    child: Text(
                      "App Name",
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                Positioned(
                  top: 40,
                  right: 40,
                  child: Container(
                    decoration: BoxDecoration(color: Colors.amber[200]),
                    height: 40,
                    width: 40,
                    child: Center(
                      child: Icon(Icons.menu),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: Colors.red,
                    ),
                    height: 130,
                    width: double.infinity,
                    child: Stack(
                      children: [
                        Positioned(
                          top: 10,
                          left: 10,
                          child: Container(
                            height: 50,
                            width: 220,
                            child: Center(
                              child: Text(
                                "Good AfterNoon",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 30,
                                ),
                                softWrap: true,
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          top: 50,
                          left: 10,
                          child: Container(
                            height: 50,
                            width: 200,
                            child: Center(
                              child: Text(
                                "Shubam!",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 30,
                                ),
                                softWrap: true,
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          top: 10,
                          right: 10,
                          child: Container(
                            height: 100,
                            width: 100,
                            alignment: Alignment.center,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(50),
                              child: Image.asset(
                                "images/oldMan.png",
                                height: 100.0,
                                width: 100.0,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Container(
                    height: 120,
                    width: 360,
                    decoration: BoxDecoration(
                        color: Colors.green[200],
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.4),
                            spreadRadius: 5,
                            blurRadius: 7,
                            offset: Offset(
                              -10.0, // Move to right 10  horizontally
                              10.0, // Move to bottom 10 Vertically
                            ),
                          )
                        ],
                        borderRadius: BorderRadius.circular(10)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          height: 120,
                          width: 230,
                          alignment: Alignment.center,
                          child: Text(
                            'Manage My Health',
                            style: TextStyle(
                                fontSize: 25, fontWeight: FontWeight.bold),
                          ),
                        ),
                        Container(
                          margin: new EdgeInsets.only(
                            right: 15,
                          ),
                          height: 100,
                          width: 100,
                          alignment: Alignment.center,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(5),
                            child: Image.asset(
                              "images/diagnosis.png",
                              height: 100.0,
                              width: 100.0,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  InkWell(
                    onTap: moveToHealthSupport,
                    child: Container(
                      height: 120,
                      width: 360,
                      decoration: BoxDecoration(
                          color: Colors.green[200],
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.4),
                              spreadRadius: 5,
                              blurRadius: 7,
                              offset: Offset(
                                -10.0, // Move to right 10  horizontally
                                10.0, // Move to bottom 10 Vertically
                              ),
                            )
                          ],
                          borderRadius: BorderRadius.circular(10)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            height: 120,
                            width: 230,
                            alignment: Alignment.center,
                            child: Text(
                              'Health Support',
                              style: TextStyle(
                                  fontSize: 25, fontWeight: FontWeight.bold),
                            ),
                          ),
                          Container(
                            margin: new EdgeInsets.only(
                              right: 15,
                            ),
                            height: 100,
                            width: 100,
                            alignment: Alignment.center,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(5),
                              child: Image.asset(
                                "images/doctor.png",
                                height: 100.0,
                                width: 100.0,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Container(
                    height: 120,
                    width: 360,
                    decoration: BoxDecoration(
                        color: Colors.green[200],
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.4),
                            spreadRadius: 5,
                            blurRadius: 7,
                            offset: Offset(
                              -10.0, // Move to right 10  horizontally
                              10.0, // Move to bottom 10 Vertically
                            ),
                          )
                        ],
                        borderRadius: BorderRadius.circular(10)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          margin: new EdgeInsets.only(
                            left: 15,
                          ),
                          height: 120,
                          width: 230,
                          alignment: Alignment.center,
                          child: Text(
                            'Healthy Living Products',
                            style: TextStyle(
                                fontSize: 25, fontWeight: FontWeight.bold),
                          ),
                        ),
                        Container(
                          margin: new EdgeInsets.only(
                            right: 15,
                          ),
                          height: 100,
                          width: 100,
                          alignment: Alignment.center,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(5),
                            child: Image.asset(
                              "images/hospital.png",
                              height: 100.0,
                              width: 100.0,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
