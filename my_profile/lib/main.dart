import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.blue,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const CircleAvatar(
                radius: 80.0,
                backgroundImage: AssetImage('images/userPic.jpg'),
              ),
              const SizedBox(
                height: 20.0,
              ),
              const Text(
                'Nisanth Kundoly Sunil',
                style: TextStyle(
                    fontFamily: 'GreatVibes',
                    fontSize: 40.0,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                'SOFTWARE DEVELOPER',
                style: TextStyle(
                    fontFamily: 'SourceSansPro',
                    fontSize: 20.0,
                    color: Colors.blue.shade100,
                    letterSpacing: 2.0,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 20.0,
                width: 150.0,
                child: Divider(
                  color: Colors.white,
                ),
              ),
              Card(
                color: Colors.white,
                margin: const EdgeInsets.symmetric(
                    vertical: 10.0, horizontal: 30.0),
                child: ListTile(
                  title: Text(
                    '+1 716 517 8897',
                    style:
                        TextStyle(color: Colors.blue.shade900, fontSize: 20.0),
                  ),
                  leading: Icon(
                    Icons.phone,
                    color: Colors.blue.shade900,
                  ),
                ),
              ),
              Card(
                color: Colors.white,
                margin: const EdgeInsets.symmetric(
                    vertical: 10.0, horizontal: 30.0),
                child: ListTile(
                  title: Text(
                    'nisanthks12@gmail.com',
                    style:
                        TextStyle(color: Colors.blue.shade900, fontSize: 20.0),
                  ),
                  leading: Icon(
                    Icons.email,
                    color: Colors.blue.shade900,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
