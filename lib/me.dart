import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(home: Me()));

class Me extends StatelessWidget {
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
        body: ListView(
      children: <Widget>[
        Container(
            child: Stack(
          fit: StackFit.passthrough,
          children: <Widget>[
            Image.asset(
              "assets/images/img_me_background.png",
              fit: BoxFit.cover,
            ),
            Stack(
              children: <Widget>[
                Container(
                  child: Image.asset(
                    "assets/images/img_avatar.png",
                    width: 53,
                    height: 53,
                  ),
                  margin: EdgeInsets.only(left: 22, top: 64),
                ),
                Container(
                  width: 22,
                ),
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        '登录',
                        style:
                            TextStyle(fontSize: 12, color: Color(0xFFFFFFFF)),
                      ),
                      Container(
                        height: 13,
                      ),
                      Text(
                        '点击登录遥感易购',
                        style:
                            TextStyle(fontSize: 12, color: Color(0xFFC6B38C)),
                      )
                    ],
                  ),
                  margin: EdgeInsets.only(left: 98, top: 64),
                ),
                Align(
                    alignment: FractionalOffset.centerRight,
                    child: Container(
                      child: Image.asset(
                        "assets/images/img_computer.png",
                        width: 42,
                        height: 42,
                      ),
                      margin: EdgeInsets.only(right: 22, top: 69),
                    ))
              ],
            ),
          ],
        )),
        ListTile(
          title: Text(
            '我的订单',
            style: TextStyle(fontSize: 14, color: Color(0xFF5C5C5C)),
          ),
          trailing: Image.asset("assets/images/ic_forward.png",
              width: 8.0, height: 14.0),
        ),
        Container(
          height: 1,
          color: Color(0xFFDADADA),
          margin: EdgeInsets.only(left: 13.5),
        ),
        Container(
          height: 9,
        ),
        Container(
          child: Row(
            children: <Widget>[
              Expanded(
                child: Column(
                  children: <Widget>[
                    Image.asset("assets/images/img_dai_fu_kuan.png",
                        width: 28.0, height: 25.0),
                    Container(
                      height: 7,
                    ),
                    Text('待付款',style: TextStyle(fontSize: 12, color: Color(0xFF666666)),)
                  ],
                ),
                flex: 1,
              ),
              Expanded(
                child: Column(
                  children: <Widget>[
                    Image.asset("assets/images/img_dai_shen_he.png",
                        width: 25.0, height: 26.0),
                    Container(
                      height: 7,
                    ),
                    Text('待审核',style: TextStyle(fontSize: 12, color: Color(0xFF666666)),)
                  ],
                ),
                flex: 1,
              ),
              Expanded(
                child: Column(
                  children: <Widget>[
                    Image.asset("assets/images/img_sheng_chan_zhong.png",
                        width: 25.0, height: 25.0),
                    Container(
                      height: 7,
                    ),
                    Text('生产中',style: TextStyle(fontSize: 12, color: Color(0xFF666666)),)
                  ],
                ),
                flex: 1,
              ),
              Expanded(
                child: Column(
                  children: <Widget>[
                    Image.asset("assets/images/img_yi_jiao_fu.png",
                        width: 30.0, height: 26.0),
                    Container(
                      height: 7,
                    ),
                    Text('已交付',style: TextStyle(fontSize: 12, color: Color(0xFF666666)),)
                  ],
                ),
                flex: 1,
              ),
            ],
          ),
        ),
        Container(
          height: 9,
        ),
        Container(
          height: 6,
          color: Color.fromARGB(255, 240, 240, 240),
        ),
        ListTile(
          title: Align(
            alignment: Alignment(-1.2, 0),
            child: Text(
              '收藏',
              style: TextStyle(fontSize: 14, color: Color(0xFF5C5C5C)),
            ),
          ),
          leading: Image.asset("assets/images/img_collection.png",
              width: 21.0, height: 20.0),
          trailing: Image.asset("assets/images/ic_forward.png",
              width: 8.0, height: 14.0),
        ),
        Container(
          height: 1,
          color: Color(0xFFDADADA),
          margin: EdgeInsets.only(left: 13.5),
        ),
        ListTile(
          title: Align(
            alignment: Alignment(-1.2, 0),
            child: Text(
              '优惠券',
              style: TextStyle(fontSize: 14, color: Color(0xFF5C5C5C)),
            ),
          ),
          leading: Image.asset("assets/images/img_you_hui_quan.png",
              width: 22.0, height: 16.0),
          trailing: Image.asset("assets/images/ic_forward.png",
              width: 8.0, height: 14.0),
        ),
        Container(
          height: 1,
          color: Color(0xFFDADADA),
          margin: EdgeInsets.only(left: 13.5),
        ),
        ListTile(
          title: Align(
            alignment: Alignment(-1.2, 0),
            child: Text(
              '发票管理',
              style: TextStyle(fontSize: 14, color: Color(0xFF5C5C5C)),
            ),
          ),
          leading: Image.asset("assets/images/img_fa_piao.png",
              width: 23.0, height: 17.0),
          trailing: Image.asset("assets/images/ic_forward.png",
              width: 8.0, height: 14.0),
        ),
        Container(
          height: 1,
          color: Color(0xFFDADADA),
          margin: EdgeInsets.only(left: 13.5),
        ),
        ListTile(
          title: Align(
            alignment: Alignment(-1.2, 0),
            child: Text(
              '设置',
              style: TextStyle(fontSize: 14, color: Color(0xFF5C5C5C)),
            ),
          ),
          leading: Image.asset("assets/images/img_setting.png",
              width: 20.0, height: 20.0),
          trailing: Image.asset("assets/images/ic_forward.png",
              width: 8.0, height: 14.0),
        ),
        Container(
          height: 1,
          color: Color(0xFFDADADA),
          margin: EdgeInsets.only(left: 13.5),
        ),
        ListTile(
          title: Align(
            alignment: Alignment(-1.2, 0),
            child: Text(
              '客服',
              style: TextStyle(fontSize: 14, color: Color(0xFF5C5C5C)),
            ),
          ),
          leading: Image.asset("assets/images/img_service.png",
              width: 18.0, height: 17.0),
          trailing: Image.asset("assets/images/ic_forward.png",
              width: 8.0, height: 14.0),
        ),
        Container(
          height: 1,
          color: Color(0xFFDADADA),
          margin: EdgeInsets.only(left: 13.5),
        ),
        ListTile(
          title: Align(
            alignment: Alignment(-1.2, 0),
            child: Text(
              '意见反馈',
              style: TextStyle(fontSize: 14, color: Color(0xFF5C5C5C)),
            ),
          ),
          leading: Image.asset("assets/images/img_feedback.png",
              width: 19.0, height: 16.0),
          trailing: Image.asset("assets/images/ic_forward.png",
              width: 8.0, height: 14.0),
        ),
      ],
    ));
  }
}
