import 'package:flutter/material.dart';

class Taw3ya extends StatefulWidget {

  @override
  _Taw3yaState createState() => _Taw3yaState();
}

class _Taw3yaState extends State<Taw3ya> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Directionality(
          textDirection: TextDirection.rtl,
            child: ListView(children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height*0.1,
              color: Color(0xff6574CF),
              child: Row(
                children: [
                  SizedBox(width: MediaQuery.of(context).size.width*0.02,),
                  IconButton(
                    iconSize: 26,
                    icon: Icon(Icons.arrow_back,color: Colors.white,),
                    onPressed: (){Navigator.pop(context);}
                  ),
                  SizedBox(width: MediaQuery.of(context).size.width*0.1,),
                  Text('التوعية الصحية',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            
          ],),
        ),
      ),
    );
  }
}