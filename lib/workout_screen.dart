import 'package:flutter/material.dart';

class workout_screen extends StatelessWidget {

  int currentIndex =0;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: Image.asset('lib/images/Ellipse 10.png',alignment: Alignment.centerLeft),
        actions: [
          IconButton(onPressed: (){}, icon: const Icon(Icons.notifications_sharp,color: Colors.black,))
        ],
        title: const Column(
          children: [
            Text('Hello, Jade',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w400,color:Color.fromRGBO(0, 0, 0, 1)),),
            SizedBox(height: 10,),
            Text('Ready to workout?',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w600,color:Color.fromRGBO(0, 0, 0, 1)),),
          ],
        ),
      ),
        bottomNavigationBar:BottomNavigationBar(
            elevation: 0,
            currentIndex: currentIndex,
            items:const [
              BottomNavigationBarItem(icon:Icon(Icons.home,color:Color.fromRGBO(54, 63, 114, 1)),label: "" ),
              BottomNavigationBarItem(icon:Icon(Icons.navigation,color:Color.fromRGBO(54, 63, 114, 1)),label: "" ),
              BottomNavigationBarItem(icon:Icon(Icons.bar_chart,color:Color.fromRGBO(54, 63, 114, 1)),label: "" ),
              BottomNavigationBarItem(icon:Icon(Icons.person,color:Color.fromRGBO(54, 63, 114, 1)),label: "" ),
            ]
        ),
        body: Column(
          children: [
            Center(
              child: Container(
                height: 82,
                width: 326,
                  color:const Color.fromRGBO(226, 231, 245, 1.0),
                child:Stack(
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 20,top: 20),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Image.asset('lib/images/heart.png'),
                                  const SizedBox(width: 5,),
                                  const Text('Heart Rate',style: TextStyle(fontWeight:FontWeight.w400,fontSize:14,color:Color.fromRGBO(0,0,0,1),),),
                                ],
                              ),
                              const SizedBox(height: 5),
                              const Row(
                                children: [
                                  Text('81',style: TextStyle(fontWeight:FontWeight.w600,fontSize:18,color:Color.fromRGBO(0,0,0,1),),),
                                  SizedBox(width:2),
                                  Text('BPM',style: TextStyle(fontWeight:FontWeight.w500,fontSize:15,color:Color.fromRGBO(0,0,0,1),),),
                                ],
                              ),

                            ],
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: VerticalDivider(
                            color: Color.fromRGBO(217, 217, 217, 1),
                            thickness: 5,
                            width: 5,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20,top: 20),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Image.asset('lib/images/to_do list.png'),
                                  const SizedBox(width: 5,),
                                  const Text('To-do',style: TextStyle(fontWeight:FontWeight.w400,fontSize:14,color:Color.fromRGBO(0,0,0,1),),),
                                ],
                              ),
                              const SizedBox(height: 5),
                              const Row(
                                children: [
                                  Text('32,5',style: TextStyle(fontWeight:FontWeight.w600,fontSize:18,color:Color.fromRGBO(0,0,0,1),),),
                                  SizedBox(width:2),
                                  Text('%',style: TextStyle(fontWeight:FontWeight.w500,fontSize:15,color:Color.fromRGBO(0,0,0,1),),),
                                ],
                              ),
                            ],
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: VerticalDivider(
                            color: Color.fromRGBO(217, 217, 217, 1),
                            thickness: 5,
                            width: 5,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 15,top: 20),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Image.asset('lib/images/calories.png'),
                                  const SizedBox(width: 5,),
                                  const Text('Calo',style: TextStyle(fontWeight:FontWeight.w400,fontSize:14,color:Color.fromRGBO(0,0,0,1),),),
                                ],
                              ),
                              const SizedBox(height: 5),
                              const Row(
                                children: [
                                  Text('1000',style: TextStyle(fontWeight:FontWeight.w600,fontSize:18,color:Color.fromRGBO(0,0,0,1),),),
                                  SizedBox(width:2),
                                  Text('Cal',style: TextStyle(fontWeight:FontWeight.w500,fontSize:15,color:Color.fromRGBO(0,0,0,1),),),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            const Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 20,top: 15),
                  child: Text(textAlign: TextAlign.left,'Workout Programs',style: TextStyle(fontWeight:FontWeight.w600,fontSize:20,color:Color.fromRGBO(0,0,0,1),),),
                ),
              ],
            ),
            const SizedBox(height: 20),
            const TabBar(
                unselectedLabelColor:Color.fromRGBO(102, 112, 133, 1),
                indicatorColor:Color.fromRGBO(54, 63, 114, 1),
                isScrollable: true,
                labelColor:Color.fromRGBO(54, 63, 114, 1),
                tabs: [
                  Tab(
                    child: Text('All Type',style: TextStyle(fontWeight:FontWeight.w500,fontSize:16)),
                  ),
                  //rgba(102, 112, 133, 1)
                  Tab(
                    child: Text('Full Body',style: TextStyle(fontWeight:FontWeight.w500,fontSize:15)),
                  ),
                  Tab(
                    child: Text('Upper',style: TextStyle(fontWeight:FontWeight.w500,fontSize:16)),
                  ),
                  Tab(
                    child: Text('Lower',style: TextStyle(fontWeight:FontWeight.w500,fontSize:16)),
                  ),
                ]
            ),
            const SizedBox(height: 20),
            Expanded(
                child:TabBarView(
                    children:[
                      Center(
                        child: SingleChildScrollView(
                          child: Column(
                            children: [
                              Container(
                                width: 326,
                                height: 174,
                                child:Stack(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(10),
                                      child: Column(
                                        children: [
                                          Container(
                                            color: const Color(0xffEAECF5),
                                            child: Padding(
                                              padding: const EdgeInsets.all(15),
                                              child: Row(
                                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                                children: [
                                                  const Column(
                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                    children: [
                                                      Text("7 days"),
                                                      SizedBox(height: 15),
                                                      Text("Morning Yoga",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20)),
                                                      SizedBox(height: 7),
                                                      Text("Improve mental focus"),
                                                      SizedBox(height: 7),
                                                      Row(
                                                        children: [
                                                          Icon(Icons.watch_later_outlined),
                                                          Text("30 min")
                                                        ],
                                                      )
                                                    ],
                                                  ),
                                                  Image.asset('lib/images/[removal 2.png')
                                                ],
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(height: 15),
                              Container(
                                width: 326,
                                height: 174,
                                child:Stack(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(10),
                                      child: Column(
                                        children: [
                                          Container(
                                            color: const Color(0xffEAECF5),
                                            child: Padding(
                                              padding: const EdgeInsets.all(15),
                                              child: Row(
                                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                                children: [
                                                  const Column(
                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                    children: [
                                                      Text('7 days'),
                                                      SizedBox(height: 15),
                                                      Text('Plank Exercise',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20)),
                                                      SizedBox(height: 7),
                                                      Text('Improve posture and stability.'),
                                                      SizedBox(height: 7),
                                                      Row(
                                                        children: [
                                                          Icon(Icons.watch_later_outlined),
                                                          Text('30 min')
                                                        ],
                                                      )
                                                    ],
                                                  ),
                                                  Expanded(child: Image.asset('lib/images/plank.png'))
                                                ],
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(height: 15),
                              Container(
                                width: 326,
                                height: 174,
                                child:Stack(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(10),
                                      child: Column(
                                        children: [
                                          //  Padding(
                                          //   padding: const EdgeInsets.only(top: 10,left: 5),
                                          //   child: Row(
                                          //     children: [
                                          //       Container(
                                          //         width: 68,
                                          //         height: 27,
                                          //         decoration: BoxDecoration(
                                          //           shape: BoxShape.rectangle,
                                          //           borderRadius: BorderRadius.circular(20),
                                          //           color:const Color.fromRGBO(252, 252, 253, 1),
                                          //         ),
                                          //         child: const Text(
                                          //           textAlign: TextAlign.center,'7 Days',style: TextStyle(fontWeight: FontWeight.w500,fontSize: 14,color: Colors.black),),),
                                          //     ],
                                          //   ),
                                          // ),
                                          // Column(
                                          //   mainAxisAlignment: MainAxisAlignment.start,
                                          //   crossAxisAlignment: CrossAxisAlignment.start,
                                          //   children: [
                                          //     const SizedBox(height: 15,),
                                          //     const Text(style:TextStyle(color:Color.fromRGBO(0, 0, 0, 1),
                                          //         fontSize: 20, fontWeight: FontWeight.w600),
                                          //       'Morning Yoga',
                                          //     ),
                                          //     const Text(style:TextStyle(color:Color.fromRGBO(0, 0, 0, 1),
                                          //         fontSize: 12, fontWeight: FontWeight.w400),
                                          //       'Improve mental focus.',
                                          //     ),
                                          //     const Icon (Icons.access_time_outlined,color:Color.fromRGBO(0,0,0, 1)),
                                          //     const Row(
                                          //       children: [
                                          //         Text('30 mins',style:TextStyle(fontWeight: FontWeight.w400,fontSize: 12,color:Colors.black)),
                                          //       ],
                                          //     ),
                                          //     Row(
                                          //       mainAxisAlignment: MainAxisAlignment.center,
                                          //       children: [
                                          //         Center(child: Image.asset('lib/images/[removal 2.png')),
                                          //       ],
                                          //     ),
                                          //     // const Row(
                                          //     //   children: [
                                          //     //     Icon (Icons.access_time_outlined,color:Color.fromRGBO(0,0,0, 1)),
                                          //     //     Text('30 mins',style:TextStyle(fontWeight: FontWeight.w400,fontSize: 12,color:Colors.black))
                                          //     //   ],
                                          //     // ),
                                          //   ],
                                          // )
                                          Container(
                                            color: const Color(0xffEAECF5),
                                            child: Padding(
                                              padding: const EdgeInsets.all(15),
                                              child: Row(
                                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                                children: [
                                                  const Column(
                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                    children: [
                                                      Text("7 days"),
                                                      SizedBox(height: 15),
                                                      Text("Morning Yoga",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20)),
                                                      SizedBox(height: 7),
                                                      Text("Improve mental focus"),
                                                      SizedBox(height: 7),
                                                      Row(
                                                        children: [
                                                          Icon(Icons.watch_later_outlined),
                                                          Text("30 min")
                                                        ],
                                                      )
                                                    ],
                                                  ),
                                                  Image.asset('lib/images/[removal 2.png')
                                                ],
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(height: 15),
                              Container(
                                width: 326,
                                height: 174,
                                child:Stack(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(10),
                                      child: Column(
                                        children: [
                                          Container(
                                            color: const Color(0xffEAECF5),
                                            child: Padding(
                                              padding: const EdgeInsets.all(15),
                                              child: Row(
                                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                                children: [
                                                  const Column(
                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                    children: [
                                                      Text('7 days'),
                                                      SizedBox(height: 15),
                                                      Text('Plank Exercise',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20)),
                                                      SizedBox(height: 7),
                                                      Text('Improve posture and stability.'),
                                                      SizedBox(height: 7),
                                                      Row(
                                                        children: [
                                                          Icon(Icons.watch_later_outlined),
                                                          Text('30 min')
                                                        ],
                                                      )
                                                    ],
                                                  ),
                                                  Expanded(child: Image.asset('lib/images/plank.png'))
                                                ],
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SingleChildScrollView(
                        child: Center(
                          child: Column(
                            children: [
                              Container(
                                width: 326,
                                height: 174,
                                child:Stack(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(10),
                                      child: Column(
                                        children: [
                                          Container(
                                            color: const Color(0xff8ea0f3),
                                            child: Padding(
                                              padding: const EdgeInsets.all(15),
                                              child: Row(
                                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                                children: [
                                                  const Column(
                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                    children: [
                                                      Text("7 days"),
                                                      SizedBox(height: 15),
                                                      Text("Morning Yoga",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20)),
                                                      SizedBox(height: 7),
                                                      Text("Improve mental focus"),
                                                      SizedBox(height: 7),
                                                      Row(
                                                        children: [
                                                          Icon(Icons.watch_later_outlined),
                                                          Text("30 min")
                                                        ],
                                                      )
                                                    ],
                                                  ),
                                                  Image.asset('lib/images/[removal 2.png')
                                                ],
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(height: 15),
                              Container(
                                width: 326,
                                height: 174,
                                child:Stack(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(10),
                                      child: Column(
                                        children: [
                                          Container(
                                            color: const Color(0xff9773d5),
                                            child: Padding(
                                              padding: const EdgeInsets.all(15),
                                              child: Row(
                                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                                children: [
                                                  const Column(
                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                    children: [
                                                      Text('7 days'),
                                                      SizedBox(height: 15),
                                                      Text('Plank Exercise',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20)),
                                                      SizedBox(height: 7),
                                                      Text('Improve posture and stability.'),
                                                      SizedBox(height: 7),
                                                      Row(
                                                        children: [
                                                          Icon(Icons.watch_later_outlined),
                                                          Text('30 min')
                                                        ],
                                                      )
                                                    ],
                                                  ),
                                                  Expanded(child: Image.asset('lib/images/plank.png'))
                                                ],
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(height: 15),
                              Container(
                                width: 326,
                                height: 174,
                                child:Stack(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(10),
                                      child: Column(
                                        children: [
                                          Container(
                                            color: const Color(0xffEAECF5),
                                            child: Padding(
                                              padding: const EdgeInsets.all(15),
                                              child: Row(
                                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                                children: [
                                                  const Column(
                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                    children: [
                                                      Text("7 days"),
                                                      SizedBox(height: 15),
                                                      Text("Morning Yoga",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20)),
                                                      SizedBox(height: 7),
                                                      Text("Improve mental focus"),
                                                      SizedBox(height: 7),
                                                      Row(
                                                        children: [
                                                          Icon(Icons.watch_later_outlined),
                                                          Text("30 min")
                                                        ],
                                                      )
                                                    ],
                                                  ),
                                                  Image.asset('lib/images/[removal 2.png')
                                                ],
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(height: 15),
                              Container(
                                width: 326,
                                height: 174,
                                child:Stack(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(10),
                                      child: Column(
                                        children: [
                                          Container(
                                            color: const Color(0xffea7ac1),
                                            child: Padding(
                                              padding: const EdgeInsets.all(15),
                                              child: Row(
                                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                                children: [
                                                  const Column(
                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                    children: [
                                                      Text('7 days'),
                                                      SizedBox(height: 15),
                                                      Text('Plank Exercise',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20)),
                                                      SizedBox(height: 7),
                                                      Text('Improve posture and stability.'),
                                                      SizedBox(height: 7),
                                                      Row(
                                                        children: [
                                                          Icon(Icons.watch_later_outlined),
                                                          Text('30 min')
                                                        ],
                                                      )
                                                    ],
                                                  ),
                                                  Expanded(child: Image.asset('lib/images/plank.png'))
                                                ],
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SingleChildScrollView(
                        child: Center(
                          child: Column(
                            children: [
                              Container(
                                width: 326,
                                height: 174,
                                child:Stack(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(10),
                                      child: Column(
                                        children: [
                                          Container(
                                            color: const Color(0xffEAECF5),
                                            child: Padding(
                                              padding: const EdgeInsets.all(15),
                                              child: Row(
                                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                                children: [
                                                  const Column(
                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                    children: [
                                                      Text("7 days"),
                                                      SizedBox(height: 15),
                                                      Text("Morning Yoga",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20)),
                                                      SizedBox(height: 7),
                                                      Text("Improve mental focus"),
                                                      SizedBox(height: 7),
                                                      Row(
                                                        children: [
                                                          Icon(Icons.watch_later_outlined),
                                                          Text("30 min")
                                                        ],
                                                      )
                                                    ],
                                                  ),
                                                  Image.asset('lib/images/[removal 2.png')
                                                ],
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(height: 15),
                              Container(
                                width: 326,
                                height: 174,
                                child:Stack(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(10),
                                      child: Column(
                                        children: [
                                          Container(
                                            color: const Color(0xffEAECF5),
                                            child: Padding(
                                              padding: const EdgeInsets.all(15),
                                              child: Row(
                                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                                children: [
                                                  const Column(
                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                    children: [
                                                      Text('7 days'),
                                                      SizedBox(height: 15),
                                                      Text('Plank Exercise',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20)),
                                                      SizedBox(height: 7),
                                                      Text('Improve posture and stability.'),
                                                      SizedBox(height: 7),
                                                      Row(
                                                        children: [
                                                          Icon(Icons.watch_later_outlined),
                                                          Text('30 min')
                                                        ],
                                                      )
                                                    ],
                                                  ),
                                                  Expanded(child: Image.asset('lib/images/plank.png'))
                                                ],
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(height: 15),
                              Container(
                                width: 326,
                                height: 174,
                                child:Stack(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(10),
                                      child: Column(
                                        children: [
                                          //  Padding(
                                          //   padding: const EdgeInsets.only(top: 10,left: 5),
                                          //   child: Row(
                                          //     children: [
                                          //       Container(
                                          //         width: 68,
                                          //         height: 27,
                                          //         decoration: BoxDecoration(
                                          //           shape: BoxShape.rectangle,
                                          //           borderRadius: BorderRadius.circular(20),
                                          //           color:const Color.fromRGBO(252, 252, 253, 1),
                                          //         ),
                                          //         child: const Text(
                                          //           textAlign: TextAlign.center,'7 Days',style: TextStyle(fontWeight: FontWeight.w500,fontSize: 14,color: Colors.black),),),
                                          //     ],
                                          //   ),
                                          // ),
                                          // Column(
                                          //   mainAxisAlignment: MainAxisAlignment.start,
                                          //   crossAxisAlignment: CrossAxisAlignment.start,
                                          //   children: [
                                          //     const SizedBox(height: 15,),
                                          //     const Text(style:TextStyle(color:Color.fromRGBO(0, 0, 0, 1),
                                          //         fontSize: 20, fontWeight: FontWeight.w600),
                                          //       'Morning Yoga',
                                          //     ),
                                          //     const Text(style:TextStyle(color:Color.fromRGBO(0, 0, 0, 1),
                                          //         fontSize: 12, fontWeight: FontWeight.w400),
                                          //       'Improve mental focus.',
                                          //     ),
                                          //     const Icon (Icons.access_time_outlined,color:Color.fromRGBO(0,0,0, 1)),
                                          //     const Row(
                                          //       children: [
                                          //         Text('30 mins',style:TextStyle(fontWeight: FontWeight.w400,fontSize: 12,color:Colors.black)),
                                          //       ],
                                          //     ),
                                          //     Row(
                                          //       mainAxisAlignment: MainAxisAlignment.center,
                                          //       children: [
                                          //         Center(child: Image.asset('lib/images/[removal 2.png')),
                                          //       ],
                                          //     ),
                                          //     // const Row(
                                          //     //   children: [
                                          //     //     Icon (Icons.access_time_outlined,color:Color.fromRGBO(0,0,0, 1)),
                                          //     //     Text('30 mins',style:TextStyle(fontWeight: FontWeight.w400,fontSize: 12,color:Colors.black))
                                          //     //   ],
                                          //     // ),
                                          //   ],
                                          // )
                                          Container(
                                            color: const Color(0xffEAECF5),
                                            child: Padding(
                                              padding: const EdgeInsets.all(15),
                                              child: Row(
                                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                                children: [
                                                  const Column(
                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                    children: [
                                                      Text("7 days"),
                                                      SizedBox(height: 15),
                                                      Text("Morning Yoga",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20)),
                                                      SizedBox(height: 7),
                                                      Text("Improve mental focus"),
                                                      SizedBox(height: 7),
                                                      Row(
                                                        children: [
                                                          Icon(Icons.watch_later_outlined),
                                                          Text("30 min")
                                                        ],
                                                      )
                                                    ],
                                                  ),
                                                  Image.asset('lib/images/[removal 2.png')
                                                ],
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(height: 15),
                              Container(
                                width: 326,
                                height: 174,
                                child:Stack(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(10),
                                      child: Column(
                                        children: [
                                          Container(
                                            color: const Color(0xffEAECF5),
                                            child: Padding(
                                              padding: const EdgeInsets.all(15),
                                              child: Row(
                                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                                children: [
                                                  const Column(
                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                    children: [
                                                      Text('7 days'),
                                                      SizedBox(height: 15),
                                                      Text('Plank Exercise',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20)),
                                                      SizedBox(height: 7),
                                                      Text('Improve posture and stability.'),
                                                      SizedBox(height: 7),
                                                      Row(
                                                        children: [
                                                          Icon(Icons.watch_later_outlined),
                                                          Text('30 min')
                                                        ],
                                                      )
                                                    ],
                                                  ),
                                                  Expanded(child: Image.asset('lib/images/plank.png'))
                                                ],
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SingleChildScrollView(
                        child: Center(
                          child: Column(
                            children: [
                              Container(
                                width: 326,
                                height: 174,
                                child:Stack(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(10),
                                      child: Column(
                                        children: [
                                          Container(
                                            color: const Color(0xff8ea0f3),
                                            child: Padding(
                                              padding: const EdgeInsets.all(15),
                                              child: Row(
                                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                                children: [
                                                  const Column(
                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                    children: [
                                                      Text("7 days"),
                                                      SizedBox(height: 15),
                                                      Text("Morning Yoga",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20)),
                                                      SizedBox(height: 7),
                                                      Text("Improve mental focus"),
                                                      SizedBox(height: 7),
                                                      Row(
                                                        children: [
                                                          Icon(Icons.watch_later_outlined),
                                                          Text("30 min")
                                                        ],
                                                      )
                                                    ],
                                                  ),
                                                  Image.asset('lib/images/[removal 2.png')
                                                ],
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(height: 15),
                              Container(
                                width: 326,
                                height: 174,
                                child:Stack(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(10),
                                      child: Column(
                                        children: [
                                          Container(
                                            color: const Color(0xff9773d5),
                                            child: Padding(
                                              padding: const EdgeInsets.all(15),
                                              child: Row(
                                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                                children: [
                                                  const Column(
                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                    children: [
                                                      Text('7 days'),
                                                      SizedBox(height: 15),
                                                      Text('Plank Exercise',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20)),
                                                      SizedBox(height: 7),
                                                      Text('Improve posture and stability.'),
                                                      SizedBox(height: 7),
                                                      Row(
                                                        children: [
                                                          Icon(Icons.watch_later_outlined),
                                                          Text('30 min')
                                                        ],
                                                      )
                                                    ],
                                                  ),
                                                  Expanded(child: Image.asset('lib/images/plank.png'))
                                                ],
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(height: 15),
                              Container(
                                width: 326,
                                height: 174,
                                child:Stack(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(10),
                                      child: Column(
                                        children: [
                                          Container(
                                            color: const Color(0xffEAECF5),
                                            child: Padding(
                                              padding: const EdgeInsets.all(15),
                                              child: Row(
                                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                                children: [
                                                  const Column(
                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                    children: [
                                                      Text("7 days"),
                                                      SizedBox(height: 15),
                                                      Text("Morning Yoga",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20)),
                                                      SizedBox(height: 7),
                                                      Text("Improve mental focus"),
                                                      SizedBox(height: 7),
                                                      Row(
                                                        children: [
                                                          Icon(Icons.watch_later_outlined),
                                                          Text("30 min")
                                                        ],
                                                      )
                                                    ],
                                                  ),
                                                  Image.asset('lib/images/[removal 2.png')
                                                ],
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(height: 15),
                              Container(
                                width: 326,
                                height: 174,
                                child:Stack(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(10),
                                      child: Column(
                                        children: [
                                          Container(
                                            color: const Color(0xffea7ac1),
                                            child: Padding(
                                              padding: const EdgeInsets.all(15),
                                              child: Row(
                                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                                children: [
                                                  const Column(
                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                    children: [
                                                      Text('7 days'),
                                                      SizedBox(height: 15),
                                                      Text('Plank Exercise',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20)),
                                                      SizedBox(height: 7),
                                                      Text('Improve posture and stability.'),
                                                      SizedBox(height: 7),
                                                      Row(
                                                        children: [
                                                          Icon(Icons.watch_later_outlined),
                                                          Text('30 min')
                                                        ],
                                                      )
                                                    ],
                                                  ),
                                                  Expanded(child: Image.asset('lib/images/plank.png'))
                                                ],
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ]
                ),
            ),
          ],
        ),
      ),
    );
  }
}