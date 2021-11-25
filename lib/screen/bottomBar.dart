import 'package:diabetes_app/screen/consultDoctors.dart';
import 'package:diabetes_app/screen/healthSupportServices.dart';
import 'package:diabetes_app/screen/homePage.dart';
import 'package:diabetes_app/screen/nursingSupport.dart';
import 'package:flutter/material.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({Key? key}) : super(key: key);

  @override
  _BottomBarState createState() => _BottomBarState();
}

int currenttab = 0;

final PageStorageBucket bucket = PageStorageBucket();
Widget currentScreen = HomePage();

class _BottomBarState extends State<BottomBar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageStorage(
        child: currentScreen,
        bucket: bucket,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        notchMargin: 10,
        child: Container(
          height: 60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              MaterialButton(
                minWidth: 40,
                onPressed: () {
                  setState(() {
                    currentScreen = HomePage();
                    currenttab = 0;
                  });
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.home,
                      color: currenttab == 0 ? Colors.amber : Colors.grey,
                    ),
                    Text(
                      'Home',
                      style: TextStyle(
                        color: currenttab == 0 ? Colors.amber : Colors.grey,
                      ),
                    )
                  ],
                ),
              ),
              MaterialButton(
                minWidth: 40,
                onPressed: () {
                  setState(() {
                    currentScreen = HealthSupportServices();
                    currenttab = 1;
                  });
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.health_and_safety_outlined,
                      color: currenttab == 1 ? Colors.amber : Colors.grey,
                    ),
                    Text(
                      'Health',
                      style: TextStyle(
                        color: currenttab == 1 ? Colors.amber : Colors.grey,
                      ),
                    )
                  ],
                ),
              ),
              MaterialButton(
                minWidth: 40,
                onPressed: () {
                  setState(() {
                    currentScreen = NursingSupport();
                    currenttab = 2;
                  });
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.food_bank,
                      color: currenttab == 2 ? Colors.amber : Colors.grey,
                    ),
                    Text(
                      'Nursing',
                      style: TextStyle(
                        color: currenttab == 2 ? Colors.amber : Colors.grey,
                      ),
                    )
                  ],
                ),
              ),
              MaterialButton(
                minWidth: 40,
                onPressed: () {
                  setState(() {
                    currentScreen = ConsultDoctors();
                    currenttab = 3;
                  });
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.account_circle,
                      color: currenttab == 3 ? Colors.amber : Colors.grey,
                    ),
                    Text(
                      'doctor',
                      style: TextStyle(
                        color: currenttab == 3 ? Colors.amber : Colors.grey,
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
