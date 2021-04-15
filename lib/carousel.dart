import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

// class ImageCarousel extends StatefulWidget {
//   @override
//   State<StatefulWidget> createState() {
//     return _ImageCarouselState();
//   }
// }

class ImageCarousel extends StatelessWidget {
  int _current = 0;
  final List<String> imageList;

  ImageCarousel({Key key, this.imageList}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      ClipRRect(
        borderRadius: BorderRadius.only(bottomLeft: Radius.circular(50.0)),
        child: CarouselSlider(
          items: imageSlider(this.imageList),
          options: CarouselOptions(
              autoPlay: true,
              // aspectRatio: 2.0,
              viewportFraction: 1.0,
              onPageChanged: (index, reason) {
                // setState(() {
                //   _current = index;
                // });
              }),
        ),
      ),
    ]);
  }

  List<Widget> imageSlider(List<String> imgList) {
    List<Widget> sliders = [];
    for (var imgURl in imgList) {
      sliders.add(Container(
          child: Container(
        // margin: EdgeInsets.all(5.0),
        child: ClipRRect(
            // borderRadius:
            //     BorderRadius.only(bottomLeft: Radius.circular(20.0)),
            child: Stack(
          children: <Widget>[
            Image.network(imgURl, fit: BoxFit.cover, width: 1000.0),
            Positioned(
              bottom: 0.0,
              left: 0.0,
              right: 0.0,
              child: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Color.fromARGB(200, 0, 0, 0),
                      Color.fromARGB(0, 0, 0, 0)
                    ],
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                  ),
                ),
                padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                child: Text(
                  '',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        )),
      )));
    }
    return sliders;
  }
}
