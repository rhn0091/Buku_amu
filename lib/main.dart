import 'package:coba_flutter/halaman.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: const Color.fromARGB(110, 100, 200, 30),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              child: Icon(
                Icons.local_hospital_rounded,
                size: size.width * 0.2, // Sesuaikan ukuran ikon
                color: Colors.blueGrey,
              ),
            ),
            Container(
              child: Text(
                "WISAGA HOSPITAL GUEST",
                style: TextStyle(
                  fontSize: size.width * 0.06, // Sesuaikan ukuran teks
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic,
                  color: Color.fromARGB(255, 65, 150, 0),
                ),
              ),
            ),
            SizedBox(height: size.height * 0.03), // Sesuaikan jarak antar widget
            FittedBox(
              child: SizedBox(
                width: size.width * 0.5, // Set the width of the button
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => HalamanUtama(),
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(vertical: 15, horizontal: 30), // Set padding
                  ),
                  child: Text(
                    "SUBMIT",
                    style: TextStyle(
                      fontSize: size.width * 0.03, // Sesuaikan ukuran teks tombol
                      fontFamily: 'Roboto',
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}