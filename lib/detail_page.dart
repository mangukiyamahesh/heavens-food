import 'package:flutter/material.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({Key? key}) : super(key: key);

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  List list = ['Potato wedges', 'Corn on the cob', 'Cheese burger'];
  int selected = 0;
  int choice = 0;
  int like = 0;
  PageController pageController = PageController();
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              Container(
                height: height * 0.35,
                width: double.infinity,
                color: Colors.grey,
                child: PageView(
                  controller: PageController(),
                  physics: BouncingScrollPhysics(),
                  onPageChanged: (value) {
                    setState(
                      () {
                        selected = value;
                      },
                    );
                  },
                  children: [
                    Image.asset(
                      'assets/images/burger1.jpg',
                      height: height * 0.35,
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),
                    Image.asset(
                      'assets/images/burger2.jpg',
                      height: height * 0.35,
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),
                    Image.asset(
                      'assets/images/burger3.jpg',
                      height: height * 0.35,
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),
                  ],
                ),
              ),
              SafeArea(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.black45,
                      radius: height * 0.03,
                      child: IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.arrow_back,
                            color: Colors.white, size: height * 0.03),
                      ),
                    ),
                    CircleAvatar(
                      backgroundColor: Colors.black45,
                      radius: height * 0.03,
                      child: IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.favorite_outline,
                            color: Colors.orange, size: height * 0.03),
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                left: width * 0.00,
                right: width * 0.00,
                bottom: height * 0.02,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(
                    3,
                    (index) => Padding(
                      padding: EdgeInsets.symmetric(horizontal: width * 0.004),
                      child: GestureDetector(
                        onTap: () {
                          setState(
                            () {
                              selected = index;
                            },
                          );
                        },
                        child: CircleAvatar(
                            backgroundColor: selected == index
                                ? Colors.orange
                                : Colors.white,
                            radius: height * 0.004),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: height * 0.02,
          ),
          Padding(
            padding: EdgeInsets.only(left: width * 0.04),
            child: Text(
              'Big Mad Burger',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: height * 0.03,
              ),
            ),
          ),
          SizedBox(
            height: height * 0.02,
          ),
          Padding(
            padding: EdgeInsets.only(left: width * 0.04),
            child: Text(
              'Potato Bun, cheddar cheese, beef, cucumber, red onion, iceburg lettuce, avocado, tomato',
              style: TextStyle(
                  height: height * 0.002,
                  fontWeight: FontWeight.w500,
                  fontSize: height * 0.02,
                  color: Colors.grey),
            ),
          ),
          SizedBox(
            height: height * 0.04,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: width * 0.04),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Choose addition',
                      style: TextStyle(
                        fontSize: height * 0.023,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: height * 0.012,
                    ),
                    Text(
                      'Required',
                      style: TextStyle(
                          fontSize: height * 0.02,
                          fontWeight: FontWeight.w500,
                          color: Colors.grey),
                    ),
                  ],
                ),
                Container(
                  height: height * 0.04,
                  width: height * 0.04,
                  decoration: BoxDecoration(
                    color: Colors.black26,
                    borderRadius: BorderRadius.circular(height * 0.01),
                  ),
                  child: Icon(
                    Icons.keyboard_arrow_up,
                    color: Colors.black45,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: height * 0.04,
          ),
          Container(
            height: height * 0.25,
            width: double.infinity,
            color: Colors.white,
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: List.generate(
                  3,
                  (index) => GestureDetector(
                    onTap: () {
                      setState(
                        () {
                          choice = index;
                        },
                      );
                    },
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: height * 0.03, vertical: 15),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            height: height * 0.035,
                            width: height * 0.035,
                            decoration: BoxDecoration(
                              color: choice == index
                                  ? Colors.orange
                                  : Colors.white,
                              shape: BoxShape.circle,
                              border: Border.all(
                                color: choice == index
                                    ? Colors.transparent
                                    : Colors.grey,
                                width: height * 0.0015,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: height * 0.03,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                width: height * 0.02,
                              ),
                              Text(
                                list[index],
                                style: TextStyle(
                                    color: Colors.black54,
                                    fontWeight: FontWeight.w500,
                                    fontSize: height * 0.02),
                              ),
                              index == 0
                                  ? Text(
                                      'Recommended',
                                      style: TextStyle(
                                          color: Colors.orange,
                                          fontWeight: FontWeight.w400,
                                          fontSize: height * 0.015),
                                    )
                                  : SizedBox(),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: Container(
        height: height * 0.12,
        width: double.infinity,
        color: Colors.grey.shade300,
        child: Center(
          child: MaterialButton(
            onPressed: () {},
            height: height * 0.06,
            minWidth: height * 0.4,
            color: Colors.black54,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(height * 0.01),
            ),
            child: Text(
              'Add (1) to cart -12,90',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
