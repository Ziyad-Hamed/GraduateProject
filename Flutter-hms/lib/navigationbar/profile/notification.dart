import 'package:flutter/material.dart';


class Notifications extends StatefulWidget {
  @override
  _NotificationsState createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {
  bool notificationstatus = false;
  bool vibrerationstatus = false;
  bool soundstatus = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Directionality(
          textDirection: TextDirection.rtl,
          child: Column(children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height*0.08,
              color: Color(0xff6574CF),
              child: Row(
              children: [
                SizedBox(width: MediaQuery.of(context).size.width*0.02,),
                IconButton(
                  iconSize: 26,
                  icon: Icon(Icons.arrow_back,color: Colors.white,),
                  onPressed: (){Navigator.pop(context);}
                ),
                SizedBox(width: MediaQuery.of(context).size.width*0.01,),
                Text('الإشعارات',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            ),
            // first notification kind   (notification)
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height*0.1,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width*0.85,
                    height: MediaQuery.of(context).size.height,
                    child: Column(children: [
                      SizedBox(height: MediaQuery.of(context).size.height*0.02,),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Row(
                          children: [
                            Text('تفعيل الإشعارات',
                            style: TextStyle(
                              color: Color(0xff4E70B5),
                              fontSize: 20
                            ),),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Row(
                          children: [
                            Text(notificationstatus? 'الإشعارات مفعلة':'الإشعارات غير مفعلة',style: TextStyle(
                              color: Color(0xffB3C1DC),
                              fontSize: 18,
                            ),),
                          ],
                        ),
                      ),
                    ],),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width*0.15,
                    height: MediaQuery.of(context).size.height,
                    child:  Switch(
                      activeColor: Color(0xff6574CF),
                      value: notificationstatus,
                      onChanged: (value){
                        setState(() {
                          notificationstatus = value;
                        });
                      },
                    ),
                  ),
              ],),
            ),
            Divider(), 
            //second notification kind    (vibration)
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height*0.1,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width*0.85,
                    height: MediaQuery.of(context).size.height,
                    child: Column(children: [
                      SizedBox(height: MediaQuery.of(context).size.height*0.02,),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Row(
                          children: [
                            Text('الاهتزاز',
                            style: TextStyle(
                              color: Color(0xff4E70B5),
                              fontSize: 20
                            ),),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Row(
                          children: [
                            Text(vibrerationstatus? 'الإشعارات مفعلة':'الإشعارات غير مفعلة',style: TextStyle(
                              color: Color(0xffB3C1DC),
                              fontSize: 18,
                            ),),
                          ],
                        ),
                      ),
                    ],),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width*0.15,
                    height: MediaQuery.of(context).size.height,
                    child:  Switch(
                      activeColor: Color(0xff6574CF),
                      value: vibrerationstatus,
                      onChanged: (value){
                        setState(() {
                          vibrerationstatus = value;
                        });
                      },
                    ),
                  ),
              ],),
            ),
            Divider(),
            //third notification kind   (sound)
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height*0.1,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width*0.85,
                    height: MediaQuery.of(context).size.height,
                    child: Column(children: [
                      SizedBox(height: MediaQuery.of(context).size.height*0.02,),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Row(
                          children: [
                            Text('الصوت',
                            style: TextStyle(
                              color: Color(0xff4E70B5),
                              fontSize: 20
                            ),),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Row(
                          children: [
                            Text(soundstatus? 'الإشعارات مفعلة':'الإشعارات غير مفعلة',style: TextStyle(
                              color: Color(0xffB3C1DC),
                              fontSize: 18,
                            ),),
                          ],
                        ),
                      ),
                    ],),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width*0.15,
                    height: MediaQuery.of(context).size.height,
                    child:  Switch(
                      activeColor: Color(0xff6574CF),
                      value: soundstatus,
                      onChanged: (value){
                        setState(() {
                          soundstatus = value;
                        });
                      },
                    ),
                  ),
              ],),
            ),
            Divider(),
          ],),
        ),
      ),
    );
  }
}