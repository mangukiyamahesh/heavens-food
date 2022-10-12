import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Map<String, dynamic>> list = [
    {'name': 'Pasta', 'image': 'assets/images/pasta.png'},
    {'name': 'Sushi', 'image': 'assets/images/sushi.png'},
    {'name': 'Salads', 'image': 'assets/images/salads.png'},
  ];
  List<Map<String, dynamic>> list2 = [
    {
      'image': 'assets/images/Apple-Brussels.jpg',
      'name': "Heaven's Food",
      'rating': "4.5 ",
      'time': '25-30 min',
      'price': '\$\$\$',
      'text1': 'Steak',
      'text2': 'Fish',
      'text3': 'Experimental',
    },
    {
      'image': 'assets/images/food.jpg',
      'name': "Grill Hell House",
      'rating': "4.9 ",
      'time': '40-45 min',
      'price': '\$\$\$',
      'text1': 'Grill',
      'text2': 'Meat',
      'text3': 'Experimental',
    },
  ];
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(150),
        child: Container(
          height: 150,
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(color: Colors.grey, blurRadius: 1, spreadRadius: 1),
            ],
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: width * 0.05),
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: height * 0.05),
                  child: Row(
                    children: [
                      Icon(
                        Icons.location_on_outlined,
                        color: Colors.orange,
                        size: 25,
                      ),
                      SizedBox(
                        width: width * 0.02,
                      ),
                      Text(
                        '800 Cheese avenue,',
                        style: TextStyle(
                            fontSize: 17, fontWeight: FontWeight.w500),
                      ),
                      Text(
                        'NYC',
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 17,
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: height * 0.02,
                ),
                TextField(
                  decoration: InputDecoration(
                    contentPadding:
                        EdgeInsets.symmetric(vertical: height * 0.02),
                    filled: true,
                    fillColor: Colors.grey.shade100,
                    hintText: 'Search for food',
                    prefixIcon: Icon(
                      Icons.search,
                      color: Colors.black,
                    ),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide.none),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide.none),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.only(left: width * 0.03, top: height * 0.02),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Something new',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              SizedBox(
                height: height * 0.02,
              ),
              SizedBox(
                height: height * 0.22,
                child: ListView.builder(
                  physics: BouncingScrollPhysics(),
                  itemCount: 3,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: EdgeInsets.symmetric(horizontal: width * 0.02),
                      child: ClipRRect(
                        borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(10),
                        ),
                        child: Container(
                          width: width * 0.35,
                          decoration: BoxDecoration(
                            color: Colors.orange,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Stack(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(
                                    top: height * 0.03, left: width * 0.04),
                                child: Text(
                                  list[index]['name'],
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18,
                                      fontWeight: FontWeight.w500),
                                ),
                              ),
                              Positioned(
                                right: -50,
                                bottom: -50,
                                child: Image.asset(
                                  list[index]['image'],
                                  height: height * 0.2,
                                  width: height * 0.2,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
              SizedBox(
                height: height * 0.02,
              ),
              Text(
                'Recommended',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              SizedBox(
                height: height * 0.02,
              ),
              SizedBox(
                height: height * 0.40,
                child: ListView.builder(
                  itemCount: 2,
                  physics: BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: height * 0.21,
                          width: height * 0.34,
                          margin:
                              EdgeInsets.symmetric(horizontal: width * 0.01),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage(
                                list2[index]['image'],
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: height * 0.01,
                        ),
                        Text(
                          list2[index]['name'],
                          style: TextStyle(
                              fontWeight: FontWeight.w500, fontSize: 17),
                        ),
                        SizedBox(
                          height: height * 0.01,
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.star,
                              color: Colors.orange,
                              size: height * 0.02,
                            ),
                            SizedBox(
                              width: width * 0.01,
                            ),
                            Text(
                              list2[index]['rating'],
                              style: TextStyle(
                                  fontSize: height * 0.02,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black54),
                            ),
                            Text(
                              "•",
                              style: TextStyle(
                                  fontSize: height * 0.02,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.grey),
                            ),
                            SizedBox(
                              width: height * 0.01,
                            ),
                            Icon(
                              Icons.access_time_filled_rounded,
                              color: Colors.grey,
                              size: height * 0.02,
                            ),
                            SizedBox(
                              width: height * 0.01,
                            ),
                            Text(
                              list2[index]['time'],
                              style: TextStyle(
                                  color: Colors.black54,
                                  fontWeight: FontWeight.w500),
                            ),
                            SizedBox(
                              width: height * 0.01,
                            ),
                            Text(
                              "•",
                              style: TextStyle(
                                  fontSize: height * 0.02,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.grey),
                            ),
                            SizedBox(
                              width: height * 0.01,
                            ),
                            Text(
                              list2[index]['price'],
                              style: TextStyle(
                                  fontSize: height * 0.02,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.black),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: height * 0.01,
                        ),
                        Row(
                          children: [
                            Container(
                              height: height * 0.04,
                              width: height * 0.07,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Center(
                                child: Text(
                                  list2[index]['text1'],
                                  style: TextStyle(
                                      color: Colors.grey,
                                      fontWeight: FontWeight.w500),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: height * 0.01,
                            ),
                            Container(
                              height: height * 0.04,
                              width: height * 0.06,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Center(
                                child: Text(
                                  list2[index]['text2'],
                                  style: TextStyle(
                                      color: Colors.grey,
                                      fontWeight: FontWeight.w500),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: height * 0.01,
                            ),
                            Container(
                              height: height * 0.04,
                              width: height * 0.13,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Center(
                                child: Text(
                                  list2[index]['text3'],
                                  style: TextStyle(
                                      color: Colors.grey,
                                      fontWeight: FontWeight.w500),
                                ),
                              ),
                            ),
                          ],
                        )
                      ],
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
