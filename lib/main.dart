import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
  return MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'MyApp',
    home: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
//        leading: Icon(Icons.arrow_back_outlined),
        title: Row(
          children: [
            Icon(Icons.arrow_back_outlined),
            SizedBox(width: 5,),
            CircleAvatar(
              radius: 20,
              backgroundImage: AssetImage('assets/images/2.jpg'),
            ),
            SizedBox(width: 10,),
            Text('Rawy'),
          ],
        ),
        actions: [
          Icon(Icons.videocam,color: Colors.white,),
          SizedBox(width: 5,),
          Icon(Icons.call,color: Colors.white,),
          SizedBox(width: 5,),
          Icon(Icons.more_vert , color: Colors.white,),
        ],





      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/5.jpg'),
            fit: BoxFit.cover,
          ),

        ),
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  margin: EdgeInsets.all(20),
                  child: CircleAvatar(
                    radius: 20,
                    backgroundImage: AssetImage('assets/images/3.jpg'),
                  ),
                ),
                Container(
                  width: 200,
                  padding: EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(25)),
                    border: Border.all(color: Colors.black),

                  ),
                  child: Text(
                    'هاي ممكن نتعرف',style: TextStyle(color: Colors.black,fontSize: 20),
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  width: 200,
                  padding: EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(25)),
                    border: Border.all(color: Colors.black),

                  ),
                  child: Text(
                    'لآ',style: TextStyle(color: Colors.black,fontSize: 20),
                    textAlign: TextAlign.center,
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(20),
                  child: CircleAvatar(
                    radius: 20,
                    backgroundImage: AssetImage('assets/images/4.png'),
                  ),
                ),
              ],
            ),
            Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Expanded(
                  child: Container(
                    padding: EdgeInsets.all(10),
                    margin: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(50)),
                      border: Border.all(color: Colors.black)
                    ),
                    child:  TextField(
                        decoration: InputDecoration(
                          hintText: 'اكتب رسالة',
                          hintStyle: TextStyle(color:Colors.black),
                          prefixIcon: Icon(Icons.sentiment_satisfied_alt_rounded,color: Colors.black,),
                          suffixIcon: Icon(Icons.attach_file , color: Colors.black,),
                        ),

                  ),


                ),
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(40)),
                    border: Border.all(color: Colors.black,),
                  ),
                  child: Icon(Icons.keyboard_voice,size: 50,),
                ),
                  ],
            ),

          ],
        ),
      ),
    ),

  );
  }
}


