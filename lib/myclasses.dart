import 'package:flutter/material.dart';
class Myclasses extends StatefulWidget {
  @override
  _MyclassesState createState() => _MyclassesState();
}

class _MyclassesState extends State<Myclasses> {
  String monday="";
  var SundayListdata=[
    {
      "title":"title",
      "des":"description",
      "timimgs":"1:3"
    },
    {
      "title":"title",
      "des":"description",
      "timimgs":"1:3"
    },
    {
      "title":"title",
      "des":"description",
      "timimgs":"1:3"
    },
  ];
  List mondaylists=[
    {
      'title':"Children running 1 on 1 course",
      "des":"description",
      "timimgs":"1:3"
    },
    {
      "title":"Children boxing 1 on 1 course",
      "des":"description",
      "timimgs":"1:3"
    },
    {
      "title":"Children music 1 on 1 course",
      "des":"description",
      "timimgs":"1:3"
    },
    {
      "title":"Children music 1 on 1 course",
      "des":"description",
      "timimgs":"1:3"
    },
  ];

  List<String> mondaylist=["gbdxd","ghbjuhbj","uhsbeuhdxej "];
  String Activedate="20";
  List<String> days=["Sun","Mon","Tue","Wed","Thur","Fri","Sat"];
  List<String> dates=["25","26","27","28","29","30","31"];
  List<String> titles=["Children running 1 on 1 course","Children boxing 1 on 1 course","Children music 1 on 1 course","Children running 1 on 1 course"];
  List<String> timings=["13:00AM-14:00AM","14:00AM-15:00AM","15:00Am-16:00Am","16:00AM-17:00Am"];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: Container(
            color: Color(0xFFffffff),
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(height: 15,),
                  Text("My Classes",style: TextStyle(color: Color(0xFF3e3e3e),fontSize: 18,fontWeight: FontWeight.w800),),
                  SizedBox(height: 20,),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: [
                        BoxShadow(
                          color:Color(0xFFf3f3f3),
                          offset: const Offset(
                            1.0,
                            5.0,
                          ),
                          blurRadius: 3.0,
                          spreadRadius: 2.0,
                        ),
                      ],
                    ),
                    child: Row(
                      children: [
                        Container(
                          alignment: Alignment.center,
                          height: 40,
                          width:MediaQuery.of(context).size.width*0.3,
                          color: Color(0xFF48a77d),
                          child: Text("List",style: TextStyle(color: Colors.white,fontSize: 15),),
                        ),
                        Container(
                          alignment: Alignment.center,
                          height: 40,
                          width:MediaQuery.of(context).size.width*0.29,
                          color: Colors.white,
                          child: Text("week",style: TextStyle(color: Colors.black,fontSize: 15),),
                        ),
                        Container(
                          alignment: Alignment.center,
                          height: 40,
                          width:MediaQuery.of(context).size.width*0.29,
                          color: Colors.white,
                          child: Text("Month",style: TextStyle(color: Colors.black,fontSize: 15),),
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 15,),
                  Row(
                    children: [
                      Text("25",style: TextStyle(color: Color(0xFF696a6b),fontSize: 32,fontWeight: FontWeight.w700),),
                      SizedBox(width: 3,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Fri",style: TextStyle(color: Colors.black12),),
                          Text("Sep2020",style: TextStyle(color: Colors.black12),)
                        ],
                      ),
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
                              monday=mondaylists[index]["title"];
                            });
                          },
                          child: Days(
                            day: days[index],
                            date: dates[index],
                            Activedate: Activedate,
                            monday: monday,
                          ),
                        );
                      },
                    ),
                  ),
                  SizedBox(height: 20,),
                  Container(
                    height: 450,
                    child: ListView.builder(
                      itemCount: titles.length,
                      shrinkWrap: true,
                      scrollDirection: Axis.vertical,
                      itemBuilder: (context,index){
                        return Myclass(
                          title:titles[index],
                          timing: timings[index],
                          monday: mondaylists[index]["title"],

                        );
                      },
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class Myclass extends StatefulWidget {
  const Myclass({
    this.title,
    this.timing,
    this.monday,
    this.mondaylists,

  }) ;
  final String title;
  final String timing;

  final String monday;
  final String mondaylists;

  @override
  _MyclassState createState() => _MyclassState();
}

class _MyclassState extends State<Myclass> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
            child: Text("13:00",style: TextStyle(color: Color(0xFFe2e2e4)),)),
        SizedBox(width: 2,),
        Padding(
          padding: const EdgeInsets.only(top:8.0),
          child: Container(
            height: 100,
            width:270,
            decoration: BoxDecoration(
              color: Color(0xFFf9f9f9),
            borderRadius: BorderRadius.circular(5),
          ),
            child: Padding(
              padding: const EdgeInsets.only(left:5.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 5,),
                  Text(widget.monday,style: TextStyle(color: Colors.black,fontSize: 15,fontWeight:FontWeight.w700),),
                  Text(widget.timing),
                  SizedBox(height: 10,),
                  Row(
                    children: [
                      CircleAvatar(
                        backgroundImage: AssetImage("img/guitor.jpg"),
                        radius: 20,
                      ),
                      SizedBox(width: 3,),
                      CircleAvatar(
                        backgroundImage: AssetImage("img/music.jpg"),
                        radius: 20,
                      ),
                      SizedBox(width: 5,),
                      Text("+2Children",style: TextStyle(color: Colors.black54,),)
                    ],
                  )
                ],
              ),
            ),
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
    this.mondaylists,
    this.monday
  }) ;
  final String day;
  final String date;
  final Function onTap;
  final String Activedate;
  final String mondaylists;
  final String monday;

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
              height: 45,
              width: 40,
              decoration: widget.Activedate != widget.date?BoxDecoration(color: Colors.grey):BoxDecoration(
                  color:Color(0xFF48a77d)
              ),
              child: Padding(
                padding: const EdgeInsets.only(top:6.0),
                child: Container(
                  alignment: Alignment.center,
                  child: Column(
                    children: [
                      Text(widget.day,style: TextStyle(color: Colors.white),),
                      Text(widget.date,style: TextStyle(color: Colors.white),)
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
