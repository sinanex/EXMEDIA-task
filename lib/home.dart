import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 115,
        flexibleSpace: SizedBox(
          height: 300,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(height: 30,),
                Row(
                  
                  children: [
                    Image.asset(
                      'assets/digital.png',
                      width: 150,
                    ),
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.home_outlined,
                          color: Colors.green,
                        )),
                    SizedBox(
                        width: 170,
                        height: 50,
                        child: Expanded(
                            child: TextField(
                          decoration: InputDecoration(
                              hintText: 'Search...',
                              hintStyle: TextStyle(fontSize: 15),
                              suffixIcon: Icon(Icons.search),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20))),
                        ))),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Row(
                      
                          children: [
                            Container(
                              width: 200,
                              height: 50,
                              decoration: BoxDecoration(
                                color:  Colors.orange[600]
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  Icon(Icons.school_outlined,color: Colors.white,),
                                  Text("Find Students Talents",style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white
                                  ),)
                                ],
                              ),
                            ),
                            SizedBox(width: 10,),
                            Container(
                              width: 180,
                              height: 50,
                              color: Colors.blue,
                              child: Row(
                                children: [
                         Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                           children: [
                            Icon(Icons.explore,color: Colors.white,),
                             Text("Explore Gigs",style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white
                             ),),
                           ],
                         )
                                ],
                              ),
                            )
                          ],
                        ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
      body: Column(
        children: [],
      ),
    );
  }
}
