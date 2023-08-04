import 'package:flutter/material.dart';
import 'package:hms/functoins.dart';

class Clinic extends StatefulWidget {
  @override
  _ClinicState createState() => _ClinicState();
}

class _ClinicState extends State<Clinic> {
  String clinicname;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xffF3F5F9),
        body: Directionality(
              textDirection: TextDirection.rtl,
              child: Column(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height*0.2,
                    color: Color(0xff6574CF),
                    child: Column(
                      children: [
                        SizedBox(height: MediaQuery.of(context).size.height*0.03,),
                        Row(
                          children: [
                            SizedBox(width: MediaQuery.of(context).size.width*0.03,),
                            IconButton(
                              onPressed:(){Navigator.pop(context);},
                              icon: Icon(Icons.arrow_back),
                              iconSize: 24,
                              color: Colors.white,
                            ),
                            SizedBox(width: MediaQuery.of(context).size.width*0.1,),
                            Text('العيادات',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: MediaQuery.of(context).size.height*0.03,),
                        Container(
                          width: MediaQuery.of(context).size.width*0.9,
                          height: MediaQuery.of(context).size.height*0.06,
                          decoration: BoxDecoration(
                            color: Color(0xff7091D3),
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(color: Colors.white, width: 0.5),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            child: TextFormField(
                              style: TextStyle(color: Colors.white,fontSize: 20),
                              decoration: InputDecoration(
                                hintText: 'ابحث',
                                hintStyle: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                ),
                                border: InputBorder.none,
                                suffixIcon: Icon(Icons.search,color: Colors.white,),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height*0.03,),
                  Container(
                    width: MediaQuery.of(context).size.width*0.9,
                    height: MediaQuery.of(context).size.height*0.7,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: ListView(
                      scrollDirection: Axis.vertical,
                      children: [
                        InkWell(
                          onTap: null,
                          child: buildclinic(
                            context: context,
                            clinicname: 'عيادة المتوطنة',
                          ),
                        ),
                        buildclinic(
                          context: context,
                          clinicname: 'عيادة التحاليل',
                        ),
                        buildclinic(
                          context: context,
                          clinicname: 'عيادة النفسية',
                        ),
                        buildclinic(
                          context: context,
                          clinicname: 'عيادة السمعيات',
                        ),
                        buildclinic(
                          context: context,
                          clinicname: 'عيادة أنف وأذن وحنجرة',
                        ),
                        buildclinic(
                          context: context,
                          clinicname: 'عيادة القولون والشرج',
                        ),
                        buildclinic(
                          context: context,
                          clinicname: 'عيادة الأوعية الدموية',
                        ),
                        buildclinic(
                          context: context,
                          clinicname: 'عيادة الغدد الصماء',
                        ),
                        buildclinic(
                          context: context,
                          clinicname: 'عيادة الروماتيزم والمناعة',
                        ),
                        buildclinic(
                          context: context,
                          clinicname: 'عيادة الكلي',
                        ),
                        buildclinic(
                          context: context,
                          clinicname: 'عيادة الألم',
                        ),
                        buildclinic(
                          context: context,
                          clinicname: 'عيادة الصدر',
                        ),
                        buildclinic(
                          context: context,
                          clinicname: 'عيادة جراحة القلب والصدر',
                        ),
                        buildclinic(
                          context: context,
                          clinicname: 'عيادة الخصوبة',
                        ),
                        buildclinic(
                          context: context,
                          clinicname: 'عيادة الباطنة العامة',
                        ),
                        buildclinic(
                          context: context,
                          clinicname: 'عيادة الروماتيزم والتأهيل',
                        ),
                        buildclinic(
                          context: context,
                          clinicname: 'عيادة جراحة التجميل',
                        ),
                        buildclinic(
                          context: context,
                          clinicname: 'عيادة الجراحة العامة',
                        ),
                        buildclinic(
                          context: context,
                          clinicname: 'عيادة الاورام والطب النووي',
                        ),
                        buildclinic(
                          context: context,
                          clinicname: 'عيادة الجلدية والتناسلية',
                        ),
                        buildclinic(
                          context: context,
                          clinicname: 'عيادة رسم القلب',
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
        ),
      );
  }
}