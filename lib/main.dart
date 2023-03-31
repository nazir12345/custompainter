import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Bottom Nav Bar',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Stack(
          children: [
            Positioned(
              bottom: 0,
              left: 0,
              child: Container(
                width: size.width,
                height: 80,
              //  color: Colors.white,
                child: Stack(
                  children: [
                    CustomPaint(
                      size: Size(size.width, size.height,
                      ),
                      painter: BNBCustomPainter(),
                    ),
                  Center(
                    heightFactor: .6,
                    child: FloatingActionButton(
                        onPressed: (){},
                    backgroundColor: Colors.orange,
                      child: Icon(Icons.shopping_basket),elevation: 0.1,
                    ),
                  ),
                    Container(
                      width: size.width,
                      height: 80,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          IconButton(onPressed: (){},
                              icon: Icon(Icons.home)
                          ),
                          IconButton(onPressed: (){},
                              icon: Icon(Icons.restaurant_menu)
                          ),
                          Container(width: size.width*.2,),
                          IconButton(onPressed: (){},
                              icon: Icon(Icons.bookmark)
                          ),
                          IconButton(onPressed: (){},
                              icon: Icon(Icons.notifications)
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class BNBCustomPainter extends CustomPainter{

  @override
  void paint(Canvas canvas, Size size) {

    Paint paint0 = Paint()
      ..color =  Colors.white
      ..style = PaintingStyle.fill;


    Path path0 = Path();
    path0.moveTo(0,size.height*0.9971500);
    path0.lineTo(0,size.height*0.2542500);
    path0.quadraticBezierTo(size.width*0.1791250,size.height*0.1300000,size.width*0.3737500,size.height*0.1000000);
    path0.cubicTo(size.width*0.3629750,size.height*0.1786500,size.width*0.3734875,size.height*0.3303000,size.width*0.3741125,size.height*0.3947000);
    path0.cubicTo(size.width*0.4279500,size.height*0.8973500,size.width*0.5667250,size.height*0.8803500,size.width*0.6262500,size.height*0.3732500);
    path0.cubicTo(size.width*0.6258000,size.height*0.3357500,size.width*0.6375625,size.height*0.1610000,size.width*0.6237500,size.height*0.0950000);
    path0.quadraticBezierTo(size.width*0.7260500,size.height*0.0641000,size.width*0.9987500,size.height*0.2450000);
    path0.lineTo(size.width*0.9987500,size.height*0.9900000);
    path0.lineTo(0,size.height*0.9971500);
    path0.close();
    canvas.drawShadow(path0, Colors.black, 5, true);
    canvas.drawPath(path0, paint0);


  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }

}

