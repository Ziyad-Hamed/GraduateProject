import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';

class Reservation extends StatefulWidget {
  @override
  _ReservationState createState() => _ReservationState();
}

class _ReservationState extends State<Reservation> {
  DatabaseReference _ref;
  String clinicName;
  String day = '--اختر اليوم--';
  String id = '';
  final _formKey = GlobalKey<FormState>();
  TextEditingController idController = TextEditingController();
  TextEditingController textController = TextEditingController();
  List<DropdownMenuItem<String>> menuitems = [];
  bool disabledropdown = true; 
  String time;
  @override
  void initState() {
    super.initState();
    _ref = FirebaseDatabase.instance.reference().child('Appointments');
  }
 final alldays = {
    "السبت" : "السبت",
    "الاحد" : "الاحد",
    "الاثنين" : " الاثنين",
    "الثلاثاء" : "الثلاثاء",
    "الاربعاء" : "الاربعاء",
    "الخميس" : " الخميس",
  };
  final qawloon = {
    "الاحد" : "الاحد",
    "الخميس" : " الخميس",
  };
  final aw3ya = {
    "الاثنين" : " الاثنين",
    "الخميس" : " الخميس",
  };
  final ghodad = {
    "الثلاثاء" : "الثلاثاء",
    "الخميس" : " الخميس",
  };
  final mana3a = {
    "السبت" : "السبت",
    "الثلاثاء" : "الثلاثاء",
    "الخميس" : " الخميس",
  };
  final kolya = {
    "السبت" : "السبت",
    "الثلاثاء" : "الثلاثاء",
  };
  final elalm = {
    "الاحد" : "الاحد",
    "الاثنين" : " الاثنين",
    "الاربعاء" : "الاربعاء",
  };
  final elsadr = {
    "السبت" : "السبت",
    "الاثنين" : " الاثنين",
    "الخميس" : " الخميس",
  };
  final el2lb = {
    "الاحد" : "الاحد",
    "الثلاثاء" : "الثلاثاء",
    "الاربعاء" : "الاربعاء",
  };
  final batna = {
    "الاحد" : "الاحد",
    "الاثنين" : " الاثنين",
    "الاربعاء" : "الاربعاء",
    "الخميس" : " الخميس",
  };
  final ta2heel = {
    "السبت رجال" : "السبت رجال",
    "الاحد حريم" : "الاحد حريم",
    "الثلاثاء حريم" : "الثلاثاء حريم",
    "الاربعاء رجال" : "الاربعاء رجال",
  };
  final tagmeel = {
    "السبت" : "السبت",
    "الاربعاء" : "الاربعاء",
  };
  void populatedalldays(){
    for(String key in alldays.keys){
      menuitems.add(DropdownMenuItem<String>(
        child : Center(
          child: Text(
            alldays[key]
          ),
        ),
        value: alldays[key],
      ));
    }
  }
  void populatedqawloon(){
    for(String key in qawloon.keys){
      menuitems.add(DropdownMenuItem<String>(
        child : Center(
          child: Text(
            qawloon[key]
          ),
        ),
        value: qawloon[key],
      ));
    }
  }
  void populatedaw3ya(){
    for(String key in mana3a.keys){
      menuitems.add(DropdownMenuItem<String>(
        child : Center(
          child: Text(
            mana3a[key]
          ),
        ),
        value: mana3a[key],
      ));
    }
  }
  void populatedghodad(){
    for(String key in ghodad.keys){
      menuitems.add(DropdownMenuItem<String>(
        child : Center(
          child: Text(
            ghodad[key]
          ),
        ),
        value: ghodad[key],
      ));
    }
  }
  void populatedman3a(){
    for(String key in mana3a.keys){
      menuitems.add(DropdownMenuItem<String>(
        child : Center(
          child: Text(
            mana3a[key]
          ),
        ),
        value: mana3a[key],
      ));
    }
  }
  void populatedkolya(){
    for(String key in kolya.keys){
      menuitems.add(DropdownMenuItem<String>(
        child : Center(
          child: Text(
            kolya[key]
          ),
        ),
        value: kolya[key],
      ));
    }
  }
  void populatedelalm(){
    for(String key in elalm.keys){
      menuitems.add(DropdownMenuItem<String>(
        child : Center(
          child: Text(
            elalm[key]
          ),
        ),
        value: elalm[key],
      ));
    }
  }
  void populatedelsadr(){
    for(String key in elsadr.keys){
      menuitems.add(DropdownMenuItem<String>(
        child : Center(
          child: Text(
            elsadr[key]
          ),
        ),
        value: elsadr[key],
      ));
    }
  }
  void populatedel2lb(){
    for(String key in el2lb.keys){
      menuitems.add(DropdownMenuItem<String>(
        child : Center(
          child: Text(
            el2lb[key]
          ),
        ),
        value: el2lb[key],
      ));
    }
  }
  void populatedbatna(){
    for(String key in batna.keys){
      menuitems.add(DropdownMenuItem<String>(
        child : Center(
          child: Text(
            batna[key]
          ),
        ),
        value: batna[key],
      ));
    }
  }
  void populatedta2heel(){
    for(String key in ta2heel.keys){
      menuitems.add(DropdownMenuItem<String>(
        child : Center(
          child: Text(
            ta2heel[key]
          ),
        ),
        value: ta2heel[key],
      ));
    }
  }
  void populatedtagmeel(){
    for(String key in tagmeel.keys){
      menuitems.add(DropdownMenuItem<String>(
        child : Center(
          child: Text(
            tagmeel[key]
          ),
        ),
        value: tagmeel[key],
      ));
    }
  }
  void selected(_value){
    if(_value == "عيادة المتوطنة"|| 
    _value == "عيادة التحاليل"||
    _value == "عيادة النفسية"||
    _value == "عيادة السمعيات"||
    _value == "عيادة أنف وأذن وحنجرة"||
    _value == "عيادة الخصوبة"||
    _value == "عيادة الجراحة العامة"||
    _value == "عيادة الأورام والطب النووي"||
    _value == "عيادة الجلدية والتناسلية"||
    _value == "عيادة رسم القلب"
    ){
      menuitems = [];
      populatedalldays();
    }
    else if(_value == 'عيادة القولون والشرج'){
      menuitems = [];
      populatedqawloon();
    }
    else if(_value == 'عيادة الأوعية الدموية'){
      menuitems = [];
      populatedaw3ya();
    }
    else if(_value == 'عيادة الغدد الصماء'){
      menuitems = [];
      populatedghodad();
    }
    else if(_value == 'عيادة الروماتيزم والمناعة'){
      menuitems = [];
      populatedman3a();
    }
    else if(_value == 'عيادة الكلي'){
      menuitems = [];
      populatedkolya();
    }
    else if(_value == 'عيادة الألم'){
      menuitems = [];
      populatedelalm();
    }
    else if(_value == 'عيادة الصدر'){
      menuitems = [];
      populatedelsadr();
    }
    else if(_value == 'عيادة جراحة القلب والصدر'){
      menuitems = [];
      populatedel2lb();
    }
    else if(_value == 'عيادة الباطنة العامة'){
      menuitems = [];
      populatedbatna();
    }
    else if(_value == 'عيادة الروماتيزم والتأهيل'){
      menuitems = [];
      populatedta2heel();
    }
    else if(_value == 'عيادة جراحة التجميل'){
      menuitems = [];
      populatedtagmeel();
    }
    setState(() {
      clinicName = _value;
      disabledropdown = false;
    });
  }
  void secondselected(_value){
    setState(() {
      day = _value;
    });
  }
  List<String> clinicname = [
    'عيادة المتوطنة',
    'عيادة التحاليل',
    'عيادة النفسية',
    'عيادة السمعيات',
    'عيادة أنف وأذن وحنجرة',
    'عيادة القولون والشرج',
    'عيادة الأوعية الدموية',
    'عيادة الغدد الصماء',
    'عيادة الروماتيزم والمناعة',
    'عيادة الكلي',
    'عيادة الألم',
    'عيادة الصدر',
    'عيادة رسم القلب',
    'عيادة جراحة القلب والصدر',
    'عيادة الخصوبة',
    'عيادة الباطنة العامة',
    'عيادة الروماتيزم والتأهيل',
    'عيادة جراحة التجميل',
    'عيادة الجراحة العامة',
    'عيادة الأورام والطب النووي',
    'عيادة الجلدية والتناسلية',
  ];
  List<String> clinictime = [
    '8.30 - 9.00',
    '9.00 - 9.30',
    '9.30 - 10.00',
    '10.00 - 10.30',
    '10.30 - 11.00',
    '11.00 - 11.30',
    '11.30 - 12.00',
    '12.00 - 12.30',
    '12.30 - 1.00',
    '1.00 - 1.30',
    '1.30 - 2.00',
  ];
  
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xffF3F5F9),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: Container(
          width: MediaQuery.of(context).size.width*0.9,
          child: FloatingActionButton.extended(
            elevation: 0.0,
            backgroundColor: Color(0xff6574CF),
            onPressed: ()async{
              if(_formKey.currentState.validate()){
                saveappointment();
              }
              
            },
            label: Text('حجز العيادة',style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.w600
            ),),
          ),
        ),
        body: Directionality(
          textDirection: TextDirection.rtl,
            child: Form(
              key: _formKey,
              child: Column(
                children: [
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
                        SizedBox(width: MediaQuery.of(context).size.width*0.1,),
                        Text('حجز عيادة',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height*0.03,),
                  Container(
                    width: MediaQuery.of(context).size.width*0.9,
                    child: Text('* الحضور في العياده قبل الساعه الثانيه عشر وفي حاله عدم الحضور في الموعد يتم الغاء الحجز تلقائي',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.red[700],
                    ),
                    ),
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height*0.02,),
                  Center(
                    child: Container(
                      width: MediaQuery.of(context).size.width*0.9,
                      height: MediaQuery.of(context).size.height*0.077,
                      decoration: BoxDecoration(
                        color: Color(0xff6574CF).withOpacity(0.1),
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(color: Color(0xff6574CF),),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Center(
                          child: TextFormField(
                            validator: (val) => val.isEmpty || val.length < 14|| val.length > 14? 'أدخل الرقم القومي':null,
                            controller: idController,
                            obscureText: false,
                            keyboardType: TextInputType.number,
                            onChanged: (value){
                              setState(() {
                                id=value;
                              });
                            },
                            style: TextStyle(
                              fontSize: 18,
                            ),
                            decoration: InputDecoration(
                              hintText: 'الرقم القومي',
                              hintStyle: TextStyle(
                                fontSize: 18,
                              ),
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height*0.01,),
                  Center(
                    child: Container(
                      width: MediaQuery.of(context).size.width*0.9,
                      height: MediaQuery.of(context).size.height*0.07,
                      decoration: BoxDecoration(
                        border: Border.all(color:Color(0xffB3C1DC).withOpacity(0.5)),
                        borderRadius: BorderRadius.circular(20)
                      ),
                      child: Center(
                        child: DropdownButton(
                            value: clinicName,
                            underline: Container(),
                            isExpanded: true,
                            iconSize: 40,
                            hint: clinicName ==null?Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 15),
                              child: Center(child: Text('-- اختر عيادة --',style: TextStyle(fontSize: 20),)),
                            ):
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 15),
                              child: Center(child: Text(clinicName,style: TextStyle(color: Color(0xff6574CF),fontSize: 22),)),
                            ),
                            items: clinicname.map((val) {
                                return DropdownMenuItem<String>(
                                value: val,
                                child: Center(child: Text(val)),
                              );
                            },
                          ).toList(),
                          onChanged: (_value)=>selected(_value),
                        ),
                      ),
                    ),
                  ),
                SizedBox(height: MediaQuery.of(context).size.height*0.01,),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25),
                      child: Row(
                        children: [
                          Text('مواعيد العمل بالعيادة',
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.red,
                          ),),
                        ],
                      ),
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height*0.01,), 
                    // معاد العيادات 
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 19),
                      child: Row(
                        children: [
                          // clinic day
                          Container(
                            width: MediaQuery.of(context).size.width*0.45,
                            height: MediaQuery.of(context).size.height*0.07,
                            decoration: BoxDecoration(
                              border: Border.all(color:Color(0xffB3C1DC).withOpacity(0.5)),
                              borderRadius: BorderRadius.circular(20)
                            ),
                            child: Center(
                              child: DropdownButton(
                                  underline: Container(),
                                  isExpanded: true,
                                  iconSize: 40,
                                  hint: clinicName ==null?Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 15),
                                    child: Center(child: Text('-- اختر اليوم --',style: TextStyle(fontSize: 20),)),
                                  ):
                                  Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 15),
                                    child: Center(child: Text(day,style: TextStyle(color: Color(0xff6574CF),fontSize: 20),)),
                                  ),
                                  disabledHint: Center(child: Text('العيادة اولا',style: TextStyle(fontSize: 20),)),
                                  items: menuitems,
                                  onChanged: disabledropdown ? null : (_value) => secondselected(_value),
                                ),
                              ),
                            ),
                            SizedBox(width: MediaQuery.of(context).size.width*0.01,),
                            // clinic time
                          Container(
                            width: MediaQuery.of(context).size.width*0.45,
                            height: MediaQuery.of(context).size.height*0.07,
                            decoration: BoxDecoration(
                              border: Border.all(color:Color(0xffB3C1DC).withOpacity(0.5)),
                              borderRadius: BorderRadius.circular(20)
                            ),
                            child: Center(
                              child: DropdownButton(
                                  value: time,
                                  underline: Container(),
                                  isExpanded: true,
                                  iconSize: 40,
                                  hint: time ==null?Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 15),
                                    child: Center(child: Text('-- اختر الوقت --',style: TextStyle(fontSize: 20),)),
                                  ):
                                  Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 15),
                                    child: Text(time,style: TextStyle(color: Color(0xff6574CF),fontSize: 20),),
                                  ),
                                  items: clinictime.map((val) {
                                      return DropdownMenuItem<String>(
                                      value: val,
                                      child: Center(child: Text(val)),
                                    );
                                  },
                                ).toList(),
                                onChanged: (val){
                                  setState(() {
                                    time = val;
                                  });
                                },
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        )
      )
    );
  }
   void saveappointment(){

    String id = idController.text;
    String clinicname = clinicName;
    //String appointment =value;

    Map<String,String> contact = {
      'Day' : day,
      'Time' : time,
      'Clinic Name': clinicname,
      'ID':id,
    };

    _ref.push().set(contact).then((value) {
      idController.clear();
      menuitems = [];
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('تم حجز العيادة')));
    });
  }
}