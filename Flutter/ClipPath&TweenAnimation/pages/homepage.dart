import 'package:flutter/material.dart';
import 'package:lunabrainhelloworld/const/colors.dart';
import 'package:lunabrainhelloworld/const/clippers.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var deviceHeight = MediaQuery.of(context).size.height;
    var deviceWidth = MediaQuery.of(context).size.width;

    return Scaffold(
        body: TweenAnimationBuilder(
            tween: Tween<double>(begin: 0, end: deviceHeight),
            duration: Duration(seconds: 1),
            builder: (BuildContext context, double height, Widget child) {
              return Container(
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        colors: [lunabrain_carpi, lunabrain_perssianBlue],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight)),
                child: Stack(
                  children: <Widget>[
                    Container(
                        height: height,
                        child: ClipPath(
                          clipper: MyClipper(),
                          child: Container(color: Colors.white),
                        )),
                    Align(
                      alignment: Alignment.bottomLeft,
                      child: Container(
                          width: deviceWidth * (height / deviceHeight),
                          child: ClipPath(
                            clipper: MyClipper2(),
                            child: Container(color: Colors.white),
                          )),
                    ),
                    ClipPath(
                        clipper: MyClipper3(),
                        child: Container(
                          height: height,
                          decoration: BoxDecoration(
                              gradient: LinearGradient(
                                  colors: [
                                lunabrain_carpi,
                                lunabrain_perssianBlue
                              ],
                                  begin: Alignment.topLeft,
                                  end: Alignment.bottomRight)),
                        )),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.fromLTRB(
                              deviceWidth / 10, height / 5.5, 0, 0),
                          child: Text('LUNA',
                              style: TextStyle(
                                  letterSpacing: 4,
                                  fontWeight: FontWeight.w500,
                                  fontSize: (deviceWidth / 5) *
                                      (height / deviceHeight),
                                  color: lunabrain_beetwen)),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(
                              deviceWidth / 4, height / 400, 0, 0),
                          child: Text('BRAIN',
                              style: TextStyle(
                                  letterSpacing: 4,
                                  fontWeight: FontWeight.w500,
                                  fontSize: (deviceWidth / 5) *
                                      (height / deviceHeight),
                                  color: lunabrain_beetwen)),
                        )
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(
                          deviceWidth / 45, deviceHeight * 0.76, 0, 0),
                      child: Text('START',
                          style: TextStyle(
                              letterSpacing: 4,
                              fontWeight: FontWeight.w500,
                              fontSize:
                                  (deviceWidth / 8) * (height / deviceHeight),
                              color: Colors.white)),
                    )
                  ],
                ),
              );
            }));
  }
}
