import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:studentsgigs/view/home/appbar.dart';
import 'package:studentsgigs/view/home/widgets.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: appbarHome(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Trending Jobs",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontSize: 26,
                  ),
                ),
                Icon(
                  Icons.moving,
                  color: Colors.green[800],
                  size: 40,
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Center(
                child: Text(
                  'Search all the open positions on the web. Get your own personalized salary estimate. Read reviews on over 30000+ companies worldwide.',
                  style: TextStyle(fontSize: 17),
                ),
              ),
            ),
            CarouselSlider(
                items: carosualItems,
                options: CarouselOptions(
                    autoPlay: true,
                    autoPlayInterval: Duration(seconds: 3),
                    viewportFraction: 1,
                    height: MediaQuery.of(context).size.height)),
            Text(
              "Popular Jobs",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 28,
              ),
            ),
            jobcards(),
            jobcards(),
            jobcards(),
            Text(
              "MoreJobs ",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.black,
                fontSize: 20,
              ),
            ),
            Row(
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width / 2,
                  child: Image.asset(
                      'assets/images/ab01.016884c7bf778010e79c.jpg'),
                ),
                Image.asset(
                  'assets/images/ab02.f851a3dde08585493f97.jpg',
                  width: MediaQuery.of(context).size.width / 2,
                ),
              ],
            ),
            Text(
              "Get The Job of your Dreams\nQuick & Easy.",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  fontSize: 20),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Text(
                "Empowering StudentsBridging Education with Real-World Experience Our mission is to make students independent, responsible, and equipped with practical exposure while learning. By connecting them with meaningful gigs, we aim to reduce the gap between academic knowledge and real-world skills, preparing them for a smarter future.",
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                    backgroundColor: Colors.black,
                    child: Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.white,
                    )),
                Text(
                  " Contact US",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
              ],
            ),
            Text(
              "Explore your job now",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 120,
                  height: 40,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.black,
                ),
                  child: Center(
                    child: Text("Applay now",style: TextStyle(
                      color: Colors.white
                    ),),
                  ),
                ),
                SizedBox(width: 10,),
                            Container(
                  width: 120,
                  height: 40,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.black
                  ),
                  borderRadius: BorderRadius.circular(20),
                ),
                  child: Center(
                    child: Text("learn more"),
                  ),
                ),
              ],
            ),
            SizedBox(height: 50,),
            Container(
              width: double.infinity,
              height: 600,
              color: const Color.fromARGB(255, 0, 1, 43),
              child: 
              Column(
                spacing: 15,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 30,),
                  Text("insiring Statement",style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    color: Colors.white
                  ),),
                  Text("Join us in creating a smarter, more independent generation by connecting students with real-world opportunities!",style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  ),),
                  Text("Quick Links",style: fontColorWhite(),),
                  Text("explore Gigs",style: fontColorWhite(),),
                  Text("Hire Talent",style: fontColorWhite(),),
                  Text("Companes",style: fontColorWhite(),),
                  Text("Contact Us",style: fontColorWhite(),),
                  SizedBox(height: 30,),
                  Text("contact with us",style: fontColorWhite(),),
                  Text("subscribe to our Newletter",style: fontColorWhite(),)

                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  TextStyle fontColorWhite(){
    return TextStyle(
   color: Colors.white
    );
  }
  }

