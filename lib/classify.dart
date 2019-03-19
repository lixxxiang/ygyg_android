import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(home: Classify()));

class Classify extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        body: HomePage(),
      ),
    );
  }
}

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        body: Container(
            color: Color(0xFFFFFFFF),
            child: Column(
      children: <Widget>[
        Container(
          decoration: BoxDecoration(color: Colors.white, boxShadow: <BoxShadow>[
            //设置阴影
            new BoxShadow(
              color: Colors.grey, //阴影颜色
              blurRadius: 4.0, //阴影大小
            ),
          ]),
          height: 80,
          child: Container(
            height: 31,
            child: Container(
              width: 190,
              child: Center(
                child: Row(children: [
                  Image.asset("assets/images/ic_search_dark.png",
                      width: 12.0, height: 12.0),
                  Container(
                    width: 8.0,
                  ),
                  Text('搜索卫星数据，共有5大类产品',
                      style: TextStyle(
                          color: const Color(0xFF9B9B9B), fontSize: 12.0)),
                ]),
              ),
            ),
            alignment: Alignment.center,
            margin: EdgeInsets.only(
                left: 15.0, right: 15.0, bottom: 8.5, top: 32.0),
            decoration: BoxDecoration(
              color: const Color(0xFFF0F0F0),
              borderRadius: BorderRadius.all(
                Radius.circular(20.0),
              ),
            ),
          ),
        ),
        Stack(
          alignment: Alignment.center,
          children: <Widget>[
            Container(
              height: 1.0,
              color: const Color(0xFFEDEDED),
              margin: EdgeInsets.only(
                  left: 14.0, right: 14.0, top: 35.0),
            ),
            Container(
              margin: EdgeInsets.only(
                  left: 14.0, right: 14.0, top: 35.0),
              child: Container(
                height: 22,
                width: 47,
                color: Color(0xFFFFFFFF),
                child: Text(
                  '分类',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xFFD8D8D8),
                    fontSize: 12.0,
                  ),
                ),
              )
            ),
          ],
        ),
        Container(
          margin: EdgeInsets.only(top: 30.0),
          height: 292,
          width: 292,
          child: Stack(
            children: <Widget>[
              Align(
                alignment: FractionalOffset(0.0, 0.0),
                child: Image.asset("assets/images/img_classify_1.png",
                    width: 138.0, height: 138.0),
              ),
              Align(
                alignment: FractionalOffset(1.0, 0.0),
                child: Image.asset("assets/images/img_classify_2.png",
                    width: 138.0, height: 138.0),
              ),
              Align(
                alignment: FractionalOffset.bottomLeft,
                child: Image.asset("assets/images/img_classify_3.png",
                    width: 138.0, height: 138.0),
              ),
              Align(
                alignment: FractionalOffset.bottomRight,
                child: Image.asset("assets/images/img_classify_4.png",
                    width: 138.0, height: 138.0),
              )
            ],
          ),
        )
      ],
    ))
    );
  }
}
