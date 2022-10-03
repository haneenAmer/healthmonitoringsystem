import 'dart:ui';
import 'package:doctormonitoring/mainsreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class loginpage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //most important thing in life
        resizeToAvoidBottomInset: false,
        body: Container(
          width: double.infinity,
          decoration: BoxDecoration(
              gradient: LinearGradient(begin: Alignment.topCenter,
                  colors: [
                    Colors.cyan[500],
                    Colors.cyan[300],
                    Colors.cyan[400],

                  ])
          ),

          child: Column(
            children: [

              SizedBox(height:24 ),
              heder(),
              Expanded(child:Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(60),
                      topRight:  Radius.circular(60),
                    )
                ),
                child: InputWrapper(),
              ))
            ],
          ),

        )
    );

  }
}

//--------------------------------------
class InputWrapper extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Padding(padding: EdgeInsets.all(30),
      child:ListView(

        children:[Column(
          children:<Widget> [
            SizedBox(height: 10,),
            Container
              (
              decoration: BoxDecoration(
                  color: Colors.white,borderRadius: BorderRadius.circular(10)
              ),
              child:Inputfield() ,),
            /*SizedBox(height: 40,),
            Text('forget password ?',style: TextStyle(color: Colors.grey,fontSize: 12),*/

            SizedBox(height: 4,),
          //  pic(),

            Button(),

          ],

        ),]
      ),
    );
  }
}
class Inputfield extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        children:<Widget> [
          Container(
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
                border:Border(
                    bottom: BorderSide(
                        color: Colors.grey[200]
                    )
                )
            ),
            child: TextField(
              decoration: InputDecoration(
                  hintText: "Enter panient's name ",
                  helperStyle: TextStyle(color: Colors.grey),
                  border: InputBorder.none
              ),
            ),
          ),

          Container(
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
                border:Border(
                    bottom: BorderSide(
                        color: Colors.grey[200]
                    )
                )
            ),
            child: TextField(
              decoration: InputDecoration(
                  hintText: "Enter panient's phone number",
                  helperStyle: TextStyle(color: Colors.grey),
                  border: InputBorder.none
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
                border:Border(
                    bottom: BorderSide(
                        color: Colors.grey[200]
                    )
                )
            ),
            child: TextField(
              decoration: InputDecoration(
                  hintText: "Enter SpO2 link",
                  helperStyle: TextStyle(color: Colors.grey),
                  border: InputBorder.none
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
                border:Border(
                    bottom: BorderSide(
                        color: Colors.grey[200]
                    )
                )
            ),
            child: TextField(
              decoration: InputDecoration(
                  hintText: "Enter SpO2 link",
                  helperStyle: TextStyle(color: Colors.grey),
                  border: InputBorder.none
              ),
            ),
          ),


          Container(
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
                border:Border(
                    bottom: BorderSide(
                        color: Colors.grey[200]
                    )
                )
            ),
            child: TextField(
              decoration: InputDecoration(
                  hintText: "Enter panient's Age",
                  helperStyle: TextStyle(color: Colors.grey),
                  border: InputBorder.none
              ),
            ),
          ),

          Container(
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
                border:Border(
                    bottom: BorderSide(
                        color: Colors.grey[200]
                    )
                )
            ),
            child: TextField(
              decoration: InputDecoration(
                  hintText: "Male / Female",
                  helperStyle: TextStyle(color: Colors.grey),
                  border: InputBorder.none
              ),
            ),
          ),
        ],
      ),
    );
  }
}
class Button extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      margin: EdgeInsets.symmetric(horizontal: 50),
      decoration: BoxDecoration(
        color: Colors.cyan[500],
        borderRadius: BorderRadius.circular(50),
      ),
      child: Center(
        child: TextButton(
           child:Text(
             'Done ',style:TextStyle(
               color: Colors.white,fontSize: 24,
               fontWeight: FontWeight.bold
           ),),
            onPressed: () { Navigator.push(context,
                MaterialPageRoute(builder:(_)=>mainscreen()));}
           ),
      ),);
  }
}

class heder extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(padding: EdgeInsets.all(20),
      child: Column(

        crossAxisAlignment: CrossAxisAlignment.start,
        children:<Widget> [
          Center(
            child: Text("Welcom !",style: TextStyle(
              color: Colors.white,fontSize: 40,
            ),),
          ),
          SizedBox(height: 10),
          Center(
            child: Text("Please enter the patient's information",style: TextStyle(
              color: Colors.white,fontSize: 18,
            ),),
          )
        ],
      ),
    );

  }
}

