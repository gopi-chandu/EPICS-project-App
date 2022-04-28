import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

int ht = 170;
int wt = 170;
double bmivalue = 0;
String valueBmiString = '';
String ccString = '';

class Bmi extends StatefulWidget {
  const Bmi({Key? key}) : super(key: key);

  @override
  State<Bmi> createState() => _BmiState();
}

class _BmiState extends State<Bmi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink[400],
        elevation: 0.2,
        title: Center(
          child: Text(
            "BMI Calculator      ",
            style: TextStyle(fontFamily: 'pop', fontSize: 27),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          Container(
            width: 900,
            height: 150,
            child: ClipPath(
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 200,
                color: Colors.pink[400],
              ),
              clipper: CustomClipPath2(),
            ),
            // color: Colors.red[300],
          ),
          //1st beizer curve
          SizedBox(height: 10),
          //age scroll
          //customSlider(),
          HeightSlider(),
          SizedBox(height: 30),
          WtSlider(),
          SizedBox(
            height: 50,
          ),
          Result()
        ]),
      ),
    );
  }
}

class customSlider extends StatefulWidget {
  const customSlider({Key? key}) : super(key: key);

  @override
  State<customSlider> createState() => _customSliderState();
}

class _customSliderState extends State<customSlider> {
  String stext = 'Age';
  int itext = 30;
  var text = 20.0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text("$stext : $itext"),
        CupertinoSlider(
          value: text,
          onChanged: (val) {
            setState(() {
              text = val;
              itext = val.round();
            });
          },
          min: 10.0,
          max: 190.0,
          activeColor: Colors.amber,
          divisions: 180,
        ),
      ],
    );
  }
}

class HeightSlider extends StatefulWidget {
  const HeightSlider({Key? key}) : super(key: key);

  @override
  State<HeightSlider> createState() => _HeightSliderState();
}

class _HeightSliderState extends State<HeightSlider> {
  double itext = 170.0;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        //crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.fromLTRB(10, 0, 0, 0),
            child: Text(
              "Height : $ht",
              style: TextStyle(fontFamily: 'pop', fontSize: 27),
            ),
          ),
          Container(
            width: 300,
            child: CupertinoSlider(
              value: itext,
              onChanged: (val) {
                setState(() {
                  itext = val;
                  ht = val.round();
                });
              },
              min: 130.0,
              max: 200.0,
              activeColor: Colors.amber,
              // divisions: 180,
            ),
          ),
        ],
      ),
    );
  }
}

class WtSlider extends StatefulWidget {
  const WtSlider({Key? key}) : super(key: key);

  @override
  State<WtSlider> createState() => _WtSliderState();
}

class _WtSliderState extends State<WtSlider> {
  double itext = 170.0;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        //crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.fromLTRB(10, 0, 0, 0),
            child: Text(
              "Weight : $wt",
              style: TextStyle(fontFamily: 'pop', fontSize: 27),
            ),
          ),
          Container(
            width: 300,
            child: CupertinoSlider(
              value: itext,
              onChanged: (val) {
                setState(() {
                  itext = val;
                  wt = val.round();
                });
              },
              min: 10.0,
              max: 190.0,
              activeColor: Colors.amber,
              divisions: 180,
            ),
          ),
          Container(
            child: Center(
              child: Text(
                'BMI Categories:',
                style: TextStyle(fontFamily: 'pop', fontSize: 20),
              ),
            ),
            height: 50.0,
            width: double.infinity,
          ),
          Container(
            child: Center(
              child: Text(
                'Underweight = <18.5',
                style: TextStyle(fontFamily: 'pop', fontSize: 20),
              ),
            ),
            height: 30.0,
            width: double.infinity,
          ),
          Container(
            child: Center(
              child: Text(
                'Normal weight = 18.5–24.9',
                style: TextStyle(fontFamily: 'pop', fontSize: 20),
              ),
            ),
            height: 30.0,
            width: double.infinity,
          ),
          Container(
            child: Center(
              child: Text(
                'Overweight = 25–29.9 ',
                style: TextStyle(fontFamily: 'pop', fontSize: 20),
              ),
            ),
            height: 30.0,
            width: double.infinity,
          ),
          Container(
            child: Center(
              child: Text(
                'Obesity = BMI of 30 or greater',
                style: TextStyle(fontFamily: 'pop', fontSize: 20),
              ),
            ),
            height: 30.0,
            width: double.infinity,
          ),
        ],
      ),
    );
  }
}

class Result extends StatefulWidget {
  const Result({Key? key}) : super(key: key);

  @override
  State<Result> createState() => _ResultState();
}

class _ResultState extends State<Result> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment(-0.4, -0.8),
              stops: [0.0, 0.5, 0.5, 1],
              colors: [
                Colors.red,
                Colors.red,
                Colors.orange,
                Colors.orange,
              ],
              tileMode: TileMode.repeated,
            ),
          ),
          // color: Colors.amber,

          width: 200,
          height: 70,
          child: TextButton(
            onPressed: () {
              //Navigator.pushNamed(context, '/bmi');
              bmivalue = wt * 10000 / (ht * ht);
              valueBmiString = bmivalue.toStringAsPrecision(4);
              // if(bmivalue>)
              // if()
              setState(() {});
            },
            child: Text(
              "Calculate",
              style: TextStyle(
                  fontFamily: 'pop',
                  fontSize: 27,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Container(
          height: 130,
          width: 200,
          decoration: BoxDecoration(color: Colors.pink[50],borderRadius: BorderRadius.circular(15),),  
          //color: Colors.pink[50],
          child: Padding(
            padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "BMI = $valueBmiString",
                  style: TextStyle(fontFamily: 'pop', fontSize: 30),
                ),
                Text(
                  "Height = $ht",
                  style: TextStyle(fontFamily: 'pop', fontSize: 20),
                ),
                Text(
                  "Weight = $wt",
                  style: TextStyle(fontFamily: 'pop', fontSize: 20),
                ),
                
                // Text("$ccString"),
              ],
            ),
          ),
        ),
        SizedBox(
          height: 100,
        ),
      ],
    );
  }
}

class CustomClipPath2 extends CustomClipper<Path> {
  var radius = 10.0;
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(0, size.height - 100);
    path.quadraticBezierTo(
        size.width / 2, size.height, size.width, size.height - 100);
    path.lineTo(size.width, 0);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
