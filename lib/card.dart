
import 'package:doctormonitoring/patient_s_profile.dart';
import 'package:doctormonitoring/resultscreen1.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:doctormonitoring/resultsdreen2.dart';
import 'package:flutter/painting.dart';

class card extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            InkWell(
              onTap:()=>Navigator.push(context,
          MaterialPageRoute(builder:(_)=>patientsprofile())),
              child: const ListTile(
                leading:  CircleAvatar(
                  radius: 40.0,
                  backgroundColor: const Color(0xFF778899),
                  backgroundImage:
                  AssetImage("images/moosa.jpg"),
                ),
                title: Text('Moosa sumer salman'),
                subtitle: Text('0783 430 3433'),

              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                cusstomButon1(context),
                const SizedBox(width: 15),
                cusstomButon(context),
                            const SizedBox(width: 8),
                DropdownButton(
                  hint: Text('other diseases',style: TextStyle(color: Colors.blue,fontWeight:FontWeight.bold,fontSize: 16),),
                  items: [

                    DropdownMenuItem(
                        child: Text("blood pressure",style: TextStyle(color: Colors.blue,fontSize: 20),),
                        value: "blood pressure"
                    ),

                    DropdownMenuItem(
                      child: Text("obesity",style: TextStyle(color: Colors.blue,fontSize: 20),),
                      value: "obesity",
                    ),
                    DropdownMenuItem(
                      child: Text("diabetes",style: TextStyle(color: Colors.blue,fontSize: 20),),
                      value: "diabetes",
                    ),
                  ],
                  onChanged: (value){

                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );

  }
  Widget cusstomButon(context){
    return InkWell(
        onTap: ()=>Navigator.push(context,
            MaterialPageRoute(builder:(_)=>resultscreen2())),

        child: Container(
          child: const Text('SpO2',style: TextStyle(
           color: Colors.blue,
              fontWeight: FontWeight.bold,
              fontSize: 20
          ),),
        ));
  }
  Widget cusstomButon1(context){
    return InkWell(
        onTap: ()=>Navigator.push(context,
            MaterialPageRoute(builder:(_)=>resultscreen1())),
        child: Container(
          child: const Text('heart rate',style: TextStyle(
              color: Colors.blue,
              fontWeight: FontWeight.bold,
              fontSize: 20
          ),),

        ));
  }

  Widget cusstomButon3(context){
    return InkWell(
        onTap: ()=>Navigator.push(context,
            MaterialPageRoute(builder:(_)=>resultscreen1())),

        );

  }


}
class card1 extends StatefulWidget {
  @override
  _card1State createState() => _card1State();}
class _card1State extends State<card1> {
  @override
  Widget build(BuildContext context) {
    return Center(

      child: Card(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            const ListTile(
              leading:CircleAvatar(
                radius: 40.0,
                backgroundColor: const Color(0xFF778899),
                backgroundImage:
                AssetImage("images/ammm.jpg"),
              ),
              //Icon(Icons.panorama),
              title: Text('Amen mahdi salim'),
              subtitle: Text('0772 318 2917'),
            ),
            SingleChildScrollView(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Container(
                  ),
                  TextButton(
                    child: const Text('Heart rate',style: TextStyle(
                        fontSize: 16,fontWeight: FontWeight.bold
                    ),),
                    onPressed: () {/* ... */},
                  ),
                  const SizedBox(width: 0),
                  TextButton(
                    child: const Text('SpO2',style: TextStyle(
                        fontSize: 16,fontWeight: FontWeight.bold
                    ),),
                    onPressed: () {/* ... */},
                  ),
                  const SizedBox(width: 5),
                  TextButton(
                    child: const Text('Tempreture',style: TextStyle(
                        fontSize: 16,fontWeight: FontWeight.bold
                    ),),
                    onPressed: () {/* ... */},
                  ),
                  const SizedBox(width: 6),
                  DropdownButton(
                    hint: Text('other diabaties',style: TextStyle(color:
                    Colors.blue,
                        fontSize: 16,fontWeight: FontWeight.bold),),
                    items: [

                      DropdownMenuItem(
                          child: Text("blood pressure",style: TextStyle(color:
                          Colors.blue
                              ,fontSize: 16),),
                          value: "blood pressure"
                      ),

                      DropdownMenuItem(
                        child: Text("obesity",style: TextStyle(color: Colors.blue
                            ,fontSize: 16),),
                        value: "obesity",
                      ),
                      DropdownMenuItem(
                        child: Text("diabetes",style: TextStyle(color: Colors.blue,fontSize: 16),),
                        value: "diabetes",
                      ),
                    ],
                    onChanged: (value){

                    },
                  ),

                ],

         ),
            ),


          ],
        ),
      ),
    );
  }
}


class card2 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            const ListTile(
              leading:  CircleAvatar(
                radius: 40.0,
                backgroundColor: const Color(0xFF778899),
                backgroundImage:
                AssetImage("images/hu.jpg"),
              ),
              title: Text('husien abdulrahem mohammed'),
              subtitle: Text('0772 140 5476'),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                TextButton(
                  child: const Text('hert rate',style: TextStyle(
                      fontSize: 20
                  ),),
                  onPressed: () {/* ... */},
                ),
                const SizedBox(width: 8),
                TextButton(
                  child: const Text('SpO2',style: TextStyle(
                      fontSize: 20
                  ),),
                  onPressed: () {},
                ),
                const SizedBox(width: 8),


              ],
            ),
          ],
        ),
      ),
    );
  }
}








