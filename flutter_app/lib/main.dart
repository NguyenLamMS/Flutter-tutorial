import 'package:flutter/material.dart';
import 'package:flutter_app/signin.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SignUp(),
    );
  }
}

class SignUp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        width: double.infinity,
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 150, left: 20, right: 20),
                child: Image.asset('assets/png/image.png'),
              ),
              SizedBox(
                height: 30,
              ),
              Center(
                child: Column(
                  children: [
                    Text(
                      "Hello Wolrd",
                      style: Theme.of(context).textTheme.headline6.copyWith(fontWeight: FontWeight.w800),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                        width: size.width * .8,
                        child: Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Risus euismod lacus, pharetra dui. "))
                  ],
                ),
              ),
              SizedBox(
                height: 100,
              ),
              Column(
                children: [
                  Container(
                    alignment: Alignment.center,
                    child: Text(
                      'Sign in',
                      style: TextStyle(color: Colors.white),
                    ),
                    width: size.width * .8,
                    height: 50,
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: Color(0xffF25D9C)),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  MaterialButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => SignIn()));
                    },
                    child: Text(
                      'Sign Up',
                      style: TextStyle(color: Color(0xffF25D9C)),
                    ),
                    minWidth: size.width * 0.8,
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
