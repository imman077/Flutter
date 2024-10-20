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
            backgroundColor: Color(0xff075e54),
            title: Text("WhatsApp",
                style: TextStyle(
                    fontWeight: FontWeight.bold, color: Colors.white)),
          ),
          body: SingleChildScrollView(
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                buildListTile("Joei", "Hi! How are you?",
                    "https://sectricity.com/wp-content/uploads/2023/05/Hacker-Cyber-Security-Internet-Sectricity.jpg"),
                buildListTile("Priya", "Oii",
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQNPTZdVhettUOgL4gulcQCozdbr2gvz4nOcQ&s"),
                buildListTile("Vijay", "Macha match podalama?",
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQjabEd8Zn4g2noTQmDskxza5_gxeGeQ8gC_g&s"),
                buildListTile("Joei", "Hi! How are you?",
                    "https://sectricity.com/wp-content/uploads/2023/05/Hacker-Cyber-Security-Internet-Sectricity.jpg"),
                buildListTile("Priya", "Oii",
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQNPTZdVhettUOgL4gulcQCozdbr2gvz4nOcQ&s"),
                buildListTile("Vijay", "Macha match podalama?",
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQjabEd8Zn4g2noTQmDskxza5_gxeGeQ8gC_g&s"),
                buildListTile("Joei", "Hi! How are you?",
                    "https://sectricity.com/wp-content/uploads/2023/05/Hacker-Cyber-Security-Internet-Sectricity.jpg"),
                buildListTile("Priya", "Oii",
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQNPTZdVhettUOgL4gulcQCozdbr2gvz4nOcQ&s"),
                buildListTile("Vijay", "Macha match podalama?",
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQjabEd8Zn4g2noTQmDskxza5_gxeGeQ8gC_g&s"),
                buildListTile("Joei", "Hi! How are you?",
                    "https://sectricity.com/wp-content/uploads/2023/05/Hacker-Cyber-Security-Internet-Sectricity.jpg"),
                buildListTile("Priya", "Oii",
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQNPTZdVhettUOgL4gulcQCozdbr2gvz4nOcQ&s"),
                buildListTile("Vijay", "Macha match podalama?",
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQjabEd8Zn4g2noTQmDskxza5_gxeGeQ8gC_g&s"),
              ],
            ),
          ),
        ));
  }

  ListTile buildListTile(title, subtitle, backgroundImage) {
    return ListTile(
      leading: CircleAvatar(
        backgroundImage: NetworkImage(backgroundImage),
      ),
      title: Text(title),
      subtitle: Text(subtitle),
      trailing: Column(
        children: [
          Text("11/10/2024"),
          Icon(
            Icons.done_all,
            color: Colors.blue,
          )
        ],
      ),
    );
  }
}
