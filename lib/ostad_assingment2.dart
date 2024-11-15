import 'package:flutter/material.dart';
//sir
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: const MyHomePage(title: 'My Profile'),
      color: Colors.amber,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  MySnackBar(message, context) {
    return ScaffoldMessenger.of(context)
        .showSnackBar(SnackBar(content: Text(message)));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Text("My Profile"),
        actions: [
          IconButton(
              onPressed: () {
                MySnackBar('ami action bar theke asechi', context);
              },
              icon: Icon(Icons.add)),
          IconButton(onPressed: () {}, icon: Icon(Icons.settings)),
          IconButton(onPressed: () {}, icon: Icon(Icons.phone)),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(10),
          color: Color.fromARGB(1, 254, 247, 255),
          child: Center(
            child: Column(
              children: [
                Container(
                  child: Column(
                    //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      CircleAvatar(
                        radius: 85,
                        child: Icon(
                          Icons.icecream_outlined,
                          size: 85,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Ice cream is very delicious right?',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w600),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                Container(
                  child: Column(
                    //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      CircleAvatar(
                        radius: 85,
                        child: Icon(
                          Icons.code,
                          size: 85,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Programming is not boring if you love it',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w600),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                Container(
                  //margin: EdgeInsets.only(top: 10),
                  child: Column(
                    children: [
                      CircleAvatar(
                        radius: 85,
                        child: Icon(
                          Icons.egg_outlined,
                          size: 85,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'if you submit code directly copy from chatgpt then mark will 0',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w600),
                        textAlign: TextAlign.start,
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}