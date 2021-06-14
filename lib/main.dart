import 'package:assignment_app_jio/Screens/apply_for_Leave_Screen.dart';
import 'package:assignment_app_jio/Screens/apply_leave_screen.dart';
import 'package:assignment_app_jio/Screens/MainDrawer.dart';
import 'package:assignment_app_jio/Screens/calendar_screen.dart';

import 'package:flutter/material.dart';
import './Screens/holiday_calendar_screen.dart';

void main() {
  var myapp = new MyApp();

  runApp(myapp);
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
        accentColor: Colors.grey[200],
      ),
      home: MyHomePage(),
      initialRoute: '/',
      routes: {
        ApplyForLeaveScreen.routeName: (ctx) => ApplyForLeaveScreen(),
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool holidayCalendarScreen = false;
  bool applyLeaveScreen = false;
  bool calendarScreen = false;
  @override
  void initState() {
    holidayCalendarScreen = false;
    applyLeaveScreen = false;
    calendarScreen = false;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final double categoryHeight =
        MediaQuery.of(context).size.height * 0.30 - 50;
    // final double categoryWidth = MediaQuery.of(context).size.width * 0.1;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Leave & Attendance",
          style: TextStyle(fontSize: 18),
        ),
        backgroundColor: Colors.blue[700],
      ),
      drawer: MainDrawer(),
      body: Container(
        height: size.height,
        child: SingleChildScrollView(
          child: Column(children: <Widget>[
            SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              // ROW STARTS HERE
              ///////////
              //////////
              ///////////
              child: Container(
                height: categoryHeight * 0.9,
                margin: EdgeInsets.only(top: 15, left: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Container(
                      height: categoryHeight,
                      width: 120,
                      decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius:
                              BorderRadius.all(Radius.circular(15.0))),
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Column(
                              children: [
                                Text(
                                  "Absent days for Current & last month -",
                                  style: TextStyle(
                                      fontSize: 11.5,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                                Container(
                                  alignment: Alignment.bottomRight,
                                  child: Icon(
                                    Icons.home,
                                    color: Colors.white,
                                    size: 28,
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      height: categoryHeight,
                      width: 120,
                      decoration: BoxDecoration(
                          color: Colors.blue[700],
                          borderRadius:
                              BorderRadius.all(Radius.circular(15.0))),
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Column(
                              children: [
                                Text(
                                  "Leave & Regularization History    -",
                                  style: TextStyle(
                                      fontSize: 11.5,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  height: 2,
                                ),
                                Container(
                                  alignment: Alignment.bottomRight,
                                  child: Icon(
                                    Icons.timer_outlined,
                                    color: Colors.white,
                                    size: 32,
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      height: categoryHeight,
                      width: 120,
                      decoration: BoxDecoration(
                          color: Colors.blue[700],
                          borderRadius:
                              BorderRadius.all(Radius.circular(15.0))),
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Column(
                              children: [
                                Text(
                                  "Time report -            Team -",
                                  style: TextStyle(
                                      fontSize: 11.5,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Container(
                                  alignment: Alignment.bottomRight,
                                  child: Icon(
                                    Icons.people_alt_outlined,
                                    color: Colors.white,
                                    size: 32,
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            // ROW ENDS HERE
            ///////////
            ///////////
            //////////
            SizedBox(
              height: 20,
            ),

            SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  // 1st Container
                  //////////////
                  /////////////
                  /////////////
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        calendarScreen = !calendarScreen;
                      });
                    },
                    child: calendarScreen
                        ? Container(
                            height: 50,
                            width: 330,
                            decoration: BoxDecoration(
                              color: Colors.blue[700],
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                                topRight: Radius.circular(10),
                              ),
                            ),
                            child: Row(
                              children: [
                                SizedBox(
                                  width: 20,
                                ),
                                Text(
                                  "My Calendar",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontWeight: FontWeight.w600),
                                ),
                                SizedBox(width: 140),
                                Icon(
                                  Icons.arrow_drop_up_outlined,
                                  color: Colors.white,
                                )
                              ],
                            ),
                          )
                        : Container(
                            height: 50,
                            width: 330,
                            decoration: BoxDecoration(
                              color: Colors.blue[700],
                              borderRadius: BorderRadius.all(
                                Radius.circular(10.0),
                              ),
                            ),
                            child: Row(
                              children: [
                                SizedBox(
                                  width: 20,
                                ),
                                Text(
                                  "My Calendar",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontWeight: FontWeight.w600),
                                ),
                                SizedBox(width: 140),
                                Icon(
                                  Icons.arrow_drop_down,
                                  color: Colors.white,
                                )
                              ],
                            ),
                          ),
                  ),
                  calendarScreen == true
                      ? CalendarScreen()
                      : SizedBox(
                          height: 0,
                        ),
                  SizedBox(
                    height: 20,
                  ),

                  //  2nd Container///
                  ///////////
                  ///////////////
                  //////////////
                  GestureDetector(
                    onTap: () {
                      // modalSheet2(context, "Apply Leave");
                      setState(() {
                        applyLeaveScreen = !applyLeaveScreen;
                      });
                    },
                    child: applyLeaveScreen
                        ? Container(
                            height: 50,
                            width: 330,
                            decoration: BoxDecoration(
                              color: Colors.blue[700],
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(10.0),
                                topLeft: Radius.circular(10.0),
                              ),
                            ),
                            child: Row(
                              children: [
                                SizedBox(
                                  width: 20,
                                ),
                                Text(
                                  "Apply Leave",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(width: 140),
                                Icon(
                                  Icons.arrow_drop_up_sharp,
                                  color: Colors.white,
                                )
                              ],
                            ),
                          )
                        : Container(
                            height: 50,
                            width: 330,
                            decoration: BoxDecoration(
                              color: Colors.blue[700],
                              borderRadius: BorderRadius.all(
                                Radius.circular(10.0),
                              ),
                            ),
                            child: Row(
                              children: [
                                SizedBox(
                                  width: 20,
                                ),
                                Text(
                                  "Apply Leave",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(width: 140),
                                Icon(
                                  Icons.arrow_drop_down,
                                  color: Colors.white,
                                )
                              ],
                            ),
                          ),
                  ),
                  applyLeaveScreen == true
                      ? ApplyLeaveScreen()
                      : SizedBox(
                          height: 0,
                        ),
                  SizedBox(
                    height: 20,
                  ),

                  // 3rd Container
                  /////////////
                  ////////////
                  ///////////

                  GestureDetector(
                    onTap: () {
                      // modalSheet3(context, "Holiday Calendar");
                      setState(() {
                        holidayCalendarScreen = !holidayCalendarScreen;
                      });
                    },
                    child: holidayCalendarScreen
                        ? Container(
                            height: 50,
                            width: 330,
                            decoration: BoxDecoration(
                              color: Colors.blue[700],
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                                topRight: Radius.circular(10),
                              ),
                            ),
                            child: Row(
                              children: [
                                SizedBox(
                                  width: 20,
                                ),
                                Text(
                                  "Holiday Calendar",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(width: 90),
                                Icon(
                                  Icons.arrow_drop_up_outlined,
                                  color: Colors.white,
                                )
                              ],
                            ),
                          )
                        : Container(
                            height: 50,
                            width: 330,
                            decoration: BoxDecoration(
                              color: Colors.blue[700],
                              borderRadius: BorderRadius.all(
                                Radius.circular(10),
                              ),
                            ),
                            child: Row(
                              children: [
                                SizedBox(
                                  width: 20,
                                ),
                                Text(
                                  "Holiday Calendar",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(width: 90),
                                Icon(
                                  Icons.arrow_drop_down,
                                  color: Colors.white,
                                )
                              ],
                            ),
                          ),
                  ),
                  holidayCalendarScreen == true
                      ? HolidayCalendarScreen()
                      : SizedBox(
                          height: 0,
                        ),
                ],
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
