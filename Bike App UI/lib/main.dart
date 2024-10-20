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
            // Bike Logo
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.network(
                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSGIlUJkU4yF0DZ_LBQe1IJ6RfqAufzZwulcQ&s"),
            ),

            // Bike Image
            Image.network(
              "https://i.pinimg.com/474x/d9/9e/bf/d99ebf053a8256097abd3eadd8eeff54.jpg",
            ),

            // bike Name
            Text("Classic 500",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                  fontStyle: FontStyle.italic,
                )),

            // Bike Specifications
            Text("Specifications",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 35,
                  color: Colors.red,
                )),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                buildContainer(
                    "https://png.pngtree.com/png-clipart/20230124/ourmid/pngtree-cool-motorcycle-engine-illustration-image-png-image_6573706.png",
                    "373 CC"),
                buildContainer(
                    "https://e7.pngegg.com/pngimages/522/705/png-clipart-electric-motor-brook-crompton-crompton-greaves-premium-efficiency-fractional-horsepower-motor-others-electrical-wires-cable-iron-thumbnail.png",
                    "45 PS"),
                buildContainer(
                    "https://pngimg.com/d/speedometer_PNG26.png", "2.5 KM"),
                buildContainer(
                    "https://spng.pngfind.com/pngs/s/130-1306455_brake-png-brake-disc-png-transparent-png-download.png",
                    "Disk"),
              ],
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 175,
                width: double.infinity,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(
                            "https://cdni.autocarindia.com/Utils/ImageResizer.ashx?n=https://cdni.autocarindia.com/ExtraImages/20240731122504_C.jpg&w=700&c=1"),
                        fit: BoxFit.cover),
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(15)),
              ),
            ),
            // Image.network(
            //   "https://apnamechanic.com/blog/wp-content/uploads/2022/06/bullet-service-online-1024x683-1.jpg",
            // )
          ],
        ),
      ),
    );
  }

  Container buildContainer(image, text) {
    return Container(
      height: 80,
      width: 80,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image.network(
            image,
            height: 50,
            width: 50,
          ),
          Text(text,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15)),

          // Text("373 CC"),
        ],
      ),
      decoration: BoxDecoration(
          // color: Colors.black,
          border: Border.all(
            color: Colors.red,
            width: 2,
          ),
          borderRadius: BorderRadius.circular(15)),
    );
  }
}
