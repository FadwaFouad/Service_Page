import 'package:flutter/material.dart';

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
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const StackContainer(),
    );
  }
}

class StackContainer extends StatelessWidget {
  const StackContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.5,
                color: Colors.purple,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.5,
                color: Colors.white,
              ),
            ],
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 40, vertical: 80),
            child: ServicePage(),
          )
        ],
      ),
    );
  }
}

class ServicePage extends StatelessWidget {
  const ServicePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          gradient: LinearGradient(
            colors: [
              Colors.purple.shade200,
              Colors.purple.shade400,
              Colors.purple.shade600,
              Colors.purple.shade800,
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          )),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(
            Icons.airplane_ticket_outlined,
            size: 50,
            color: Colors.white,
          ),
          SizedBox(
            height: 20,
          ),
          Text("\$09.99",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 40,
                  fontWeight: FontWeight.bold)),
          Text("per month",
              style: TextStyle(
                color: Colors.white,
              )),
          Divider(
            color: Colors.purple.shade200,
            thickness: 2,
          ),
          SizedBox(
            height: 20,
          ),
          Text("START UP",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold)),
          SizedBox(
            height: 20,
          ),
          Text("Disk Space - 200GB",
              style: TextStyle(
                color: Colors.white,
              )),
          Text("Bandwidth -  30GB",
              style: TextStyle(
                color: Colors.white,
              )),
          Text("Database- 03",
              style: TextStyle(
                color: Colors.white,
              )),
          Text("Email Address - 10 ",
              style: TextStyle(
                color: Colors.white,
              )),
          Text("24/7 Support - No ",
              style: TextStyle(
                color: Colors.purple.shade200,
              )),
          Text("Email Support - Yes",
              style: TextStyle(
                color: Colors.white,
              )),
          SizedBox(
            height: 20,
          ),
          TextButton(
            style: ButtonStyle(
                padding:
                    MaterialStatePropertyAll<EdgeInsets>(EdgeInsets.symmetric(
                  horizontal: 60,
                  vertical: 10,
                )),
                backgroundColor: MaterialStatePropertyAll<Color>(Colors.white),
                shape: MaterialStatePropertyAll<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)))),
            onPressed: () {},
            child: Text(
              "SIGN UP",
              style: TextStyle(color: Colors.purple),
            ),
          ),
        ],
      ),
    );
  }
}
