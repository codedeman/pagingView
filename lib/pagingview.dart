import 'package:flutter/material.dart';
import "package:meta/meta.dart";

class PagingView extends StatefulWidget {
  @override
    // TODO: implement createState
    _PagingView createState() => _PagingView();


  
}

class _PagingView extends State<PagingView> {

  PageController _pageController;

  @override
  void initState() {
    _pageController = PageController();
  }



  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return MaterialApp(

      home:  Scaffold(

        body: PageView(

          controller:  _pageController,
          children: <Widget>[

            Container(
//              color: Colors.redAccent,

              child: Center(
                  child: RaisedButton(

                    color: Colors.white,
                    onPressed: () {

                      if (_pageController.hasClients) {

                        _pageController.animateToPage(1, duration: const Duration(milliseconds: 400), curve: Curves.easeInOutSine,);

                      }
                    },
                    child: Text("Next"),

                  ),

              ),

            ),
            Container(
              height: 300.0,
              color: Colors.blue,
              child: Center(

//
//                  Image(
//                    height: 250.0,
//                    image: AssetImage('images/imagesBulur.png'),
//                  ),
                child: RaisedButton(
                  color:  Colors.white,
                  onPressed: (){

                      if(_pageController.hasClients) {
                        _pageController.animateToPage(0, duration: Duration(milliseconds: 400), curve: Curves.easeInOutSine);
                      }

                  },
                  child: Image(

                    image: AssetImage('images/' ),
                  ),
                ),
              ),
            ),

            Container (

              color: Colors.white,
              child: Image(

                image: AssetImage("assets/images/imagesBlur.png"),

              )
//              Image.network("https://img.mayflower.vn/2018/09/Hoa-yêu-thương.jpg"),
//              height: 300.0,

            )

          ]

        )
      ),
    );
  }
  
  
  
}