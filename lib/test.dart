
import 'package:flutter/material.dart';
import 'login_signin_page.dart';

class PlaceDetailsState extends State {
  @override
  Widget build(BuildContext context) {
    double statusBarHeight = MediaQuery.of(context).padding.top;
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    setState(() {
      print(height);
    });
    return Scaffold(
      body: Container(
          padding: EdgeInsets.only(top: statusBarHeight * 0.8),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                'assets/images/place2.jpg', ),
              fit: BoxFit.fill,
            ),
          ),
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                SizedBox(height: height * 0.4,),
                ClipRRect(
                  borderRadius: BorderRadius.only(topRight: Radius.circular(30), topLeft: Radius.circular(30)),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,

                    ),
                    child: Column(
                      children: <Widget>[
                        SizedBox(height: height * 0.03,),
                        Container(height: height * 0.01, width: width * 0.1,color: Colors.pink,),
                        SizedBox(height: height * 0.031,),
                        Container(
                          width: width,
                          margin: EdgeInsets.only(left: 10),
                          child: Text('PLACES', textAlign: TextAlign.left, style: TextStyle(fontSize: 30),),
                        ),
                        SizedBox(height: height * 0.02,),
                        Places(),
                        Places(),
                        Places(),
                        Places(),
                        Places(),


                      ],
                    ),
                  ),
                )
              ],
            ),
          )),
    );
  }
}

class Places extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double statusBarHeight = MediaQuery.of(context).padding.top;
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30),
      ),
      elevation: 10.0,
      child: Container(
          width: width * 0.9,
          child: Row(children: <Widget>[
            ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(20)),
              child: Container(
                width: width * 0.25,
                child: Image.asset('assets/images/place.jpg'), ),
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.6,
              child: Column(
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.only(left: 10),
                    child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Heading',
                          textAlign: TextAlign.left,
                        )),
                  ),
                  Container(
                      padding: EdgeInsets.only(left: 10, top: 4),
                      child: Text(
                          'sit amet facilisis magna etiam tempor orci eu lobortis elementum'))
                ],
              ),
            )
          ])),
    );
  }
}