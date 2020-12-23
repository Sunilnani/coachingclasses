import 'package:flutter/material.dart';
import 'package:flutter_coachingcenter/myclasses.dart';

import 'bookoptions.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatefulWidget {

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyBottomNavigation(),
    );
  }
}
class MyBottomNavigation extends StatefulWidget {
  @override
  _MyBottomNavigationState createState() => _MyBottomNavigationState();
}

class _MyBottomNavigationState extends State<MyBottomNavigation> {
  String activeImages="";
  Color color=Colors.white;
  List<Color>colors=[Colors.black,Colors.red,Colors.yellow];
  List<String> images=["img/shoes.png","img/piono1.png","img/arts1.png","img/bulb.png"];
  List<String> imagesnames=["Sports","Music","Sport","Musics",];
  List<String> upcomingimages=["img/guitor.jpg","img/music.jpg",];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: Color(0xFFf9f9f9),
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 15,),
                Container(
                    alignment: Alignment.centerLeft,
                    child: Text("Hi, Alina!",style: TextStyle(color: Color(0xFF414141),fontSize: 18,fontWeight: FontWeight.w800),)),
                SizedBox(height: 25,),
                Container(
                  height:44,
                  child:TextField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      prefixIcon: Icon(Icons.search,size: 25,color: Color(0xFFb1b3b2),),
                      hintText: "Music",
                      hintStyle: TextStyle(color: Color(0xFFccccce),
                          fontSize: 15),

                      enabledBorder: OutlineInputBorder(

                          borderRadius: BorderRadius.circular(8),
                          borderSide: BorderSide(

                              color: Colors.white
                          )
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 25,),
                Stack(
                  children: [
                    Container(
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: Image.asset("img/mike.jpg"),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top:45.0,left: 25,right: 95),
                      child: Text("Why You Should Choose Dragon Couch?",style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.w700),),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top:100.0,left: 25),
                      child: Text("There are many good teachers",style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.w500),),
                    )
                  ],
                ),
                SizedBox(height: 25,),
                Container(
                    alignment: Alignment.centerLeft,
                    child: Text("Features",style: TextStyle(color: Color(0xFF8f9092),fontSize: 18,fontWeight: FontWeight.w800),)
                ),
                SizedBox(height: 12,),
                Container(
                  height: 100,
                  child: ListView.builder(
                    itemCount: images.length,
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context,index){
                      return InkWell(
                        child: Features(
                          onTap: (){
                            setState(() {
                              activeImages = images[index];
                            });
                          },
                          image: images[index],
                          imagename: imagesnames[index],
                          activeImages: activeImages,
                        ),
                      );
                    },
                  ),
                ),
                SizedBox(height: 5,),
                Container(
                    alignment: Alignment.centerLeft,
                    child: Text("My Upcoming Classes",style: TextStyle(color: Color(0xFF6d6e70),fontSize: 18,fontWeight: FontWeight.w800),)
                ),
                SizedBox(height: 5,),
                Container(
                  height: 200,
                  child: ListView.builder(
                    itemCount: upcomingimages.length,
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context,index){
                      return Newclasses(
                        images: upcomingimages[index],
                      );
                    },
                  ),
                ),

              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon:IconButton(icon: Icon(Icons.home,size:28,color: Color(0xFFdddde5),),
              onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>Myclasses()));
          },),
            label: "home"
          ),
          BottomNavigationBarItem(icon:IconButton(icon: Icon(Icons.notifications,size: 28,color: Color(0xFFdddde5),), onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>Myclasses()));
          }),
            label: "classes"
          ),
          BottomNavigationBarItem(icon:IconButton(icon: Icon(Icons.book,size: 28,color: Color(0xFFdddde5),), onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>Myclasses()),
            );
          }),
            label: "notifications"
          ),
          BottomNavigationBarItem(icon:IconButton(icon: Icon(Icons.person,size: 28,color: Color(0xFFdddde5),), onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>Bookoptions()),
            );
          }),
              label: "profile"
          )
        ],
      ),
    );
  }
}




class Newclasses extends StatelessWidget {
  const Newclasses({
    this.images,
    Key key,
  }) : super(key: key);
  final String images;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(right:10.0),
          child: Container(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.asset(images,fit: BoxFit.cover,height: 160,),
            ),
          ),
        )
      ],
    );
  }
}

class Features extends StatefulWidget {
  const Features({
    this.image,
    this.imagename,
    this.onTap,
    this.activeImages,

  }) ;
  final String image;
  final String imagename;
  final Function onTap;
  final String activeImages;

  @override
  _FeaturesState createState() => _FeaturesState();
}

class _FeaturesState extends State<Features> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        widget.onTap?.call();
      },
      child: Row(
        children: [
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(right:30.0),
                child: Container(
                  height: 55,
                  width: 55,
                  decoration: widget.activeImages != widget.image ? BoxDecoration(borderRadius: BorderRadius.circular(8),color: Color(0xFFffffff)):BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Color(0xFF48a77d),
                    boxShadow: [
                      BoxShadow(
                        color:Color(0xFFd8e4f2),
                        offset: const Offset(
                          1.0,
                          5.0,
                        ),
                        blurRadius: 3.0,
                        spreadRadius: 2.0,
                      ),
                    ],
                  ),
                  child: Container(
                    height: 20,
                      width: 20,
                      child: Image.asset(widget.image,)),
                ),
              ),
              SizedBox(height: 15,),
              Padding(
                padding: const EdgeInsets.only(right:30.0),
                child: Text(widget.imagename,style: TextStyle(color:widget.activeImages != widget.image? Colors.black: Color(0xFF48a77d),),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
