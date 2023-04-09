import 'package:flutter/material.dart';

void main() {
  runApp(DashboardApp());
}

class DashboardApp extends StatelessWidget {
  const DashboardApp();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: ListView(
          children: [
            Container(
              margin: EdgeInsets.symmetric(horizontal: 40, vertical: 20),
              child: Flex(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  direction: Axis.horizontal,
                  children: [
                    Text(
                      'MYMONEY',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                          fontWeight: FontWeight.w400,
                          fontFamily: 'Alatsi'),
                    ),
                    IconButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/settings');
                        },
                        icon: Image.asset(
                          'public/images/profile.png',
                          width: 40,
                          height: 40,
                        ))
                  ]),
            ),
            Container(
              margin: EdgeInsets.only(right: 40, left: 40),
              child: Container(
                child: Image.asset('public/images/illust.png'),
              ),
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  iconSize: 48,
                    onPressed: () {
                      Navigator.pushNamed(context, '/report');
                    },
                    icon: Image.asset(
                      'public/images/FILES.png',
                    )),
                IconButton(
                  iconSize: 48,
                    onPressed: () {
                      Navigator.pushNamed(context, '/history');
                    },
                    icon: Image.asset(
                      'public/images/RP.png',
                    )),
                IconButton(
                  iconSize: 42,
                    onPressed: () {
                      Navigator.pushNamed(context, '/posting');
                    },
                    icon: Image.asset(
                      'public/images/ADD.png',
                    )),
              ],
            ),

            Container(
              margin: EdgeInsets.symmetric(horizontal: 40, vertical: 20),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Recently',
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                        height: -1),
                  ),
                  TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/history');
                      },
                      child: Text(
                        'View All',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Color(0xffababab80),
                        ),
                      )),
                ],
              ),
            ),
            
            Container(
              margin: EdgeInsets.symmetric(horizontal: 40),
              child: Column(
                children: [
                  Flex(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    direction: Axis.horizontal,
                    children: [
                      Row(
                        children: [
                          Image.asset(
                            'public/images/_Spotify.png',
                            width: 32,
                            height: 32,
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 8),
                            child:   
                            Text(
                              'Spotify',
                              style: TextStyle(fontSize: 12, color: Colors.white),
                            )
                          ),
                        ],
                      ),
                      Container(
                        child: Text(
                          'Rp. 17.000',
                          style: TextStyle(color: Colors.white, fontSize: 12),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
