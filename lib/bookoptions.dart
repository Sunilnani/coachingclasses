import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class Bookoptions extends StatefulWidget {
  @override
  _BookoptionsState createState() => _BookoptionsState();
}

class _BookoptionsState extends State<Bookoptions> {
  String Activedate="20";
  String Activetime="";
  List<String> days=["Sun","Mon","Tue","Wed","Thur","Fri","Sat"];
  List<String> dates=["25","26","27","28","29","30","31"];
  List<String> times=["11:00","12:00","1:00","2:00","3:00","4:00"];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(height: 5,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(Icons.chevron_left_outlined,size: 29,color: Colors.black54,),
                        Text("Book Options",style: TextStyle(color: Color(0xFF393939),fontSize: 18,fontWeight: FontWeight.w700),),
                        Container()
                      ],
                    ),
                    SizedBox(height: 15,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 105,
                          width: 90,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(3),
                            color: Color(0xFFd2dadd)
                          ),
                          child: Image.asset("img/guitor2.png",height: 150,),
                        ),
                        Container(
                          height: 105,
                          width: 225,
                          alignment: Alignment.topLeft,
                            child: Column(
                              children: [
                                Container(child: Text("Specialist Sing Class for young toddlers(Yrs 3-5 +.)",style: TextStyle(color: Colors.black54,fontSize: 17,fontWeight: FontWeight.w600),)),
                                SizedBox(height: 5,),
                                Container(
                                  alignment: Alignment.topLeft,
                                  child: Row(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(bottom:15.0),
                                        child: Icon(Icons.access_time,size: 15,color: Colors.black12,),
                                      ),
                                      Container(
                                        height: 30,
                                          width: 210,
                                          child: Text("Every Tuesday at 11:00 hrs. Starting from Sep 29,2020",style: TextStyle(color: Colors.black12),))
                                    ],
                                  ),
                                ),
                                Row(
                                  children: [
                                    Icon(Icons.location_on,size: 20,color: Colors.black12,),
                                    Text("On-Location",style: TextStyle(color: Colors.black12),)
                                  ],
                                )
                              ],
                            ),
                        ),
                      ],
                    ),
                    SizedBox(height: 25,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Selected Date",style: TextStyle(color: Color(0xFF7e7e80),fontSize: 15,fontWeight: FontWeight.w700),),
                        Row(
                          children: [
                            Text("View calender",style: TextStyle(color: Colors.black12),),
                            Icon(Icons.keyboard_arrow_right,size: 20,color: Colors.black12,)
                          ],
                        )
                      ],
                    ),
                    SizedBox(height: 15,),
                    Container(
                      height: 50,
                      child: ListView.builder(
                        itemCount: dates.length,
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context,index){
                          return InkWell(
                            onTap: (){
                              setState(() {
                                Activedate= dates[index];
                              });
                            },
                            child: Days(
                              day: days[index],
                              date: dates[index],
                              Activedate: Activedate,
                            ),
                          );
                        },
                      ),
                    ),
                    SizedBox(height: 25,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Selected Time",style: TextStyle(color: Colors.black54,fontSize: 15,fontWeight: FontWeight.w700),),
                        Row(
                          children: [
                            Text("Show more times",style: TextStyle(color: Colors.black12),),
                            Icon(Icons.keyboard_arrow_right,size: 20,color: Colors.black12,)
                          ],
                        )
                      ],
                    ),
                    SizedBox(height: 15,),
                    Container(
                      height: 50,
                      child: ListView.builder(
                        itemCount: times.length,
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context,index){
                          return InkWell(
                            onTap: (){
                              setState(() {
                                Activetime= times[index];
                              });
                            },
                            child: Times(
                              time: times[index],
                              Activetime: Activetime,
                            ),
                          );
                        },
                      ),
                    ),
                    SizedBox(height: 25,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Select Kid(s)",style: TextStyle(color: Colors.black54,fontSize: 15,fontWeight: FontWeight.w700),),
                        Icon(Icons.add,size: 25   ,color: Colors.black12,)
                      ],
                    ),
                    Row(
                        children: [
                          Stack(
                              children: [
                                Container(
                                  height: 40 , width: 70,
                                  decoration: BoxDecoration(
                                      color: Color(0xFFc9ebdd),
                                      border: Border(left: BorderSide(color: Colors.green),right: BorderSide(color: Colors.green),bottom: BorderSide(color: Colors.green),top: BorderSide(color: Colors.green),)
                                  ),
                                  child: Center(child: Text("Alina")),
                                ),
                              ]
                          )

                          ,
                          SizedBox(width: 10,),
                          Container(
                            height: 40 , width: 70,
                            decoration: BoxDecoration(
                              color: Colors.black12,
                            ),
                            child: Center(child: Text("Wangli")),
                          )
                        ]
                    ),
                    SizedBox(height: 15,),
                    Container(
                      alignment: Alignment.centerLeft,
                        child: Text("Location",style: TextStyle(color: Colors.black54,fontSize: 15,fontWeight: FontWeight.w700),)),
                    SizedBox(height: 15,),
                    Padding(
                      padding: const EdgeInsets.only(right:148.0),
                      child: Container(
                        height: 40,
                        width: 180,
                        child: Text("Park Plaza towers 1, Floor 60, Flat A, Futian, Shenzhen",style: TextStyle(color: Colors.black12,fontSize: 13,fontWeight: FontWeight.w600),),
                      ),
                    ),
                    SizedBox(height: 20,),
                    Container(
                      alignment: Alignment.centerLeft,
                        child: Text("Notes for coach(optional)",style: TextStyle(color: Colors.black54,fontSize: 15,fontWeight: FontWeight.w700),)
                    ),
                    SizedBox(height: 10,),
                    Container(
                      width:MediaQuery.of(context).size.width,
                      child: RaisedButton(onPressed: (){},color: Color(0xFF48a77d),textColor: Colors.white,shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(5.0))),
                        child: Text('Next Step',style: TextStyle(fontSize: 15),),
                      ),

                    ),
                  ],
                ),
            ),
          ),
        ),
      ),
    );
  }
}

