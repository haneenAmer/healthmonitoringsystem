import 'package:doctormonitoring/mainsreen.dart';
import 'package:flutter/material.dart';
class loginpage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
    );}}
//--------------------------------------
class InputWrapper extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Padding(padding: EdgeInsets.all(30),
      child:Column(
        children:<Widget> [
          SizedBox(height: 10,),
          Container
            (decoration: BoxDecoration(
              color: Colors.white,borderRadius: BorderRadius.circular(10)),
            child:Inputfield() ,),
          SizedBox(height: 40,),
          pic(),
          SizedBox(height: 40,),
          Button(),
        ],
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
                  hintText: "Enter your name ",
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
                  hintText: "Enter your e-mail",
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
                  hintText: "Enter passwor",
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
                  hintText: "confirm password",
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
      margin: EdgeInsets.symmetric(horizontal: 100),
      decoration: BoxDecoration(
        color: Colors.cyan[500],
        borderRadius: BorderRadius.circular(50),
      ),
      child: Center(
        child: TextButton(
            child:Text(
              'Done ',style:TextStyle(
                color: Colors.white,fontSize: 15,
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
            child: Text("Hello Doctor ",style: TextStyle(
              color: Colors.white,fontSize: 40,
            ),),
          ),
          SizedBox(height: 10),
          Center(
            child: Text("Please enter your information",style: TextStyle(
              color: Colors.white,fontSize: 18,
            ),),
          )
        ],
      ),
    );

  }
}




class pic extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      margin: EdgeInsets.symmetric(horizontal: 2),
      decoration: BoxDecoration(
        color: Colors.grey[300],
        //borderRadius: BorderRadius.circular(10),
      ),
      child: Center(
        child: Text("add your photo ",style: TextStyle(
            color: Colors.black54,fontSize: 20,
            fontWeight: FontWeight.bold
        ),),

      ),
    );
  }
}

