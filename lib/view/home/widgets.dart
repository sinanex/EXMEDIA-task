import 'package:flutter/material.dart';

Padding jobcards() {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Container(
      width: double.infinity,
      height: 370,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            color: Colors.grey,
          )),
      child: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          spacing: 10,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 20,
            ),
            Text(
              "Facebook",
              style: TextStyle(
                fontSize: 18,
              ),
            ),
            Text(
              "Sr. Frontend Engineer",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
            Text(
                "Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna ."),
            Row(
              children: [
                Text(
                  "Experince:  ",
                  style: TextStyle(fontWeight: FontWeight.w400, fontSize: 16),
                ),
                Container(
                  width: 80,
                  height: 30,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.green[200]),
                  child: Center(
                    child: Text(
                      "2 Years",
                      style: TextStyle(
                        color: Colors.green[900],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Text("Salary:  "),
                Container(
                  width: 100,
                  height: 30,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(18),
                      color: Colors.blue[200]),
                  child: Center(
                    child: Text(
                      "180K - 250K",
                      style: TextStyle(color: Colors.blue[800]),
                    ),
                  ),
                ),
              ],
            ),
            Container(
              width: 130,
              height: 50,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  gradient: LinearGradient(colors: [
                    Colors.green[400]!,
                    Colors.green[700]!,
                  ])),
              child: Center(
                  child: Text(
                "Apply",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 17),
              )),
            ),
          ],
        ),
      ),
    ),
  );
}

List<Widget> carosualItems = [
  carosualItem(image: 'assets/images/03.c538ca3b9bc8f2a5378d.jpg',text: "Word Press Developemnt"),
  carosualItem(image: 'assets/images/06.296e0ddb4aa6faa9d579.jpg',text: "Digital Marketing"),
  carosualItem(image: 'assets/images/01.505f19f275234d37ae32.jpg', text: "Audio & Video Editing"),
  carosualItem(image: 'assets/images/02.b483e9502d81d8a68583.jpg', text: "Admin & Customer Support")

];

Padding carosualItem({required String image,required String text}) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Container(
      width: double.infinity,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
      child: Stack(
        children: [
          ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset(
                image,
                fit: BoxFit.contain,
              )),
          Align(
            alignment: Alignment.bottomCenter,
            child: Center(
              child: Text(
                text,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 26,
                    fontWeight: FontWeight.bold),
              ),
            ),
          )
        ],
      ),
    ),
  );
}
