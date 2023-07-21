import 'package:flutter/material.dart';
import 'package:flutter_application_2/wifi.dart';

import 'package:glassmorphism_ui/glassmorphism_ui.dart';

class MyInform extends StatefulWidget {
  const MyInform({super.key});

  @override
  State<MyInform> createState() => _MyInformState();
}

class _MyInformState extends State<MyInform> {
  final _formKey = GlobalKey<FormState>();
  var userName = "";
  @override
  Widget build(BuildContext context) {
    final mediquery = MediaQuery.of(context);
    return LayoutBuilder(
      builder: (context, constraints) => MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          body: Stack(
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 1,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(
                          "assets/images/Picsart_23-07-09_09-18-48-431.jpg"),
                      fit: BoxFit.cover),
                ),
                //color: const Color.fromARGB(255, 187, 240, 250),
              ),
              Center(
                child: SizedBox(
                  height: constraints.maxHeight * 0.63,
                  width: constraints.maxWidth,
                  child: Card(
                    margin: const EdgeInsets.only(
                      left: 20,
                      right: 20,
                    ),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25)),
                    elevation: 20,
                    color: Colors.transparent.withOpacity(0.7),

                    //color: const Color.fromRGBO(52, 69, 86, 0.9),
                    //color: const Color.fromRGBO(255, 187, 240, 0.7),
                    child: GlassContainer(
                      blur: double.infinity,
                      opacity: 0.2,
                      borderRadius: BorderRadius.circular(25),
                      child: SingleChildScrollView(
                        //physics: const NeverScrollableScrollPhysics(),

                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              margin: const EdgeInsets.only(left: 26, top: 10),
                              child: const Text(
                                "Personal Information",
                                style: TextStyle(
                                  color: Color.fromRGBO(154, 158, 162, 1),
                                  shadows: <Shadow>[
                                    Shadow(
                                      offset: Offset(1.4, 1.4),
                                      blurRadius: 15,
                                      //color: Color.fromRGBO(154, 158, 162, 1),
                                    ),
                                  ],
                                  fontWeight: FontWeight.bold,
                                  fontSize: 25,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: mediquery.size.height * 0.02,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Card(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(15)),
                                  elevation: 20,
                                  child: Form(
                                    key: _formKey,
                                    child: Container(
                                      margin: const EdgeInsets.only(left: 20),
                                      child: TextFormField(
                                        decoration: const InputDecoration(
                                          constraints: BoxConstraints(
                                              maxHeight: 60, maxWidth: 310),
                                          isDense: true,
                                          border: InputBorder.none,
                                          label: Text(
                                            "Address",
                                            style: TextStyle(),
                                          ),
                                          labelStyle: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.w400,
                                            fontSize: 18,
                                            letterSpacing: 1,
                                          ),
                                        ),
                                        onSaved: (value) {
                                          userName = value!;
                                        },
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: mediquery.size.height * 0.02,
                                ),
                                Card(
                                  //color: const Color.fromRGBO(255, 125, 135, 0.5),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(15)),
                                  elevation: 20,
                                  child: Form(
                                    child: Container(
                                      margin: const EdgeInsets.only(left: 20),
                                      child: TextFormField(
                                        keyboardType: TextInputType.number,
                                        decoration: const InputDecoration(
                                          constraints: BoxConstraints(
                                              maxHeight: 60, maxWidth: 310),
                                          border: InputBorder.none,
                                          label: Text("Phone No."),
                                          labelStyle: TextStyle(
                                            letterSpacing: 1,
                                            color: Colors.black,
                                            fontWeight: FontWeight.w400,
                                            fontSize: 18,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: mediquery.size.height * 0.02,
                                ),
                                Card(
                                  //color: const Color.fromRGBO(255, 125, 135, 0.5),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(15)),
                                  elevation: 20,
                                  child: Form(
                                    child: Container(
                                      margin: const EdgeInsets.only(left: 20),
                                      child: TextFormField(
                                        decoration: const InputDecoration(
                                          constraints: BoxConstraints(
                                              maxHeight: 60, maxWidth: 310),
                                          border: InputBorder.none,
                                          label: Text("Email id"),
                                          labelStyle: TextStyle(
                                            letterSpacing: 1,
                                            color: Colors.black,
                                            fontWeight: FontWeight.w400,
                                            fontSize: 18,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: mediquery.size.height * 0.02,
                                ),
                                Card(
                                  //color: const Color.fromRGBO(255, 125, 135, 0.5),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(15)),
                                  elevation: 20,
                                  child: Form(
                                    child: Container(
                                      margin: const EdgeInsets.only(left: 20),
                                      child: TextFormField(
                                        decoration: const InputDecoration(
                                          constraints: BoxConstraints(
                                              maxHeight: 60, maxWidth: 310),
                                          border: InputBorder.none,
                                          label: Text("Place of use"),
                                          labelStyle: TextStyle(
                                            letterSpacing: 1,
                                            color: Colors.black,
                                            fontWeight: FontWeight.w400,
                                            fontSize: 18,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: mediquery.size.height * 0.08,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    SizedBox(
                                      width: 135,
                                      height: 50,
                                      child: Card(
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(25),
                                        ),
                                        elevation: 20,
                                        color: Color.fromRGBO(97, 197, 201, 1),
                                        child: TextButton(
                                          onPressed: () {
                                            Navigator.of(context).push(
                                                MaterialPageRoute(builder: (_) {
                                              return const Wifii();
                                            }));
                                          },
                                          child: const Text(
                                            "Next",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 20),
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 135,
                                      height: 50,
                                      child: Card(
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(25),
                                        ),
                                        elevation: 20,
                                        color: Color.fromRGBO(97, 197, 201, 1),
                                        child: TextButton(
                                          onPressed: () {
                                            Navigator.of(context).pop();
                                          },
                                          child: const Text(
                                            "Skip",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 20),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: mediquery.size.height * 0.01,
                                ),
                              ],
                            ),
                          ],
                          //),
                        ),
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
