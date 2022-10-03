import 'package:doctormonitoring/dotor_signin.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'mainsreen.dart';

class login_signin_page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: Column(

        children: [
          SizedBox(height:50),
          Container(
          height: 300.0,
          width: 700.0,
padding: EdgeInsets.all(0),
decoration: BoxDecoration(

borderRadius: BorderRadius.circular(500),
),
child: Center(
child: Image.asset('images/logo12.jpg',),

),
 ),
          Padding(
            padding: EdgeInsets.all(10),
            child: TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'User Name',
                  hintText: 'Enter valid mail id as abc@gmail.com'
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(10),
            child: TextField(
              obscureText: true,
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Password',
                  hintText: 'Enter your secure password'
              ),
            ),
          ),

          FlatButton(
            child: Text(
              'Forgot Password',
              style: TextStyle(color: Colors.blue, fontSize: 15),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            height: 50,
            width: 250,
            decoration: BoxDecoration(
                color: Colors.cyan, borderRadius: BorderRadius.circular(20)),
            child: FlatButton(
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (_) => mainscreen()));
              },
              child: Text(
                'Login',
                style: TextStyle(color: Colors.white, fontSize: 25),
              ),
            ),
          ),
         SizedBox(
            height: 20,
          ),
          InkWell
            (child: Text('New doctor ? Create Account'),
            onTap: ()=>Navigator.push(context,
                MaterialPageRoute(builder:(_)=>loginpage())),
          )
        ],
      ),
    );
  }
}
