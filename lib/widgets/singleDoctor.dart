import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

// ignore: camel_case_types
class SingleDoctor extends StatelessWidget {
  final Map<String, dynamic> doctor;


  
  const SingleDoctor({super.key, required this.doctor });

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
                        Column(
                        
                          children: [
                            Container(
                  margin: const EdgeInsets.symmetric(horizontal:17),
                  decoration:  const BoxDecoration(
                    color: Colors.white,
                     borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20))
  
                  ),
                  height: 90,
                  child: Row(
                    children: [
                      const Gap(30),
                      Row(
                            children: [
                              Container(
                              height: 60,
                              width: 60,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                image:  DecorationImage(
                                  fit: BoxFit.cover,
                                  image: AssetImage(
                                    "lib/assets/${doctor['image']}"
                                  ) )
                                 ),
                            ),
                            Container(
                              margin: const EdgeInsets.only(left:12),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                    Padding(
                                      padding:   EdgeInsets.only(left:4),
                                      child: Text(doctor['fullName'], style: TextStyle(fontWeight: FontWeight.w600, color:Color.fromARGB(255, 55, 55, 56), fontSize: 17 )),
                                    ),
                                    Padding(
                                      padding:  EdgeInsets.only(left:4,top:2),
                                      child: Text(doctor['jobTitle'], style: TextStyle(color:Color.fromARGB(255, 55, 55, 56), fontSize: 15 ),),
                                    ),
                                ]
                              ),
                            ),

                   ],
               ),
             ],
           ),
                ),
                                  Container(
                  margin: const EdgeInsets.symmetric(horizontal: 17),
                  decoration:  const BoxDecoration(
                    color: Colors.white,
  
                  ),
                child: const Padding(
                padding:  EdgeInsets.only(left:30, right:30),
                child:  Divider(
                height: 6,
                thickness: 2,
                endIndent: 0,
                color: Color.fromARGB(223, 15, 22, 51),
          ),
            ),
              ),
                      Container(
                  margin: const EdgeInsets.only(left: 17, right: 17,bottom: 15),
                  
                   decoration:  const BoxDecoration(
                    color: Colors.white,
                     borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20))
  
                  ),
                  height: 90,
                  
                   child: Row(children: [
                   const Gap(30),
                   Column(
                     crossAxisAlignment: CrossAxisAlignment.start,
                     mainAxisAlignment: MainAxisAlignment.center,
                     children: [
                                  const Padding(
                                    padding: EdgeInsets.only(left:4),
                                    child: Text("Experience", style: TextStyle(fontWeight: FontWeight.w600, fontSize: 17)),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left:4,top:4),
                                    child: Text(doctor['experience'],style: TextStyle(color:Color.fromARGB(255, 55, 55, 56), fontSize: 15 ),),
                                  ),
                              ],
                   ),
                    const Gap(30),
                    Column(
                     crossAxisAlignment: CrossAxisAlignment.start,
                     mainAxisAlignment: MainAxisAlignment.center,
                     children: [
                                  const Padding(
                                    padding: EdgeInsets.only(left:4),
                                    child: Text("Rate", style: TextStyle(fontWeight: FontWeight.w600,fontSize: 17)),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left:4,top:4),
                                    child: Text("\$${doctor['rate']}",style: TextStyle(color:Color.fromARGB(255, 55, 55, 56), fontSize: 15 ),),
                                  ),
                              ],
                   ),
                    const Gap(30),
                    Column(
                     crossAxisAlignment: CrossAxisAlignment.start,
                     mainAxisAlignment: MainAxisAlignment.center,
                     children: [
                                  const Padding(
                                    padding: EdgeInsets.only(left:4),
                                    child: Text("Location", style: TextStyle(fontWeight: FontWeight.w600,fontSize: 17)),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left:4,top:4),
                                    child: Text(doctor['location'],style: TextStyle(color:Color.fromARGB(255, 55, 55, 56), fontSize: 15 ),),
                                  ),
                              ],
                   )
                 ],
                 ),
              ),
                          ],
                        )
      ],
    )
    ;
  }
}