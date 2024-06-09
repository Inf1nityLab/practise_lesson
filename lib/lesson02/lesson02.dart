import 'package:flutter/material.dart';

class Lesson02 extends StatefulWidget {
  const Lesson02({super.key});

  @override
  State<Lesson02> createState() => _Lesson02State();
}

class _Lesson02State extends State<Lesson02> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: meals.isEmpty
          ? const Center(
              child: Text('No Data'),
            )
          : Padding(
              padding: const EdgeInsets.only(top: 10, left: 10, right: 10),
              child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 10,
                      crossAxisSpacing: 10,
                      childAspectRatio: 0.89),
                  itemCount: meals.length,
                  itemBuilder: (context, index) {
                    return Card(
                      elevation: 10,
                      child: Container(
                        height: 1000000,
                        width: 200,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Stack(
                              children: [
                                Align(
                                  alignment: Alignment.topCenter,
                                  child: CircleAvatar(
                                    radius: 60,
                                    backgroundImage:
                                        AssetImage(meals[index].image),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.topRight,
                                  child: IconButton(
                                    onPressed: () {
                                      setState(() {
                                        meals[index].like = !meals[index].like;
                                      });
                                    },
                                    icon: meals[index].like
                                        ? const Icon(
                                            Icons.favorite,
                                            color: Colors.deepOrange,
                                          )
                                        : const Icon(
                                            Icons.favorite_border,
                                            color: Colors.deepOrange,
                                          ),
                                  ),
                                ),
                              ],
                            ),
                            Text(
                              meals[index].name,
                              style: const TextStyle(
                                fontSize: 20,
                              ),
                            ),
                            Text(
                              meals[index].price,
                              style: const TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                            ),
                          ],
                        ),
                      ),
                    );
                  }),
            ),
    );
  }
}

class Menu {
  bool like;
  final String image;
  final String name;
  final String price;

  Menu(
      {required this.like,
      required this.image,
      required this.name,
      required this.price});
}

List<Menu> meals = [

];