class Times extends StatefulWidget {
  const Times({
    this.time,
    this.Activetime,
    this.onTap,
    Key key,
  }) : super(key: key);
  final String time;
  final String Activetime;
  final Function onTap;

  @override
  _TimesState createState() => _TimesState();
}

class _TimesState extends State<Times> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(right:3.0),
          child: Container(
            alignment: Alignment.center,
            height: 30,
            width: 55,
            decoration: widget.Activetime !=widget.time? BoxDecoration(borderRadius:BorderRadius.circular(3),color: Colors.black12):BoxDecoration(
              borderRadius: BorderRadius.circular(6),
              color: Color(0xFF48a77d)
            ),
            child:Text(widget.time,style: TextStyle(color: Colors.black54),) ,
          ),
        )
      ],
    );
  }
}
class Days extends StatefulWidget {
  const Days({
    this.day,
    this.date,
    this.onTap,
    this.Activedate,
  }) ;
  final String day;
  final String date;
  final Function onTap;
  final String Activedate;

  @override
  _DaysState createState() => _DaysState();
}

class _DaysState extends State<Days> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(right:7.0),
            child: Container(
              height: 50,
              width: 40,
              decoration: widget.Activedate != widget.date?BoxDecoration(color: Colors.black12,borderRadius: BorderRadius.circular(3)):BoxDecoration(
                  color:Color(0xFF48a77d),
                borderRadius: BorderRadius.circular(3)
              ),
              child: Padding(
                padding: const EdgeInsets.only(top:6.0),
                child: Container(
                  alignment: Alignment.center,
                  child: Column(
                    children: [
                      Text(widget.day,style: TextStyle(color: Colors.black54),),
                      SizedBox(height: 4,),
                      Text(widget.date,style: TextStyle(color: Colors.black54),)
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}