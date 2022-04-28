import 'package:flutter/material.dart';

class HomeScreenIntro extends StatefulWidget {
  const HomeScreenIntro({Key? key}) : super(key: key);

  @override
  State<HomeScreenIntro> createState() => _HomeScreenIntroState();
}

class _HomeScreenIntroState extends State<HomeScreenIntro> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink[400],
        elevation: 0.5,
        title: Center(
          child: Text(
            "DAILY UTILITIES",
            style: TextStyle(fontFamily: 'pop', fontSize: 27),
          ),
        ),
      ),
      body: Container(
        /*decoration: BoxDecoration(
    gradient: LinearGradient(
        begin: Alignment.topLeft,
        end: Alignment(-0.4, -0.8),
        stops: [0.0, 0.5, 0.5, 1],
        colors: [
            Colors.redAccent,
            Colors.redAccent,
            Colors.orangeAccent,
            Colors.orangeAccent,
        ],
        tileMode: TileMode.repeated,
    ),
),*/
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              width: 900,
              height: 100,
              child: ClipPath(
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 200,
                  color: Colors.pink[400],
                ),
                clipper: CustomClipPath(),
              ),
              // color: Colors.red[300],
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              width: 600,
              height: 150,
              child: Card2(
                icon: Icons.add_box,
                buttonText: 'Calculator',
                color: Colors.red[300],
                root: '/cal',
              ),
            ),
            Container(
              width: 600,
              height: 150,
              child: Card2(
                icon: Icons.favorite,
                buttonText: 'BMI Calculator',
                color: Colors.green[400],
                root: '/bmi',
              ),
            ),
            Container(
              width: 600,
              height: 150,
              child: Card2(
                icon: Icons.add_chart,
                buttonText: 'Converter',
                color: Colors.blue[400],
                root: '/unit',
              ),
            )
          ],
        ),
      ),
    );
  }
}

class CustomClipPath extends CustomClipper<Path> {
  var radius = 10.0;
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(0, size.height);
    path.quadraticBezierTo(
        size.width / 4, size.height - 40, size.width / 2, size.height - 20);
    path.quadraticBezierTo(
        3 / 4 * size.width, size.height, size.width, size.height - 30);
    path.lineTo(size.width, 0);

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}

class Card2 extends StatelessWidget {
  final icon;
  final String buttonText;
  final color;
  final root;

  Card2({this.icon, this.buttonText = "", this.color, this.root});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(0),
      height: 100,
      width: MediaQuery.of(context).size.width - 100,
      //color: Colors.red,
      child: GestureDetector(
        onTap: () {
          print('hey222');
          Navigator.pushNamed(context, '${this.root}');
        },
        child: Card(
          // margin: EdgeInsets.all(10),
          color: this.color,
          child: Container(
            padding: EdgeInsets.all(15),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Icon(this.icon),
                SizedBox(
                  height: 10,
                ),
                Text(
                  this.buttonText,
                  style: TextStyle(fontSize: 27),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
