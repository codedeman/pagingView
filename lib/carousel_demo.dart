
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:google_fonts/google_fonts.dart';

class CarouselDemo extends StatefulWidget {
  CarouselDemo() : super();

  final String title = "Hoa yêu thương";

  @override
  CarouselDemoState createState() => CarouselDemoState();
}

class CarouselDemoState extends State<CarouselDemo> {

  final startColor = const Color(0xffd54942); // Second `const` is optional in assignments.
  final endColor = const Color(0xffae1c3f);

  CarouselSlider carouselSlider;
  int _current = 0;
  List imgList = [
    'https://hoatuoi360.vn/uploads/file/hoa%20sinh%20nhat%20dep%20650-2.jpg',
    'https://hoayeuthuong.com/hinh-hoa-tuoi/hoa-tuoi-hop/4027_yeu-thuong-mai-mai.jpg',
    'https://dienhoa360.com/wp-content/uploads/2018/11/hoa-yeu-thuong-bo-hoa-chuc-mung.jpg',
    'https://img.mayflower.vn/2019/07/lang-hoa-yeu-thuong.jpg',
  ];

  List<T> map<T>(List list, Function handler) {
    List<T> result = [];
    for (var i = 0; i < list.length; i++) {
      result.add(handler(i, list[i]));
    }
    return result;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
//      appBar: AppBar(
//
//        title: Text(widget.title),
//      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/imagesBlur.png'),
            fit: BoxFit.cover,
          )

        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[

            carouselSlider = CarouselSlider(
              height: 220.0,
              initialPage: 0,
              enlargeCenterPage: true,
              autoPlay: false,
              reverse: false,
              enableInfiniteScroll: true,
//              autoPlayInterval: Duration(seconds: 2),
              autoPlayAnimationDuration: Duration(milliseconds: 2000),
              pauseAutoPlayOnTouch: Duration(seconds: 10),
              scrollDirection: Axis.horizontal,
              onPageChanged: (index) {
                setState(() {
                  _current = index;
                });
              },
              items: imgList.map((imgUrl) {
                return Builder(
                  builder: (BuildContext context) {
                    return Container(

                      width: MediaQuery.of(context).size.width,
                      height: 300.0,
                      margin: EdgeInsets.symmetric(horizontal: 10.0),
                      decoration: BoxDecoration(
                        color: Colors.red,
                      ),
                      child: Image.network(
                        imgUrl,
                        fit: BoxFit.fill,
                      ),
                    );
                  },
                );
              }).toList(),
            ),

            SizedBox(
              height: 20,
            ),

        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(

              child: Text("Tình nhân",
                  style: TextStyle(
                    fontStyle: FontStyle.italic,
                    fontSize: 40.0,
                    color: Color(0xfff06744),

                  ), ),

            ),
            SizedBox(
              height: 8.0,
            ),
            Container(
              alignment: Alignment.center,
              child: Text("Hồng hay hường là tên gọi chung cho các loài thực vật có hoa dạng cây bụi hoặc cây leo lâu năm thuộc chi Rosa, họ Rosaceae, với hơn 100 loài với màu hoa đa dạng, phân bố từ miền ôn đới đến nhiệt đới",
                style: TextStyle(
                  fontStyle: FontStyle.italic,
                  fontSize: 14.0,
                  color: Color(0xff9a8585),


                ),

                textAlign: TextAlign.center,
              ),


            ),
          ],


        ),

        SizedBox(
          height: 37.0,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
//          mainAxisAlignment: MainAxisAlignment.spaceEvenly,

          children: <Widget>[

            Container(

              height: 50.0,
              child: RaisedButton(

                onPressed: () {},
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(80.0)),
                padding: EdgeInsets.all(0.0),
                child: Ink(
                  decoration: BoxDecoration(
                      gradient: LinearGradient(colors: [startColor,endColor],
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                      ),
                      borderRadius: BorderRadius.circular(30.0)
                  ),
                  child: Container(
                    constraints: BoxConstraints(maxWidth: 300.0, minHeight: 50.0),
                    alignment: Alignment.center,
                    child: Text(
                      "Đặt hàng",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.white
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10.0,
            ),

            Container(

              height: 50.0,
              child: RaisedButton(

                onPressed: () {},
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(80.0)),
                padding: EdgeInsets.all(0.0),
                child: Ink(
                  decoration: BoxDecoration(
                      gradient: LinearGradient(colors: [startColor,endColor],
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                      ),
                      borderRadius: BorderRadius.circular(30.0)
                  ),
                  child: Container(
                    constraints: BoxConstraints(maxWidth: 300.0, minHeight: 50.0),
                    alignment: Alignment.center,
                    child: Text(
                      "Lịch sử đặt hàng",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.white
                      ),
                    ),
                  ),
                ),
              ),
            ),
//
//            RaisedButton(
//              padding: EdgeInsets.all(0.0),
//                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(22.0)),
//
//
//                child:Ink(
//                decoration: BoxDecoration(
//                  gradient: LinearGradient(
//                    colors: [startColor,endColor],
//                    begin: Alignment.centerLeft,
//                    end: Alignment.centerRight,
//                  ),
//                      borderRadius: BorderRadius.circular(30.0)
//                ),
//              )
//
//
////              const Text("Đặt mua",style: TextStyle(fontSize: 20),),
//            )



          ],

        ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: map<Widget>(imgList, (index, url) {
                return Container(
                  width: 10.0,
                  height: 10.0,
                  margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: _current == index ? Color(0xffe95983) : Color(0xffffe4ec),
                  ),
                );
              }),
            ),
//            SizedBox(
//              height: 20.0,
//            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
//                OutlineButton(
//                  onPressed: goToPrevious,
////                  child: Text("<"),
//                ),
//                OutlineButton(
//                  onPressed: goToNext,
////                  child: Text(">"),
//                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  goToPrevious() {
    carouselSlider.previousPage(
        duration: Duration(milliseconds: 300), curve: Curves.ease);
  }

  goToNext() {
    carouselSlider.nextPage(
        duration: Duration(milliseconds: 300), curve: Curves.decelerate);
  }
}