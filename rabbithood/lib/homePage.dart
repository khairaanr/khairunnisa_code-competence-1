import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:google_fonts/google_fonts.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final usnController = TextEditingController();
  final emailController = TextEditingController();
  final msgController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 249, 222),
      appBar: AppBar(
        title: Image.asset(
          'assets/logo.png',
          height: 120,
        ),
        backgroundColor: Color.fromARGB(255, 255, 249, 222),
        elevation: 0,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Padding(padding: EdgeInsets.all(12)),
              Container(
                width: 300,
                child: Image.asset('assets/cover.jpeg'),
              ),
              SizedBox(
                height: 24,
              ),
              Text("The only wardrobe you need",
                  style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 24,
                          color: Colors.red))),
              Container(
                padding: EdgeInsets.all(24),
                child: Text(
                  "Let me tell you about a rabbit from a wondrous land who make the journey accross time, finding all the style you need.",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                    fontSize: 16,
                  )),
                ),
              ),
              Container(
                padding: EdgeInsets.all(24),
                child: Column(
                  children: [
                    SizedBox(
                      child: Text(
                        "Contact us",
                        style: GoogleFonts.poppins(fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 24),
                      width: 250,
                      child: Column(
                        children: [
                          TextField(
                            controller: usnController,
                            decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                hintText: "Username",
                                labelText: "Username"),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          TextField(
                            controller: emailController,
                            decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                hintText: "Email",
                                labelText: "Email"),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          TextField(
                            controller: msgController,
                            decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                hintText: "Message",
                                labelText: "Message"),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      width: 100,
                      height: 42,
                      child: TextButton(
                        onPressed: () {
                          showDialog(
                            context: context,
                            builder: (context) {
                              return AlertDialog(
                                content: Column(
                                  children: [Text(usnController.text), Text(emailController.text), Text(msgController.text)],
                                ),
                              );
                            },
                          );
                        },
                        child: Text(
                          "Submit",
                          style: GoogleFonts.poppins(color: Colors.white),
                        ),
                        style:
                            TextButton.styleFrom(backgroundColor: Colors.red),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
