import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: Text("Student Details",
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
        ),
        body: Column(
          children: [
            // Expansion Tile for Student
            ExpansionTile(
              leading: CircleAvatar(
                backgroundImage: NetworkImage(
                    "https://img.freepik.com/premium-vector/student-avatar-illustration-user-profile-icon-youth-avatar_118339-4395.jpg"),
              ),
              title:
                  Text("Imman", style: TextStyle(fontWeight: FontWeight.bold)),
              subtitle: Text("2301507202",
                  style: TextStyle(fontStyle: FontStyle.italic)),
              children: [
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Row(
                    children: [
                      // Blood Group
                      Icon(
                        Icons.bloodtype,
                        color: Colors.red,
                        size: 20,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "O+ve",
                        style: TextStyle(fontSize: 20),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Row(
                    children: [
                      // Phone Number
                      Icon(
                        Icons.phone,
                        color: Colors.blue,
                        size: 20,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "+91 8675453675",
                        style: TextStyle(fontSize: 20),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Row(
                    children: [
                      // Address
                      Icon(
                        Icons.home,
                        color: Colors.green,
                        size: 20,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "Reddiarpalayam, \nPuducherry - 605010",
                        style: TextStyle(fontSize: 20),
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ButtonBar(
                      children: [
                        Row(
                          children: [
                            TextButton(
                                onPressed: () {},
                                child: Column(
                                  children: [
                                    // Exam Details

                                    Icon(
                                      Icons.schedule,
                                      color: Colors.black,
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Text(
                                      "Exam Details",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          color: Colors.black, fontSize: 13),
                                    ),
                                  ],
                                )),
                            TextButton(
                                onPressed: () {},
                                child: Column(
                                  children: [
                                    // Attendance Details
                                    Icon(
                                      Icons.book,
                                      color: Colors.black,
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Text(
                                      "Attendance Details",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          color: Colors.black, fontSize: 13),
                                    ),
                                  ],
                                )),
                            TextButton(
                                onPressed: () {},
                                child: Column(
                                  children: [
                                    // Fees Details
                                    Icon(
                                      Icons.money,
                                      color: Colors.black,
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Text(
                                      "Fees Details",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          color: Colors.black, fontSize: 13),
                                    ),
                                  ],
                                )),
                          ],
                        )
                      ],
                    )
                  ],
                ) // Button Bar
              ],
            )
          ],
        ),
      ),
    );
  }
}
