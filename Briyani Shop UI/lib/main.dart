import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});
  _MyAppState createState() => _MyAppState();
}

String mainimg =
    "https://i.pinimg.com/736x/ac/95/7b/ac957bd5463b9464d059cfd8cc35ef18.jpg";

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Column(
          children: [
            // Logo
            Center(
              child: Image.network(
                "https://cdn.dribbble.com/users/621668/screenshots/15550383/media/fd6379625e1aa0350b50f4e30d210d36.png?resize=400x300&vertical=center",
                height: 200,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            // Menus
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  SizedBox(
                    width: 10,
                  ),
                  buildContainer_menu("Hyderabadi Biryani"),
                  SizedBox(
                    width: 10,
                  ),
                  buildContainer_menu("Kolkata Biryani"),
                  SizedBox(
                    width: 10,
                  ),
                  buildContainer_menu("Thalassery Biryani"),
                  SizedBox(
                    width: 10,
                  ),
                  buildContainer_menu("Ambur Biryani"),
                  SizedBox(
                    width: 10,
                  ),
                  buildContainer_menu("Dindigul Biryani"),
                  SizedBox(
                    width: 10,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 380,
              width: double.infinity,
              // color: Colors.red,
              child: Row(children: [
                Container(
                  height: 380,
                  width: 160,
                  // color: Colors.black,
                  child: SingleChildScrollView(
                    child: Column(children: [
                      // Left
                      SizedBox(
                        height: 15,
                      ),
                      buildGestureDetector_leftmenu(
                          "https://i.pinimg.com/originals/6c/f4/83/6cf48394168034cc994d08137f8fbd0b.jpg"),
                      SizedBox(
                        height: 15,
                      ),
                      buildGestureDetector_leftmenu(
                          "https://www.thespruceeats.com/thmb/XDBL9gA6A6nYWUdsRZ3QwH084rk=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/SES-chicken-biryani-recipe-7367850-hero-A-ed211926bb0e4ca1be510695c15ce111.jpg"),
                      SizedBox(
                        height: 15,
                      ),
                      buildGestureDetector_leftmenu(
                          "https://c.ndtvimg.com/2022-04/fq5cs53_biryani-doubletree-by-hilton_625x300_12_April_22.jpg"),
                      SizedBox(
                        height: 15,
                      ),
                      buildGestureDetector_leftmenu(
                          "https://www.thedeliciouscrescent.com/wp-content/uploads/2019/04/Chicken-Biryani-Square.jpg"),
                      SizedBox(
                        height: 15,
                      ),
                      buildGestureDetector_leftmenu(
                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSH2hvTDW_nluFJntOm9rz4_42uFfYZuW2zjA&s"),
                      SizedBox(
                        height: 10,
                      ),
                    ]),
                  ),
                ),
                Column(
                  children: [
                    SizedBox(
                      height: 15,
                    ),
                    Container(
                      height: 200,
                      width: 180,
                      decoration: BoxDecoration(
                          color: Colors.black,
                          image: DecorationImage(
                              image: NetworkImage(mainimg), fit: BoxFit.cover),
                          borderRadius: BorderRadius.circular(15),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black,
                              offset: Offset(4, 5),
                              blurRadius: 6,
                            )
                          ]),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    // Ingedients Text
                    Text("Ingredients",
                        style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: Colors.black)),
                    SizedBox(
                      height: 10,
                    ),
                    // Ingedients Image
                    Container(
                      width: 200,
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            buildCircleAvatar_ing(
                                "https://freshtogo.in/product_image/1678000570Chicken%20Whole(Full%20Body)%20-%20With%20Skin.jpg"),
                            SizedBox(
                              width: 5,
                            ),
                            buildCircleAvatar_ing(
                                "https://5.imimg.com/data5/SELLER/Default/2023/5/306300866/NR/TY/FW/132462462/1509-golden-sella-basmati-rice.jpeg"),
                            SizedBox(
                              width: 5,
                            ),
                            buildCircleAvatar_ing(
                                "https://www.norex.in/uploads/blog/202310/img_6528e9617b4533-50928964-87596401.jpg"),
                            SizedBox(
                              width: 5,
                            ),
                            buildCircleAvatar_ing(
                                "https://www.daringgourmet.com/wp-content/uploads/2021/01/How-to-Make-Yogurt-7.jpg"),
                            SizedBox(
                              width: 5,
                            ),
                            buildCircleAvatar_ing(
                                "https://spicesofkerala.com/wp-content/uploads/2024/07/900-7.jpg"),
                            SizedBox(
                              width: 5,
                            ),
                            buildCircleAvatar_ing(
                                "https://healthyroots.com/cdn/shop/files/Redchilipowderatbestprice.jpg?v=1710930995"),
                          ],
                        ),
                      ),
                    )
                  ],
                )
              ]),
            )
          ],
        ),
      ),
    );
  }

  CircleAvatar buildCircleAvatar_ing(ing_img) {
    return CircleAvatar(
      backgroundColor: Colors.black,
      radius: 27,
      child: CircleAvatar(
        backgroundColor: Colors.white,
        radius: 25,
        backgroundImage: NetworkImage(
          ing_img,
        ),
      ),
    );
  }

  GestureDetector buildGestureDetector_leftmenu(image) {
    return GestureDetector(
      onTap: () {
        print("Type 1");
        setState(() {
          mainimg = image;
        });
      },
      child: Container(
        height: 100,
        width: 100,
        decoration: BoxDecoration(
            color: Colors.white,
            image:
                DecorationImage(image: NetworkImage(image), fit: BoxFit.cover),
            borderRadius: BorderRadius.circular(15),
            boxShadow: [
              BoxShadow(
                color: Colors.black,
                offset: Offset(4, 5),
                blurRadius: 6,
              )
            ]),
      ),
    );
  }

  Container buildContainer_menu(text) {
    return Container(
      height: 30,
      width: 160,
      color: Colors.black,
      child: Center(
        child: Text(text,
            style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.white)),
      ),
    );
  }
}
