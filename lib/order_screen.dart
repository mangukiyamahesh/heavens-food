import 'package:flutter/material.dart';

class OrderScreen extends StatefulWidget {
  const OrderScreen({Key? key}) : super(key: key);

  @override
  State<OrderScreen> createState() => _OrderScreenState();
}

class _OrderScreenState extends State<OrderScreen> {
  List<Map<String, dynamic>> list = [
    {
      'image': 'assets/images/burger2.jpg',
      'name': 'Big Mad Burger',
      'price': '\$12.90'
    },
    {
      'image': 'assets/images/pineaple.jpg',
      'name': 'Pineaple Pork',
      'price': '\$24.60'
    },
  ];
  int counter = 0;
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(height * 0.14),
        child: Container(
          height: height * 0.14,
          width: double.infinity,
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                  color: Colors.grey,
                  blurRadius: height * 0.001,
                  spreadRadius: height * 0.001)
            ],
            color: Colors.white,
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(height * 0.025),
            ),
          ),
          child: SafeArea(
            child: Padding(
              padding: EdgeInsets.only(right: width * 0.05),
              child: Row(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.arrow_back,
                      size: height * 0.035,
                    ),
                  ),
                  Spacer(),
                  Text(
                    'Order details',
                    style: TextStyle(
                        fontSize: height * 0.025, fontWeight: FontWeight.w500),
                  ),
                  Spacer(),
                  Icon(Icons.help_outline_outlined)
                ],
              ),
            ),
          ),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: width * 0.03, vertical: height * 0.02),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Heaven's food",
                  style: TextStyle(
                      fontWeight: FontWeight.w500, fontSize: height * 0.03),
                ),
                SizedBox(
                  height: height * 0.025,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.timer,
                      color: Colors.orangeAccent,
                    ),
                    SizedBox(
                      width: height * 0.02,
                    ),
                    Text(
                      'Delivery / As soon as possible',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: height * 0.02,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    Spacer(),
                    Icon(
                      Icons.arrow_forward_ios,
                      size: height * 0.025,
                      color: Colors.black54,
                    ),
                  ],
                ),
                SizedBox(
                  height: height * 0.025,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.location_on_outlined,
                      color: Colors.orangeAccent,
                    ),
                    SizedBox(
                      width: height * 0.02,
                    ),
                    Text(
                      '800 Cheese avenue, NYC',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: height * 0.02,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    SizedBox(
                      width: height * 0.02,
                    ),
                    Spacer(),
                    Icon(
                      Icons.arrow_forward_ios,
                      size: height * 0.025,
                      color: Colors.black54,
                    ),
                  ],
                ),
                SizedBox(
                  height: height * 0.02,
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              width: double.infinity,
              color: Colors.white,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: width * 0.04),
                child: Column(
                  children: [
                    SizedBox(
                      height: height * 0.025,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Your order',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: height * 0.03),
                        ),
                        Text(
                          'See menu',
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: height * 0.022),
                        ),
                      ],
                    ),
                    Column(
                      children: List.generate(
                        2,
                        (index) => Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              height: height * 0.11,
                              width: height * 0.11,
                              margin: EdgeInsets.symmetric(
                                  vertical: height * 0.017),
                              decoration: BoxDecoration(
                                color: Colors.grey,
                                borderRadius:
                                    BorderRadius.circular(height * 0.015),
                                image: DecorationImage(
                                  image: AssetImage(
                                    list[index]['image'],
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: width * 0.04),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    list[index]['name'],
                                    style: TextStyle(
                                        fontSize: height * 0.02,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  SizedBox(
                                    height: height * 0.01,
                                  ),
                                  Text(
                                    list[index]['price'],
                                    style: TextStyle(
                                        color: Colors.black45,
                                        fontSize: height * 0.02,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ],
                              ),
                            ),
                            Spacer(),
                            Counter(),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: height * 0.02,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Subtotal',
                          style: TextStyle(
                              color: Colors.black45, fontSize: height * 0.023),
                        ),
                        Text(
                          '\$37.50',
                          style: TextStyle(
                              color: Colors.black45, fontSize: height * 0.023),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: height * 0.02,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Delivery',
                          style: TextStyle(
                              color: Colors.black45, fontSize: height * 0.023),
                        ),
                        Container(
                          height: height * 0.04,
                          width: width * 0.15,
                          decoration: BoxDecoration(
                            color: Colors.grey.shade100,
                            borderRadius: BorderRadius.circular(height * 0.02),
                          ),
                          child: Center(
                            child: Text(
                              'Free',
                              style: TextStyle(
                                  color: Colors.black, fontSize: height * 0.02),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: height * 0.02,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Total',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: height * 0.03,
                              fontWeight: FontWeight.w600),
                        ),
                        Text(
                          '\$37.50',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: height * 0.03,
                              fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: Container(
        height: height * 0.11,
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
              'Place order',
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

class Counter extends StatefulWidget {
  const Counter({Key? key}) : super(key: key);

  @override
  State<Counter> createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  int counter = 0;
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        GestureDetector(
          onTap: () {
            setState(
              () {
                if (counter > 0) {
                  counter--;
                }
              },
            );
          },
          child: Container(
            height: height * 0.04,
            width: height * 0.04,
            decoration: BoxDecoration(
              color: Colors.orange,
              borderRadius: BorderRadius.circular(height * 0.01),
            ),
            child: Icon(
              Icons.remove,
              color: Colors.white,
              size: height * 0.03,
            ),
          ),
        ),
        SizedBox(
          width: height * 0.015,
        ),
        Text(
          '$counter',
          style: TextStyle(fontSize: height * 0.025),
        ),
        SizedBox(
          width: height * 0.015,
        ),
        GestureDetector(
          onTap: () {
            setState(
              () {
                counter++;
              },
            );
          },
          child: Container(
            height: height * 0.04,
            width: height * 0.04,
            decoration: BoxDecoration(
              color: Colors.orange,
              borderRadius: BorderRadius.circular(height * 0.01),
            ),
            child: Icon(
              Icons.add,
              color: Colors.white,
              size: height * 0.03,
            ),
          ),
        ),
      ],
    );
  }
}
