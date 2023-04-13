import 'package:app_all_practice/widgets/searchBar.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:app_all_practice/utils/infoList.dart';
import 'package:app_all_practice/widgets/singleDoctor.dart';

class Doctors extends StatefulWidget {

  const Doctors({Key? key,}) : super(key: key);

  @override
  State<Doctors> createState() => _DoctorsState();
}

class _DoctorsState extends State<Doctors> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 191, 207, 214),
      body: ListView(
        children: [
          Container(
             child:
               Column(
                 children: [
                const Gap(20),
                const Text("Doctors", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600, color: Color.fromARGB(255, 3, 3, 3)),),
                const Gap(20),
        
                Column(
                  children: 
                    doctorList.map((doctor)=>SingleDoctor(doctor:doctor,)).toList(),
                  
                )
         ],
          )
      ),
        ]
)


    ) ;
  }
}