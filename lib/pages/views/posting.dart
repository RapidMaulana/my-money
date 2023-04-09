import 'package:flutter/material.dart';

void main() {
  runApp(PostingApp());
}

class PostingApp extends StatelessWidget {
  const PostingApp();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: Column(children: [
          Container(
            height: 106,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(16),
                    bottomRight: Radius.circular(16))),
            child: Row(children: [
              TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/dashboard');
                  },
                  child: Image.asset(
                    'public/images/back.png',
                    width: 20,
                    height: 20,
                  )),
              Align(
                widthFactor: 5,
                alignment: Alignment.center,
                child: Text('Posting',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w500)),
              )
            ]),
          ),
          // Container(
          //   child: GridView.count(
          //     crossAxisCount: 10,
          //     mainAxisSpacing: 10,
          //     crossAxisSpacing: 2,
          //     children: [
          //       Container(
          //         padding: const EdgeInsets.all(8),
          //         color: Colors.teal[100],
          //       )
          //     ],
          //   ),
          // )
        ]),
      ),
    );
  }
}
