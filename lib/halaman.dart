// ignore_for_file: must_be_immutable

import 'package:coba_flutter/loding.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'dart:convert';

class HalamanUtama extends StatefulWidget {
  const HalamanUtama({Key? key}) : super(key: key);

  @override
  State<HalamanUtama> createState() => _HalamanUtamaState();
}

class _HalamanUtamaState extends State<HalamanUtama> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Halaman(),
    );
  }
}
class Halaman extends StatelessWidget {
  Halaman({Key? key}) : super(key: key);

  final TextEditingController nickName = TextEditingController();
  final TextEditingController phoneNumber = TextEditingController();
  final TextEditingController room = TextEditingController();
  final TextEditingController patientName = TextEditingController();

  DateTime currentDate = DateTime.now();

  Future<void> kirimData() async {
    var url = Uri.http("localhost", "koneksi/simpan.php", {'q': '{http}'});
    var response = await http.post(
      url,
      body: {
        "nama": nickName.text,
        "no_telp": phoneNumber.text,
        "ruangan": room.text,
        "nama_pasien": patientName.text,
        "tanggal": currentDate.toString(),
      },
    );

    var data = json.decode(response.body);
    if (data.toString() == 'Berhasil') {
      print("Tersambung!");
    } else {
      print("Gagal!");
    }
  }

  bool validateFields() {
    return nickName.text.isNotEmpty &&
        phoneNumber.text.isNotEmpty &&
        room.text.isNotEmpty &&
        patientName.text.isNotEmpty;
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    const double defaultPadding = 0.03;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Guest Data Information",
          style: TextStyle(
            fontSize: size.width * 0.03,
          ),
        ),
        centerTitle: true,
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: <Color>[
                Colors.green,
                Colors.blue,
              ],
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(defaultPadding),
        child: Column(
          children: <Widget>[
            buildTextField(nickName, "Name", Icons.person, size.height * 0.03),
            buildTextField(phoneNumber, "Phone Number", Icons.phone, size.height * 0.03),
            buildTextField(room, "Room", Icons.meeting_room, size.height * 0.03),
            buildTextField(patientName, "Patient's Name", Icons.person_pin, size.height * 0.03),
            Container(
              margin: EdgeInsets.symmetric(vertical: size.height * 0.03),
              child: Text(
                "Date: ${currentDate.day}-${currentDate.month}-${currentDate.year}",
                style: TextStyle(
                  fontSize: size.width * 0.03,
                ),
              ),
            ),
            SizedBox(height: size.height * 0.03),
            ElevatedButton(
              onPressed: () {
                if (validateFields()) {
                  kirimData();
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Loading(),
                    ),
                  );
                } else {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: Text('Error'),
                        content: Text('Please fill in all fields.'),
                        actions: <Widget>[
                          TextButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            child: Text('OK'),
                          ),
                        ],
                      );
                    },
                  );
                }
              },
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(vertical: size.width * 0.02, horizontal: size.width * 0.03),
              ),
              child: Text(
                "SUBMIT",
                style: TextStyle(
                  fontSize: size.width * 0.03,
                  fontFamily: 'Roboto',
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildTextField(TextEditingController controller, String labelText, IconData icon, double verticalMargin) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: verticalMargin),
      child: TextFormField(
        controller: controller,
        decoration: InputDecoration(
          labelText: labelText,
          prefixIcon: Icon(icon),
          border: OutlineInputBorder(),
        ),
        onChanged: (text) {
          (() {});
        },
      ),
    );
  }
}
