import 'package:doctormonitoring/header.dart';
import 'package:doctormonitoring/login_signin_page.dart';
import 'package:doctormonitoring/loginpage.dart';
import 'package:doctormonitoring/card.dart';
import 'package:doctormonitoring/loginpage.dart';
import 'package:doctormonitoring/loginpage.dart';
import 'package:doctormonitoring/patient_s_profile.dart';
import 'package:doctormonitoring/profile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class mainscreen extends StatefulWidget {
  @override
  _mainscreenState createState() => _mainscreenState();
}
class _mainscreenState extends State<mainscreen> {
    @override
  void initState(){
    super.initState();
     }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        //drawer
        iconTheme: IconThemeData(color: Colors.blue),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.add,
              color: Colors.blue,size: 30,
            ),
            onPressed: () {
            Navigator.push(context,
                  MaterialPageRoute(builder:(_)=>patientsprofile()));//loginpage
            },
          )
        ],
      ),
      body: ListView
        (children:[
          header(),
      Stack(
        children: [
//يخص الكلمات
          Container(
            margin: const EdgeInsets.only(
              left: 16.0, bottom: 12.0),
            child: Row(
              children: [
                const SizedBox(width: 12.0,),
                InkWell(
                  child: Text('patients',style: TextStyle(
                    color:Colors.blue,
                    fontSize: 18
                  ),),
                ),
                const SizedBox(width: 30.0,),
                const SizedBox(width: 30.0,),

              ],
            ),
          ),
        /*  AnimatedPositioned
            (duration: const Duration(microseconds: 350),
            curve: Curves.fastOutSlowIn,
            //left: _selectorpositionX,
            bottom: 4.0,
            child: Container(
              //width: _selectwidth,
              height: 4.0,
              decoration: ShapeDecoration(
                shape: StadiumBorder(),
                color: Colors.white,
              ),
            ),
          )*/

        ],
      ),
        card(),
        card1(),
        card2(),
 ]),


//--------------------------***************************************************--------------------------------------------------------------------------------------------
    drawer: Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            decoration:BoxDecoration(
              gradient: LinearGradient(
                colors:[Colors.cyan,Colors.grey]
              )
            ) ,
            child: Container(
              child: Column(
                children: [
                  Material(
                    borderRadius: BorderRadius.all(Radius.circular(50.0)),
                    elevation: 10,
                    child:Padding(
                      padding: EdgeInsets.all(15.0),
                   child: Image.asset('images/doc22.jpg',width: 80
                     ,height: 80,fit: BoxFit.cover,),
                  )
                  ),
                  Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: Text('Dr.ahmed ali',style: TextStyle
                      (color: Colors.white,
                 fontSize: 20 ),),
                  )
                ],
              ),
            )
          ),
          customlist(Icons.person,'Profile',()=>{
          Navigator.push(context,
          MaterialPageRoute(builder:(_)=>profile()))
          }),
          customlist(Icons.settings,'Settings',()=>{}),
          customlist(Icons.lock,'Log Out',()=>{})

        ],
      ),
    ),
    );

  }}
class customlist extends StatelessWidget {
  IconData icon;
  String text;
  Function ontap;
  customlist(this.icon,this.text,this.ontap);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0.8,0,0.8,0),
      child: InkWell(
        splashColor: Colors.cyan,
        onTap: ontap,
        child: Container(
          height: 50.0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
            Row(
              children: [
                Icon(icon),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(text,style: TextStyle(
                    fontSize: 16.0
                  ),),
                ),
              ],
            ),
              Icon(Icons.arrow_right)
            ],
          ),
        ),
      ),
    );
  }
}

//--------------------------------***************************************************---------------------