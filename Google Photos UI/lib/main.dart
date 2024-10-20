import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              // Google Photos with Profile Pic
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    //Google Photos Name
                    RichText(
                        text: TextSpan(
                            text: "G",
                            style: TextStyle(fontSize: 25, color: Colors.blue),
                            children: [
                          TextSpan(
                              text: "o", style: TextStyle(color: Colors.red)),
                          TextSpan(
                              text: "o",
                              style: TextStyle(color: Colors.yellow)),
                          TextSpan(
                              text: "g", style: TextStyle(color: Colors.blue)),
                          TextSpan(
                              text: "l", style: TextStyle(color: Colors.green)),
                          TextSpan(
                              text: "e", style: TextStyle(color: Colors.red)),
                          TextSpan(
                              text: " Photos",
                              style: TextStyle(color: Colors.grey)),
                        ])),
                    Container(
                      height: 60,
                      width: 150,
                      // color: Colors.red,
                      child: Row(
                        // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          SizedBox(
                            width: 15,
                          ),
                          Icon(
                            Icons.add,
                            size: 35,
                            color: Colors.grey,
                          ),
                          Icon(
                            Icons.notification_add,
                            size: 35,
                            color: Colors.grey,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          CircleAvatar(
                            backgroundImage: NetworkImage(
                                "https://avatarfiles.alphacoders.com/375/thumb-1920-375571.png"),
                            radius: 25,
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 200,
                width: 330,
                // color: Colors.red,
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      buildContainer_top("Shared 1 year ago",
                          "https://media.istockphoto.com/id/1447126543/photo/father-bonding-kiss-and-boy-child-hug-happy-in-nature-with-quality-time-together-outdoor.jpg?s=612x612&w=0&k=20&c=iujHdzYFrmfLgVLKcAzu4y1-awTR2xRo5m-rD9w35wU="),
                      SizedBox(
                        width: 10,
                      ),
                      buildContainer_top("Remember this day?",
                          "https://images.picxy.com/cache/2021/1/12/0e7e867ead16f8d138e625ccbbb0ad20.jpg"),
                      SizedBox(
                        width: 10,
                      ),
                      buildContainer_top("Throwback Video",
                          "https://www.indiatripdesigner.com/assets/images/india-tourist-guide.jpg"),
                    ],
                  ),
                ),
              ),
              // Date with Location and Icon
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  height: 50,
                  width: double.infinity,
                  // color: Colors.red,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Today",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold)),
                      Container(
                        height: 50,
                        width: 80,
                        // color: Colors.black,
                        child: Row(children: [
                          Icon(
                            Icons.check_circle_outline_outlined,
                          ),
                          SizedBox(
                            width: 25,
                          ),
                          Icon(
                            Icons.more_vert,
                          )
                        ]),
                      )
                    ],
                  ),
                ),
              ),
              // Bottom Images
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 170,
                    width: 80,
                    // color: Colors.red,
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          buildContainer_bottom(52, 80,
                              "https://thumbs.dreamstime.com/b/portrait-studio-happy-child-pointing-hand-space-smile-face-yellow-background-young-girl-kid-happiness-carefree-273529124.jpg"),
                          buildContainer_bottom(52, 80,
                              "https://raisingchildren.net.au/__data/assets/image/0036/47988/staying-positivenarrow.jpg"),
                          buildContainer_bottom(52, 80,
                              "https://cdn.pixabay.com/photo/2015/06/22/08/38/children-817368_1280.jpg"),
                        ]),
                  ),
                  Container(
                    height: 170,
                    width: 185,
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        image: DecorationImage(
                            image: NetworkImage(
                                "https://static.vecteezy.com/system/resources/thumbnails/028/947/162/small_2x/adorable-baby-with-vibrant-clothing-in-a-playful-pose-ai-generative-photo.jpg"),
                            fit: BoxFit.cover)),
                  ),
                  Container(
                    height: 170,
                    width: 80,
                    // color: Colors.red,
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          buildContainer_bottom(52, 80,
                              "https://static.photocrowd.com/article-images/2015-12/article107/upl/H0/107-12-tips-photographing-children.RyAPvASBm0uWwX4OzlP-v2u12.jpeg"),
                          buildContainer_bottom(52, 80,
                              "https://www.theclickcommunity.com/blog/wp-content/uploads/2017/12/How-to-photograph-uncooperative-kids-by-Erica-Williams-1.jpg"),
                          buildContainer_bottom(52, 80,
                              "https://images.pexels.com/photos/3079978/pexels-photo-3079978.jpeg?cs=srgb&dl=pexels-ritesh-arya-1423700-3079978.jpg&fm=jpg"),
                        ]),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  buildContainer_bottom(110, 113,
                      "https://triumph.srivenkateshwaraa.edu.in/uploads/images/202307/image_750x_64bdf82b5ee57.jpg"),
                  buildContainer_bottom(110, 113,
                      "https://mcom.sfgc.ac.in/images/graduation-2022/graduation-4.jpg"),
                  buildContainer_bottom(110, 113,
                      "https://www.thoughtco.com/thmb/jGOADb2eKSh5tKLAiY6RkakBIR8=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/476804009-56a18f2b5f9b58b7d0c0a95f.jpg"),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  Container buildContainer_bottom(height, width, img) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
          color: Colors.black,
          image: DecorationImage(image: NetworkImage(img), fit: BoxFit.cover)),
    );
  }

  Container buildContainer_top(text, img) {
    return Container(
      height: 200,
      width: 140,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Text(text,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    color: Colors.white)),
          )
        ],
      ),
      decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.circular(15),
          image: DecorationImage(image: NetworkImage(img), fit: BoxFit.cover)),
    );
  }
}
