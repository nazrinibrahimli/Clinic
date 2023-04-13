import 'package:app_all_practice/widgets/searchBar.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
            Container(
              child: Column(
                children: [
                  Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                        const Text("Hey,there!", style: TextStyle(color: Colors.blue)),
                        const Gap(5),
                        Column(
                          children: const [
                          ],
                        )
                    
                        ],
                      )
                    ],
             
                  ),

                    // SingleChildScrollView(
                    //   scrollDirection: Axis.horizontal ,
                    //   padding: EdgeInsets.all(20),
                    //   child: Row(children: [

                    //             Container(
                    //     height: 200,
                    //     width: 200,
                    //     decoration: BoxDecoration(
                    //       borderRadius: BorderRadius.circular(5),
                    //       image: const DecorationImage(
                    //         fit: BoxFit.cover,
                    //         image: AssetImage(
                    //           "lib/assets/doctor-2.jpg"
                    //         ) )
                    //        ),
                    //   ),
                    //                         Container(
                    //     height: 200,
                    //     width: 200,
                    //     decoration: BoxDecoration(
                    //       borderRadius: BorderRadius.circular(5),
                    //       image: const DecorationImage(
                    //         fit: BoxFit.cover,
                    //         image: AssetImage(
                    //           "lib/assets/doctor-3.jpg"
                    //         ) )
                    //        ),
                    //   ),
                    //    Container(
                    //     height: 200,
                    //     width: 200,
                    //     decoration: BoxDecoration(
                    //       borderRadius: BorderRadius.circular(5),
                    //       image: const DecorationImage(
                    //         fit: BoxFit.cover,
                    //         image: AssetImage(
                    //           "lib/assets/doctor-2.jpg"
                    //         ) )
                    //        ),
                    //   ),

                    //   ]),
                    // )
                    
                  
                ]),
              )
          
        ],
      )
    );

      

  }
}