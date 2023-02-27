import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Container(
            height: MediaQuery.of(context).size.width > 400
                ? 600
                : MediaQuery.of(context).size.height,
            width: 900,
            color: Color(0xffD6E2F0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(),
                Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)),
                  // height: 300,
                  // color: Colors.amber,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 15, horizontal: 15),
                        child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset(
                              'assets/image-qr-code.png',
                              // image: AssetImage(
                              // ),
                              height: 300,
                              width: 300,
                            )),
                      ),
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 5, horizontal: 20),
                            child: Text(
                              textAlign: TextAlign.center,
                              'Improve your front-end\nskills by building projects',
                              style: GoogleFonts.outfit(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 22,
                                  color: Color(0xff1F3251)),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 45, top: 10),
                            child: Text(
                              textAlign: TextAlign.center,
                              'Scan the QR code to visit frontend\nMentor and take your coding skills to\nthe next level',
                              style: GoogleFonts.outfit(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 16,
                                  color: Color(0xff7B879D)),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
