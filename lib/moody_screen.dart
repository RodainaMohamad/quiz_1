import 'package:flutter/material.dart';

class moody_screen extends StatelessWidget {
 int _selectedIndex=0;
  void _onItemTapped(int index)
  {
      _selectedIndex = index;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(toolbarHeight: 80,
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: Image.asset('lib/images/logo.png'),
        title: const Text('Moody',style: TextStyle(fontWeight:FontWeight.w400,fontSize: 24,color: Colors.black),),
        actions: [
        IconButton(onPressed: (){}, icon: const Icon(Icons.notifications_sharp,color: Colors.black,))
        ],
      ),
     body:
        Padding(
        padding: const EdgeInsets.all(12),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
           Column(
             mainAxisAlignment: MainAxisAlignment.start,
             children: [
               const Text('Hello,Sara Rose',style: TextStyle(fontWeight:FontWeight.w600,color: Colors.black,fontSize: 25),),
               const SizedBox(height: 15,width: 15,),
               const Text('How are you feeling today ?',style: TextStyle(fontWeight:FontWeight.w400,color: Colors.black,fontSize: 15),),
               const SizedBox(height: 15,width: 15,),
               const SingleChildScrollView(
                 child: Row(
                   children: [
                     Column(
                       children: [
                         Image(image: AssetImage('lib/images/Frame 8.png')),
                         SizedBox(height: 5,),
                         Text('Happy',style: TextStyle(color: Colors.black,fontWeight: FontWeight.w400,fontSize: 14),),
                       ],
                     ),
                     SizedBox(width: 20,),
                     Column(
                          children: [
                       Image(image: AssetImage('lib/images/Frame 10.png')),
                       SizedBox(height: 5,),
                       Text('Love',style: TextStyle(color: Colors.black,fontWeight: FontWeight.w400,fontSize: 14),),
                       ],
                     ),
                     SizedBox(width: 20,),
                     Column(
                       children: [
                         Image(image: AssetImage('lib/images/Frame 10 (1).png')),
                         SizedBox(height: 5,),
                         Text('Cool',style: TextStyle(color: Colors.black,fontWeight: FontWeight.w400,fontSize: 14),),
                       ],
                     ),
                     SizedBox(width: 20,),
                     Column(
                       children: [
                         Image(image: AssetImage('lib/images/Frame 12.png')),
                         SizedBox(height: 5,),
                         Text('Sad',style: TextStyle(color: Colors.black,fontWeight: FontWeight.w400,fontSize: 14),),
                       ],
                     ),
                   ],
                 ),
               ),
               const SizedBox(height: 15,),
               const Row(
                 mainAxisAlignment: MainAxisAlignment.start,
                 crossAxisAlignment: CrossAxisAlignment.start,
                 children: [
                   SizedBox(width: 5,),
                   Text('Features',style: TextStyle(fontWeight: FontWeight.w600,fontSize:18,color: Colors.black),textAlign: TextAlign.start,),
                   SizedBox(width: 160,),
                   Text('see more',style:TextStyle(fontWeight: FontWeight.w400,fontSize:16,color:Color.fromRGBO(2, 122, 72, 1) ),textAlign: TextAlign.right,),
                   Icon(Icons.chevron_right,color: Color.fromRGBO(2, 122, 72, 1)),
                 ],
               ),
               const SizedBox(height: 15),
               SizedBox(
                 width: 326,
                 height: 168,
                 child: PageView(
                   children: [
                     Container(
                       width: 326,
                       height: 168,
                       color: const Color.fromRGBO(236, 253, 243, 1),
                       child:Stack(
                         children: [
                           Padding(
                             padding: const EdgeInsets.all(10),
                             child: Column(
                               children: [
                                 const Padding(
                                   padding: EdgeInsets.only(top: 10,left: 5),
                                   child: Text('Positive vibes',textAlign: TextAlign.left,
                                     style:
                                     TextStyle(color:Color.fromRGBO(52, 64, 84, 1),
                                       fontSize: 16, fontWeight: FontWeight.w600,),),
                                 ),
                                 Column(
                                   children: [
                                     Row(
                                       children: [
                                         const Expanded(
                                           child: Text(style:TextStyle(color:Color.fromRGBO(0, 0, 0, 1),
                                               fontSize: 16, fontWeight: FontWeight.w400),
                                             'Boost your mood with positive vibes',
                                             maxLines: 2,
                                             overflow: TextOverflow.ellipsis,
                                           ),
                                         ),
                                         Image.asset('lib/images/Walking the Dog.png'),
                                       ],
                                     ),
                                     const Row(
                                       children: [
                                         Icon (Icons.play_circle,color:Color.fromRGBO(50, 213, 131, 1)),
                                         Text('10 mins',style:TextStyle(fontWeight: FontWeight.w500,fontSize: 14,color:Colors.black))
                                       ],
                                     ),
                                   ],
                                 )
                               ],
                             ),
                           ),],),
                     ),
                     Container(
                       width: 326,
                       height: 168,
                       color: const Color.fromRGBO(151, 225, 239, 1.0),
                       child:Stack(
                         children: [
                           Padding(
                             padding: const EdgeInsets.all(10),
                             child: Column(
                               children: [
                                 const Padding(
                                   padding: EdgeInsets.only(top: 10,left: 5),
                                   child: Text('Positive vibes',textAlign: TextAlign.left,
                                     style:
                                     TextStyle(color:Color.fromRGBO(52, 64, 84, 1),
                                       fontSize: 16, fontWeight: FontWeight.w600,),),
                                 ),
                                 Column(
                                   children: [
                                     Row(
                                       children: [
                                         const Expanded(
                                           child: Text(style:TextStyle(color:Color.fromRGBO(0, 0, 0, 1),
                                               fontSize: 16, fontWeight: FontWeight.w400),
                                             'Boost your mood with positive vibes',
                                             maxLines: 2,
                                             overflow: TextOverflow.ellipsis,
                                           ),
                                         ),
                                         Image.asset('lib/images/Walking the Dog.png'),
                                       ],
                                     ),
                                     const Row(
                                       children: [
                                         Icon (Icons.play_circle,color:Color.fromRGBO(50, 213, 131, 1)),
                                         Text('10 mins',style:TextStyle(fontWeight: FontWeight.w500,fontSize: 14,color:Colors.black))
                                       ],
                                     ),
                                   ],
                                 )
                               ],
                             ),
                           ),
                         ],
                       ),
                     ),
                     Container(
                       width: 326,
                       height: 168,
                       color: const Color.fromRGBO(163, 163, 210, 1.0),
                       child:Stack(
                         children: [
                           Padding(
                             padding: const EdgeInsets.all(10),
                             child: Column(
                               children: [
                                 const Padding(
                                   padding: EdgeInsets.only(top: 10,left: 5),
                                   child: Text('Positive vibes',textAlign: TextAlign.left,
                                     style:
                                     TextStyle(color:Color.fromRGBO(52, 64, 84, 1),
                                       fontSize: 16, fontWeight: FontWeight.w600,),),
                                 ),
                                 Column(
                                   children: [
                                     Row(
                                       children: [
                                         const Expanded(
                                           child: Text(style:TextStyle(color:Color.fromRGBO(0, 0, 0, 1),
                                               fontSize: 16, fontWeight: FontWeight.w400),
                                             'Boost your mood with positive vibes',
                                             maxLines: 2,
                                             overflow: TextOverflow.ellipsis,
                                           ),
                                         ),
                                         Image.asset('lib/images/Walking the Dog.png'),
                                       ],
                                     ),
                                     const Row(
                                       children: [
                                         Icon (Icons.play_circle,color:Color.fromRGBO(50, 213, 131, 1)),
                                         Text('10 mins',style:TextStyle(fontWeight: FontWeight.w500,fontSize: 14,color:Colors.black))
                                       ],
                                     ),
                                   ],
                                 )
                               ],
                             ),
                           ),
                         ],
                       ),
                     ),
                   ],
                 ),
               ),
               const SizedBox(height: 15,),
               const Row(
                 children: [
                   Text('Features',style: TextStyle(fontWeight: FontWeight.w600,fontSize:18,color: Colors.black),textAlign: TextAlign.start,),
                   SizedBox(width: 160,),
                   Text('see more',style:TextStyle(fontWeight: FontWeight.w400,fontSize:16,color:Color.fromRGBO(2, 122, 72, 1) ),textAlign: TextAlign.right,),
                   Icon(Icons.chevron_right,color: Color.fromRGBO(2, 122, 72, 1)),
                   SizedBox(height: 5),
                 ],
               ),
               Column(
                 mainAxisAlignment: MainAxisAlignment.start,
                 children: [
                   Row(
                     children: [
                       Container(
                         width: 151,
                         height: 56,
                         color:const Color.fromRGBO(249, 245, 255, 1),
                         child: const Stack(
                           children: [
                             Padding(padding: EdgeInsets.only(top: 10,left: 5),
                             child: Row(
                               children: [
                                 Image(image: AssetImage('lib/images/Frame.png')),
                                 SizedBox(width: 8,),
                                 Text('Relaxation',style: TextStyle(fontWeight:FontWeight.w500,fontSize: 14,color:Color.fromRGBO(0, 0, 0, 1)),)
                               ],
                             ),)
                           ],),),
                       const SizedBox(width: 20),
                       Container(
                         width: 151,
                         height: 56,
                         color:const Color.fromRGBO(253, 242, 250, 1),
                         child: const Stack(
                           children: [
                             Padding(padding: EdgeInsets.only(top: 10,left: 5),
                               child: Row(
                                 children: [
                                   Image(image: AssetImage('lib/images/Group.png')),
                                   SizedBox(width: 8,),
                                   Text('Meditation',style: TextStyle(fontWeight:FontWeight.w500,fontSize: 14,color:Color.fromRGBO(0, 0, 0, 1)),)
                                 ],
                               ),)
                           ],),),],),
                   const SizedBox(height: 10),
                   Row(
                     children: [
                       Container(
                         width: 151,
                         height: 56,
                         color:const Color.fromRGBO(255, 250, 245, 1),
                         child: const Stack(
                           children: [
                             Padding(padding: EdgeInsets.only(top: 10,left: 5),
                               child: Row(
                                 children: [
                                   Image(image: AssetImage('lib/images/Group (1).png')),
                                   SizedBox(width: 8,),
                                   Text('Breathing',style: TextStyle(fontWeight:FontWeight.w500,fontSize: 14,color:Color.fromRGBO(0, 0, 0, 1)),)
                                 ],
                               ),)
                           ],),
                       ),
                       const SizedBox(width: 20),
                       Container(
                         width: 151,
                         height: 56,
                         color:const Color.fromRGBO(240, 249, 255, 1),
                         child: const Stack(
                           children: [
                             Padding(padding: EdgeInsets.only(top: 10,left: 5),
                               child: Row(
                                 children: [
                                   Image(image: AssetImage('lib/images/Frame (1).png')),
                                   SizedBox(width: 8,),
                                   Text('Yoga',style: TextStyle(fontWeight:FontWeight.w500,fontSize: 14,color:Color.fromRGBO(0, 0, 0, 1)),)
                                 ],
                               ),)
                           ],),
                       ),
                     ],
                   ),
                 ],
               ),
             ],
           ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home,color:Color.fromRGBO(54, 63, 114, 1)),
            label: ''
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.grid_view_outlined,color:Color.fromRGBO(54, 63, 114, 1)),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_today,color:Color.fromRGBO(54, 63, 114, 1)),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person,color:Color.fromRGBO(54, 63, 114, 1)),
            label: '',
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}