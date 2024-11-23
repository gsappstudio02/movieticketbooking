import 'package:bookmyshowclone/models/constants.dart';
import 'package:flutter/material.dart';

class SigninPage extends StatefulWidget {
  const SigninPage({super.key});

  @override
  State<SigninPage> createState() => _SigninPageState();
}

class _SigninPageState extends State<SigninPage> {

  @override
  Widget build(BuildContext context) {
    double height_size= MediaQuery.of(context).size.height;
    double width_size= MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: height_size,
          width: width_size,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                alignment: Alignment.center,
                height: 52,
                width: width_size-60,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: grey)
                ),
                child: TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    prefixIcon: Icon(Icons.email_rounded),
                    hintText: 'Email',
                  ),
                  keyboardType: TextInputType.emailAddress,
                  obscureText: false,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
