import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          body: Column(
        children: [
          Container(
            height: 380,
            width: double.infinity,
            // color: Colors.red,
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    // 1 Chicken
                    width: 260,
                    height: 380,
                    decoration: BoxDecoration(
                        color: Colors.black,
                        image: DecorationImage(
                            image: NetworkImage(
                                "https://img.freepik.com/premium-photo/photo-grilled-chicken-legs-flaming-grill-with-grilled-vegetables-with-tomatoes-potatoes-pep_131346-430.jpg"),
                            fit: BoxFit.cover),
                        borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(105))),
                  ),
                  // 3 Chickens
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      buildCircleAvatar(
                          "https://t4.ftcdn.net/jpg/05/57/58/55/360_F_557585596_xhbMWo3aBZ8eXP47JzqXZQ70epQ97VO0.jpg"),
                      buildCircleAvatar(
                          "https://assets.epicurious.com/photos/5b843bce1abfc56568396369/1:1/w_2560%2Cc_limit/Grilled-Chicken-with-Mustard-Sauce-and-Tomato-Salad-recipe-2-22082018.jpg"),
                      buildCircleAvatar(
                          "https://www.foodandwine.com/thmb/Km8A0Dc_s5E8alSiWbehwuk8gI4=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/Grilled-Tandori-Chicken-FT-RECIPE0323-de1e247b1dbb4c0e9cb11243141eaa50.jpg"),
                      buildCircleAvatar(
                          "https://i.ytimg.com/vi/y4h8e3c6nU0/sddefault.jpg"),
                    ],
                  )
                ]),
          ),
          // Chicken Name
          SizedBox(
            height: 10,
          ),
          Text(
            "Juicy Roasted Chicken",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Text(
              "Every mouthful is a balance of juicy tenderness and rich, roasted depth, leaving you wanting more of that melt-in-your-mouth goodness.",
              textAlign: TextAlign.justify,
              style: TextStyle(fontStyle: FontStyle.italic, fontSize: 18),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              buildContainer("₹250"),
              buildContainer("1 + 1"),
              buildContainer("4.8⭐"),
            ],
          )
        ],
      )),
    );
  }

  Container buildContainer(text) {
    return Container(
      height: 70,
      width: 100,
      child: Center(
        child: Text(text,
            textAlign: TextAlign.center,
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 28,
                color: Colors.white)),
      ),
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.circular(15),
      ),
    );
  }

  CircleAvatar buildCircleAvatar(image) {
    return CircleAvatar(
      backgroundColor: Colors.black,
      radius: 45,
      child: CircleAvatar(
        backgroundImage: NetworkImage(image),
        radius: 42,
      ),
    );
  }
}
