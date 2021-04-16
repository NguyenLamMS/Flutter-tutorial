import 'package:flutter/material.dart';

class SignIn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 100,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            textBaseline: TextBaseline.ideographic,
            children: [
              Text(
                "Hello,\nWelcome!",
                style: Theme.of(context).textTheme.headline4.copyWith(fontWeight: FontWeight.w700, color: Colors.black),
              ),
              Image.asset('assets/png/Sitting.png')
            ],
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 50, horizontal: 50),
            child: Column(
              children: [
                TextField(
                  decoration: InputDecoration(hintText: 'Phone number or Email'),
                ),
                TextField(
                  decoration: InputDecoration(hintText: 'Password'),
                )
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 20, horizontal: 50),
            margin: EdgeInsets.symmetric(horizontal: 50),
            child: Text(
              'Sign in',
              style: TextStyle(color: Colors.white, fontSize: 18),
            ),
            decoration: BoxDecoration(color: Color(0xffF25D9C), borderRadius: BorderRadius.circular(16)),
          ),
          Container(
              margin: EdgeInsets.only(top: 50, left: 50),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'or Sign in with',
                    style: TextStyle(color: Colors.grey),
                  ),
                  SizedBox(height: 16,),
                  Image.asset('assets/png/media.png')
                ],
              )),
        ],
      ),
    );
  }
}
