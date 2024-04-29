// import 'package:coba_flutter/loding.dart';
// import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;
// import 'dart:convert';

// class RuanganUtama extends StatefulWidget {
//   const RuanganUtama({super.key});

//   @override
//   State<RuanganUtama> createState() => _MyWidgetState();
// }

// class _MyWidgetState extends State<RuanganUtama> {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Ruangan(),
//     );
//   }
// }

// class Ruangan extends StatelessWidget {
//    Ruangan({super.key});

//    final TextEditingController Room = TextEditingController();
//   final TextEditingController PantientsName = TextEditingController();

//   Future kirimData() async {
//     var url = Uri.http("localhost", "koneksi/simpan.php", {'q':'{http}'});
//     var respon = await http.post(
//       url,
//       body: {
//         "Room" : Room.text,
//         "PantientsName" : PantientsName.text
//       }
//       );

//     var data = json.decode(respon.body);
//     if (data.toString() == 'Berhasil') {
//       print("Tersambung!");
//     } else {
//       print("Gagal!");
//     }
//   }
 

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Visited Patients",
//               style: TextStyle(
//                 fontSize: 30.0,
//               ),
//         ),
//         centerTitle: true,
//           flexibleSpace: Container(
//             decoration: BoxDecoration(
//               gradient: LinearGradient(
//                 begin: Alignment.topLeft,
//                 end: Alignment.bottomRight,
//                 colors: <Color>[
//                   Colors.green,
//                   Colors.blue,
//                 ],
//               ),
//             ),
//           ),
//       ),
//       body: Padding(
//         padding: EdgeInsets.all(20),
//         child: Column(
//           children: <Widget>[
//              Container(
//                 margin: EdgeInsets.symmetric(vertical: 30),
//                 child: TextField(
//                   controller: Room,
//                   decoration: InputDecoration(
//                     border: OutlineInputBorder(),
//                     label: Text("Room")
//                   ),
//                   onChanged: (text) {
//                     setState () {
//                      };
//                   }, 
//                 ),
//               ),

//                Container(
//                 margin: EdgeInsets.symmetric(vertical: 30),
//                 child: TextField(
//                   controller: PantientsName,
//                   decoration: InputDecoration(
//                     border: OutlineInputBorder(),
//                     label: Text("Patient's Name")
//                   ),
//                   onChanged: (text) {
//                     setState () {
//                      };
//                   }, 
//                 ),
//               ),
//               ElevatedButton(
//               onPressed: () {
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(
//                     builder: (context) => Loading(),
//                   ),
//                 );
//               },
//               child:  Text("SUBMIT",
//               style: TextStyle(
//                     fontSize: 30.0,
//                     fontFamily: 'Roboto'
//               ),
              
//               ),
//             ),
//           ],
//         ),
//       ),
// );
// }
// }
