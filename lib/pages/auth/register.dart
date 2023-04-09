import 'package:flutter/material.dart';

void main() {
  runApp(const RegisApp());
}

class RegisApp extends StatelessWidget {
  const RegisApp();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        resizeToAvoidBottomInset: false,
        body: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 50, bottom: 5, right: 100),
              width: 250,
              child: Text(
                "Regist Now",
                style: TextStyle(
                    fontFamily: 'Poppins',
                    color: Colors.white,
                    fontWeight: FontWeight.w700,
                    fontSize: 32),
              ),
            ),
            Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                child: Container(
                  margin: EdgeInsets.only(top: 10, left: 10, right: 10),
                  child: TextFormField(
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                        enabledBorder: const UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.white)),
                        focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.white)),
                        labelText: 'Username',
                        labelStyle: TextStyle(
                          color: Color.fromRGBO(171, 171, 171, 1),
                        ),
                        fillColor: Colors.white),
                  ),
                )),
            Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                child: Container(
                  margin: EdgeInsets.only(top: 10, left: 10, right: 10),
                  child: TextFormField(
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                        enabledBorder: const UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.white)),
                        focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.white)),
                        labelText: 'E-mail',
                        labelStyle:
                            TextStyle(color: Color.fromRGBO(171, 171, 171, 1)),
                        fillColor: Colors.white),
                  ),
                )),
            Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                child: Container(
                  margin: EdgeInsets.only(top: 10, left: 5, right: 5),
                  child: TextFormField(
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                        enabledBorder: const UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.white)),
                        focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.white)),
                        labelText: 'Phone number',
                        labelStyle:
                            TextStyle(color: Color.fromRGBO(171, 171, 171, 1)),
                        fillColor: Colors.white),
                  ),
                )),
                Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                child: Container(
                  margin: EdgeInsets.only(top: 10, left: 5, right: 5),
                  child: TextFormField(
                    obscureText: true,
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                        enabledBorder: const UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.white)),
                        focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.white)),
                        labelText: 'Password',
                        labelStyle:
                            TextStyle(color: Color.fromRGBO(171, 171, 171, 1)),
                        fillColor: Colors.white),
                  ),
                )),
                Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                child: Container(
                  margin: EdgeInsets.only(top: 10, left: 5, right: 5),
                  child: TextFormField(
                    obscureText: true,
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                        enabledBorder: const UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.white)),
                        focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.white)),
                        labelText: 'Confirm Password',
                        labelStyle:
                            TextStyle(color: Color.fromRGBO(171, 171, 171, 1)),
                        fillColor: Colors.white),
                  ),
                )),
            Container(
                margin: EdgeInsets.only(left: 24),
                child: TextButton(
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Color(0xff5C85E6)),
                      padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                          EdgeInsets.symmetric(vertical: 15, horizontal: 55)),
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, '/loginn');
                    },
                    child: Text(
                      'Sign Up',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.w500),
                    )))
          ],
        ),
      ),
    );
  }
}
