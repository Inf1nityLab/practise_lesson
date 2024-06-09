import 'package:flutter/material.dart';

class Lesson01 extends StatefulWidget {
  const Lesson01({super.key});

  @override
  State<Lesson01> createState() => _Lesson01State();
}

class _Lesson01State extends State<Lesson01> {
  List<String> name = <String>[];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          itemCount: instagram.length,
          itemBuilder: (context, index) {
            return Card(
              child: Container(
                height: 350,
                color: Colors.white,
                child: Column(
                  children: [
                    ListTile(
                      leading: const CircleAvatar(
                        radius: 30,
                      ),
                      title: Text(instagram[index].name),
                      subtitle: Text(instagram[index].place),
                      trailing: IconButton(
                        onPressed: () {
                          showDialog(context: context, builder: (context){
                            return AlertDialog(
                              title: Text('Удалить'),
                            );
                          });
                          setState(() {
                            instagram.removeAt(index);
                          });
                        },
                        icon: const Icon(Icons.more_horiz),
                      ),
                    ),
                    Container(
                      height: 200,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(instagram[index].image),
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        IconButton(
                            onPressed: () {
                              setState(() {
                                instagram[index].like = !instagram[index].like;
                              });
                            },
                            icon: instagram[index].like
                                ? const Icon(
                                    Icons.favorite,
                                    color: Colors.red,
                                  )
                                : const Icon(Icons.favorite_border)),
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.comment_bank_outlined),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.send_and_archive_outlined),
                        ),
                        Expanded(child: Container()),
                        IconButton(
                          onPressed: () {
                            setState(() {
                              instagram[index].mark = !instagram[index].mark;
                            });
                          },
                          icon: instagram[index].mark
                              ? Icon(Icons.bookmark, color: Colors.black,)
                              : Icon(Icons.bookmark_add_outlined),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            );
          }),
    );
  }
}

class Data {
  final String profileImage;
  final String name;
  final String place;
  final String image;
  bool like;
  bool mark;

  Data(
      {required this.profileImage,
      required this.name,
      required this.place,
      required this.image,
      required this.like,
      required this.mark});
}

List<Data> instagram = [
  Data(
      profileImage: '',
      name: 'Naila',
      place: 'Bishkek',
      image: 'assets/1.png',
      like: true,
      mark: false),
  Data(
      profileImage: '',
      name: 'Alia',
      place: 'Balykchy',
      image: 'assets/2.png',
      like: false,
      mark: false),
];
