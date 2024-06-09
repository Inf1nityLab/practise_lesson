import 'package:flutter/material.dart';

class Car {
  final Color color;
  final int speed;
  final double width;
  final double height;
  final String? name;
  final String? kon;

  Car(
      {required this.color,
      required this.speed,
      required this.width,
      required this.height,
      this.name,
      this.kon});
}

class InstagramData {
  final String profileImage;
  final String name;
  final String audio;
  final String bigImage;

  InstagramData(
      {required this.profileImage,
      required this.name,
      required this.audio,
      required this.bigImage});
}

List<InstagramData> data = [
  InstagramData(
      profileImage: 'assets/1.png',
      name: 'Nurlan',
      audio: 'original',
      bigImage: 'assets/couples.png'),
  InstagramData(
      profileImage: 'assets/couples.png',
      name: 'Nurlan',
      audio: 'original',
      bigImage: 'assets/1.png'),
  InstagramData(
      profileImage: 'assets/listening.png',
      name: 'Nurlan',
      audio: 'original',
      bigImage: 'assets/couples.png'),
];

class InstagramScreen extends StatelessWidget {
  const InstagramScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(itemCount: data.length,itemBuilder: (context, index) {
        return SizedBox(
          height: 400,
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                ListTile(
                  leading: CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage(data[index].profileImage),
                  ),
                  title: Text(data[index].name),
                  subtitle: Text(data[index].audio),
                  trailing: IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.more_horiz),
                  ),
                ),
                Container(
                  height: 300,
                  decoration: BoxDecoration(
                      color: Colors.grey,
                      image: DecorationImage(image: AssetImage(data[index].bigImage), fit: BoxFit.cover)),
                )
              ],
            ),
          ),
        );
      }),
    );
  }
}
