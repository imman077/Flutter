import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String degree = "UG"; // This variable will store the selected degree
  bool chv1 = false;
  bool chv2 = false;
  bool chv3 = false;
  bool chv4 = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          body: Column(
            children: [
              Container(
                height: 200,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(100),
                      bottomRight: Radius.circular(100),
                    ),
                    image: DecorationImage(
                        image: NetworkImage(
                            "https://actiosoftware.com/wp-content/uploads/2024/02/resposta-do-smiley-do-cliente-do-feedback-da-avaliacao-1.jpg"),
                        fit: BoxFit.cover)),
              ),
              Text(
                "FeedBack Form",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
              ),
              Container(
                height: 350,
                // color: Colors.red,
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: SingleChildScrollView(
                    child: Column(
                        // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          // Name
                          TextField(
                            decoration: InputDecoration(
                                prefixIcon: Icon(Icons.person),
                                hintText: "Enter Your Name",
                                labelText: "Your Name",
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(15))),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          // Whatsapp Number
                          TextField(
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                                prefixIcon: Icon(Icons.phone),
                                hintText: "Enter Your WhatsApp Number",
                                labelText: "Your Number",
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(15))),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "Your Degree",
                            style: TextStyle(
                                fontSize: 30, fontWeight: FontWeight.bold),
                          ),
                          Row(
                            children: [
                              Radio(
                                // UG Student
                                value: "UG",
                                groupValue: degree,
                                onChanged: (value) {
                                  setState(() {
                                    degree = value
                                        .toString(); // Update the state with the new degree
                                  });
                                  print(
                                      value); // Print the selected value to the console
                                },
                              ),
                              Text("UG Student"),

                              // PG Student
                              Radio(
                                // UG Student
                                value: "PG",
                                groupValue: degree,
                                onChanged: (value) {
                                  setState(() {
                                    degree = value
                                        .toString(); // Update the state with the new degree
                                  });
                                  print(
                                      value); // Print the selected value to the console
                                },
                              ),
                              Text("PG Student"),

                              // Developer
                              Radio(
                                // UG Student
                                value: "Developer",
                                groupValue: degree,
                                onChanged: (value) {
                                  setState(() {
                                    degree = value
                                        .toString(); // Update the state with the new degree
                                  });
                                  print(
                                      value); // Print the selected value to the console
                                },
                              ),
                              Text("Developer"),
                            ],
                          ),
                          Text(
                            "Favorite Program",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 30),
                          ),
                          Row(
                            children: [
                              Checkbox(
                                  value: chv1,
                                  onChanged: (value) {
                                    setState(() {
                                      chv1 = value ?? false;
                                    });
                                    print(value);
                                  }),
                              Text("Flutter"),
                              Checkbox(
                                  value: chv2,
                                  onChanged: (value) {
                                    setState(() {
                                      chv2 = value ?? false;
                                    });
                                    print(value);
                                  }),
                              Text("Html&Css"),
                              Checkbox(
                                  value: chv3,
                                  onChanged: (value) {
                                    setState(() {
                                      chv3 = value ?? false;
                                    });
                                    print(value);
                                  }),
                              Text("JS"),
                              Checkbox(
                                  value: chv4,
                                  onChanged: (value) {
                                    setState(() {
                                      chv4 = value ?? false;
                                    });
                                    print(value);
                                  }),
                              Text("React"),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          // Feedback
                          TextField(
                            maxLines: 3,
                            decoration: InputDecoration(
                                hintText: "Write your feedback",
                                labelText: "FeedBack",
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(15))),
                          ),
                        ]),
                  ),
                ),
              )
            ],
          ),
        ));
  }
}
