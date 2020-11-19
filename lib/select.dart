import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SelectRole extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          ClipPath(
            clipper: CurveClipper(),
            child: Container(
              height: 300,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Color(0xFF87e69a),

              image: DecorationImage(
                image: AssetImage('assets/images/leaf.png'),
               ),
              ),

              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Ink(
                          height: 30,
                          width: 30,
                          decoration: ShapeDecoration(
                            shape: CircleBorder(),
                            color: Colors.white,
                          ),
                          child: IconButton(
                              icon: Icon(Icons.arrow_back,
                                  size: 20, textDirection: TextDirection.rtl),
                              color: Color(0xFF87e69a),
                              onPressed: () {
                                Navigator.pop(context);
                              })),
                      
                    ],
                  ),
                ],
              )
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            child: Column(
              children: [
                Row(
                  children: [
                    Text(
                      "Daftar Sebagai :",
                      style: TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.bold,
                          fontSize: 24,
                          decoration: TextDecoration.underline),
                    )
                  ],
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 20, horizontal: 60),
            height: 60,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.brown[100],
              borderRadius: BorderRadius.circular(25),
              border: Border.all(
                color: Color(0xFFE5E5E5),
              )
            ),
            child: Row(
              children: [
                Padding(padding: EdgeInsets.symmetric(vertical: 50, horizontal: 40)),
                Text(
                  "Sebagai Petani",
                  style: TextStyle(
                      color: Colors.brown,
                      fontWeight: FontWeight.bold,
                      fontSize: 22,
                  ),
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 60),
            height: 60,
            width: double.infinity,
            decoration: BoxDecoration(
                color: Colors.brown[100],
                borderRadius: BorderRadius.circular(25),
                border: Border.all(
                  color: Color(0xFFE5E5E5),
                )
            ),
            child: Row(
              children: [
                Padding(padding: EdgeInsets.symmetric(vertical: 50, horizontal: 40)),
                Text(
                  "Sebagai Pasar",
                  style: TextStyle(
                      color: Colors.brown,
                      fontWeight: FontWeight.bold,
                      fontSize: 22,
                   ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class CurveClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(0, size.height);
    Offset curvePoint1 = Offset(0, size.height * 0.825);
    Offset centerPoint = Offset(size.width * 0.25, size.height * 0.825);
    path.quadraticBezierTo(curvePoint1.dx, curvePoint1.dy, centerPoint.dx, centerPoint.dy);

    path.lineTo(size.width * 0.75, size.height * 0.825);

    Offset curvePoint2 = Offset(size.width, size.height * 0.825);
    Offset endPoint = Offset(size.width, size.height * 0.650);

    path.quadraticBezierTo(curvePoint2.dx, curvePoint2.dy, endPoint.dx, endPoint.dy);

    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }

}