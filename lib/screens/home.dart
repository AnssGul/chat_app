// import 'package:chating_screen/screens/chat.dart';
// import 'package:flutter/material.dart';
// class HomePAge extends StatefulWidget {
//   const HomePAge({Key? key}) : super(key: key);
//
//   @override
//   State<HomePAge> createState() => _HomePAgeState();
// }
//
// class _HomePAgeState extends State<HomePAge> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body:Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//       children: [
//         Row(
//           children: [
//             GestureDetector(
//               onTap:(){
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(builder: (context) => ChatPage()),
//                 );
//               },
//               child: Container(
//                 padding: EdgeInsets.all(12),
//                 width: MediaQuery.of(context).size.width,
//                 height: 200,
//                 child:Center(child: Text("Hi man! do you want chat with our driver",style: TextStyle(
//                   fontSize: 25,
//                   fontWeight: FontWeight.bold,
//                   color: Colors.white,
//
//                 ),maxLines: 4,)),
//                 decoration: BoxDecoration(
//                     color: Colors.red,
//                   borderRadius: BorderRadius.circular(20)
//                 ),
//               ),
//             )
//           ],
//         )
//       ],
//
//
//       ) ,
//     );
//   }
// }
