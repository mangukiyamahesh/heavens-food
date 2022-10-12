import 'package:flutter/material.dart';

class DetailScreen extends StatefulWidget {
  const DetailScreen({Key? key}) : super(key: key);

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  PageController pageController = PageController();
  int selected = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Stack(
            children: [
              Container(
                height: 300,
                width: double.infinity,
                color: Colors.grey,
                child: PageView(
                  scrollDirection: Axis.horizontal,
                  onPageChanged: (value) {
                    setState(
                      () {
                        selected = value;
                      },
                    );
                  },
                  physics: BouncingScrollPhysics(),
                  controller: pageController,
                  children: [
                    Image.network(
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSSuXlOTtI2ahZmjl1G1uHSM3x9LOB5amVv9A&usqp=CAU',
                      height: 300,
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),
                    Image.network(
                      'https://media.istockphoto.com/photos/delicious-homemade-hamburger-and-french-fries-picture-id1254672762?b=1&k=20&m=1254672762&s=170667a&w=0&h=nKrG40G2jj9O8wzJ8wDD2zmUKNp00mcdVWK_f_zixug=',
                      height: 300,
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),
                    Image.network(
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT1F1rVdgzDgSVLTULfiUEo-vFX4JLlhpjw23FwMff-KDqgx723hQNGiAdNk9v5ywp40zA&usqp=CAU',
                      height: 300,
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
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.arrow_back,
                          color: Colors.white,
                          size: 30,
                        )),
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.favorite_outline,
                          color: Colors.orange,
                          size: 30,
                        )),
                  ],
                ),
              ),
              Positioned(
                left: 0,
                right: 0,
                bottom: 10,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(
                      3,
                      (index) => Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 3),
                            child: GestureDetector(
                              onTap: () {
                                setState(
                                  () {
                                    selected = index;
                                  },
                                );
                              },
                              child: CircleAvatar(
                                radius: 4,
                                backgroundColor: selected == index
                                    ? Colors.orange
                                    : Colors.white,
                              ),
                            ),
                          )),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
