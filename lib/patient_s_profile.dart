import 'package:doctormonitoring/resultscreen1.dart';
import 'package:doctormonitoring/resultsdreen2.dart';
import 'package:flutter/animation.dart';
import 'package:flutter/material.dart';



class patientsprofile extends StatelessWidget {

  double width; double height;
  @override
  Widget build(BuildContext context) {
    width=MediaQuery.of(context).size.width;
         height=MediaQuery.of(context).size.height;
    return Stack(
      fit: StackFit.expand,
      children: [
        Container(
decoration: BoxDecoration(

  // gradient: LinearGradient(
  //   colors: [
  //     Color.fromARGB(4, 9, 35, 1),
  //     Color.fromARGB(39, 200, 171, 1)
  //   ],
  //   begin: FractionalOffset.bottomCenter,
  //   end: FractionalOffset.topCenter
  // )

  //
    gradient: LinearGradient(
        begin: FractionalOffset.bottomCenter,
       end: FractionalOffset.topCenter,
        colors: [Colors.white, Colors.white])

//color: Colors.white
),
        ),
        Scaffold(
backgroundColor: Colors.transparent,
          body: SingleChildScrollView(
            child:Column(

              children: [

                Row(children: [],),
               SizedBox(height: 70,),
                Text('patients profile',textAlign:TextAlign.center
                  ,style: TextStyle(color: Colors.cyan,fontSize: 26,
                    ),),
                SizedBox(height: 28,),
                Container(

                  height: height*0.4,
                  child: LayoutBuilder(
                    builder: (context,constrains) {
                      double innereight=constrains.maxHeight;
                      double innerwidth=constrains.maxWidth;


                     return Stack(
                       fit: StackFit.expand,
                        children: [
                          Positioned(
                            bottom: 0, left: 0, right: 0,
                            child: Container(
                              height: innereight * 0.65,
                              width: innerwidth,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),

                                color: Colors.cyan,
                              ),
                              child: Column(
                                children: [
                                  SizedBox(
                                    height: 80,
                                  ),
                                  Text('moosa sumer',style: TextStyle(
                                    color: Colors.white,fontSize: 25
                                  ),),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Column(
                                        children: [
                                          Text('Patient age  ',style: TextStyle(
                                            color:Colors.white,fontSize: 21
                                          ),),
                                          SizedBox(height: 10,),
                                          Text('22',style: TextStyle(
                                              color:Colors.white60,fontSize: 21
                                          ),),
                                     ],
                                      ),

                                      Padding(
                                        padding: const EdgeInsets.symmetric(horizontal: 38,
                                            vertical: 8),
                                        child: Container(
                                             height:40 ,
                                          width: 5,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(100),
                                            color:Colors.white60,
                                          ),
                                        ),
                                      ),
                                      SizedBox(width: 20,),
                                      Column(
                                        children: [
                                          Text('Gender  ',style: TextStyle(
                                              color:Colors.white,fontSize: 21
                                          ),),
                                          SizedBox(height: 10,),
                                          Text('female',style: TextStyle(
                                              color:Colors.white60,fontSize: 21
                                          ),),
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              ),

                            )
                          ),
                          Positioned(
                            top:0,left:0,right:0,
                            child: Center(
                              child: Container(
                      // decoration:BoxDecoration(
                      // borderRadius: BorderRadius.all(Radius.circular(50.0)
                      // ),
                      // ),
// child: Image.asset("images/ameen.jpg",),
                              child:Image.asset("images/ameen.jpg",
                                width: innerwidth*0.4,
                                fit:BoxFit.fitWidth,
                                  ),),
                            ),
                          ),
                            ],
                      );

                    }, ),
                ),
                SizedBox(height: 25,),
                Container(
                  height: height *0.5,
                  width: width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.white,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal:15),
                    child: Column(
                      children: [
                        SizedBox(height: 10,),
                        Text("information :",style: TextStyle(
                          color: Colors.cyan,fontSize: 25,
                        ),),
                        Divider(
thickness: 2.5,
                        ),
                        SizedBox(height: 10,),
                        Container(
                         //height:70,
decoration: BoxDecoration(
  color:Colors.cyan,
  borderRadius: BorderRadius.circular(30)
),

                       child: Padding(
                         padding: const EdgeInsets.all(20.0),
                         child: Column(
                           children: [
                            // height: 60,
                            //  TextButton(
                            //    child: Padding(
                            //      padding: const EdgeInsets.only(right:230),
                            //      child: Text('SpO2 link :', style: TextStyle(color: Colors.white,
                            //        fontSize: 18,),),
                            //    ),
                            //
                            //    onPressed: () {/* ... */},
                            //  ),
                             SizedBox(height: 20,),
                             cusstomButon(context),
                             SizedBox(height: 20,),
                             Divider(thickness: 2.5,),
                             SizedBox(height: 20,),
                             // TextButton(
                             //   child: Padding(
                             //     padding: const EdgeInsets.only(right:230),
                             //     child: Text('Heart rate', style: TextStyle(color: Colors.white,
                             //       fontSize: 18,),),
                             //   ),
                             //   onPressed: () {},
                             // ),
                             cusstomButon1(context),
                             SizedBox(height: 20,),
                             Divider(thickness: 2.5,),
                             SizedBox(height: 20,),
                             // TextButton(
                             //   child: Padding(
                             //     padding: const EdgeInsets.only(right:230),
                             //     child: Text('Tempreture', style: TextStyle(color: Colors.white,
                             //       fontSize: 18,),),
                             //   ),
                             //
                             //   onPressed: () {/* ... */},
                             // ),
                             cusstomButon2(context),
                           ],
                         ),
                       ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ) ,
          ),
        ),
      ],
    );
  }
}
Widget cusstomButon(context){
  return InkWell(
      onTap: ()=>Navigator.push(context,
          MaterialPageRoute(builder:(_)=>resultscreen2())),

      child: Padding(
        padding: const EdgeInsets.only(right: 230),
        child: Container(
          child: const Text('SpO2 link :',style: TextStyle(
              color: Colors.white,
              fontSize: 20
          ),),
        ),
      ));
}
Widget cusstomButon1(context){
  return InkWell(
      onTap: ()=>Navigator.push(context,
          MaterialPageRoute(builder:(_)=>resultscreen1())),
      child: Padding(
        padding: const EdgeInsets.only(right: 200),
        child: Container(
          child: const Text('Heart rate link :',style: TextStyle(
              color: Colors.white,
              fontSize: 20
          ),),

        ),
      ));
}
Widget cusstomButon2(context){
  return InkWell(
      onTap: ()=>Navigator.push(context,
          MaterialPageRoute(builder:(_)=>resultscreen1())),
      child: Padding(
        padding: const EdgeInsets.only(right: 210),
        child: Container(
          child: const Text('Tempreture :',style: TextStyle(
              color: Colors.white,
              fontSize: 20
          ),),

        ),
      ));
}
