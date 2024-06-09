import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:practise_lesson/lesson02/lesson02.dart';
import 'package:device_preview/device_preview.dart';

void main() => runApp(
      DevicePreview(
        enabled: !kReleaseMode,
        builder: (context) => MyApp(), // Wrap your app
      ),
    );

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      useInheritedMediaQuery: true,
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      home: const Lesson02(),
    );
  }
}
// void main() {
//   runApp(const MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
//         useMaterial3: true,
//       ),
//       home: const Lesson02(),
//     );
//   }
// }

class RepeatLessons extends StatefulWidget {
  const RepeatLessons({super.key});

  @override
  State<RepeatLessons> createState() => _RepeatLessonsState();
}

class _RepeatLessonsState extends State<RepeatLessons> {
  // 4 dart
  String name = 'hello';
  int age = 24;
  double kg = 56.78;
  bool isSunny = true;
  Person shirin = Person(name: 'Shrin', age: 18, tall: 160, skin: Colors.white);
  Person sanjar =
      Person(name: 'Sanjar', age: 18, tall: 160, skin: Colors.white);

  // flutter
  Icon icon = const Icon(Icons.add);
  Widget container = Container(
    height: 100,
    width: 100,
  );
  TextEditingController nameController = TextEditingController();

  // TODO: List,

  List<String> names = ['Sanjar', 'Shirin', 'Shirin'];

  // TODO: generics
  List<Widget> childrens = <Widget>[
    Container(
      height: 100,
      width: 100,
      color: Colors.red,
    ),
    Container(
      height: 100,
      width: 100,
      color: Colors.blue,
    ),
    Container(
      height: 100,
      width: 100,
      color: Colors.black,
    ),
  ];

  // TODO: Map - словарь - массив
  Map<String, String> dictionary = {
    'яблоко': 'apple',
  };
  Map<String, dynamic> person = {
    'name': 'Sanjar',
    'age': 16,
    'surname': '',
    'color': Colors.red,
  };

  List<Map<String, dynamic>> people = [
    {
      'name': 'Sanjar',
      'age': 16,
      'surname': '',
      'color': Colors.red,
    },
    {
      'name': 'Shirin',
      'age': 18,
      'surname': '',
      'color': Colors.white,
    },
  ];

  //
  Set<String> likes = {'Hello', 'Hello'};

  // TODO: function(), method()

  void run() {
    print('I run in the morinig');
  }

  void buy(String drink) {
    print('To buy....$drink');
  }

  void login() {}

  String textFunction(String name) {
    return name;
  }

  // TODO: name - переменные, run() - функция, Person() - class

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
                onPressed: () {
                  run();

                  buy('Coka cola');
                },
                child: Text('Run, ${textFunction('Shirin')}')),
            // containerFunction(Colors.black, width: 130),
            // containerFunction(Colors.lightBlue),
            // containerFunction(Colors.red),
            TextField(
              controller: TextEditingController(),
            ),
            TextField(
              controller: TextEditingController(),
            ),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    name = name.toUpperCase();
                  });
                },
                child: const Text('Login')),
            Text(' ${shirin.name}, ${shirin.age}'),
            Text('${name}'),
            icon,
            Text(names[0]),

            childrens[0],
            Expanded(
                child: ListView.builder(
                    itemCount: childrens.length,
                    itemBuilder: (context, index) {
                      return childrens[index];
                    })),
          ],
        ),
      ),
    );
  }
}

abstract interface class PersonOne {
  void eat() {}

  void breath() {}
}

class Person extends PersonOne {
  final String name;
  final int age;
  final double tall;
  final Color skin;

  Person(
      {required this.name,
      required this.age,
      required this.tall,
      required this.skin});
}

List<Person> people = [
  Person(
    name: 'Sanjar',
    age: 16,
    tall: 169,
    skin: Colors.blueGrey,
  ),
  Person(
    name: 'Shirin',
    age: 18,
    tall: 160,
    skin: Colors.white,
  )
];
