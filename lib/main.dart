import 'package:flutter/material.dart';
import 'package:yaoganyigou_flutter/home.dart';
import 'package:yaoganyigou_flutter/classify.dart';
import 'package:yaoganyigou_flutter/me.dart';
import 'package:yaoganyigou_flutter/special.dart';
import 'package:yaoganyigou_flutter/program.dart';

void main() => runApp(MaterialApp(home: Main()));

class Main extends StatelessWidget {
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
  int _tabIndex = 0;
  var tabImages;
  var appBarTitles = ['首页', '分类', '', '专题', '我的'];
  var pageList = [Home(), Classify(), Program(), Special(), Me()];

  Image getTabIcon(int curIndex) {
    if (curIndex == _tabIndex) {
      return tabImages[curIndex][1];
    }
    return tabImages[curIndex][0];
  }

/*
   * 获取bottomTab的颜色和文字
   */
  Text getTabTitle(int curIndex) {
    if (curIndex == _tabIndex) {
      return new Text(appBarTitles[curIndex],
          style: new TextStyle(color: const Color(0xFFB4A078)));
    } else {
      return new Text(appBarTitles[curIndex],
          style: new TextStyle(color: const Color(0xFF5C5C5C)));
    }
  }

  Container getTabTitleCenter() {
    return new Container(height: 0.0);
  }

  Image getTabImage(path) {
    return new Image.asset(path, width: 20.0, height: 20.0);
  }

  Image getTabImageCenter(path) {
    return new Image.asset(path, width: 47.0, height: 39.0);
  }

  void initData() {
    tabImages = [
      [
        getTabImage('assets/images/ic_home_nav_icon_gray.png'),
        getTabImage('assets/images/ic_home_nav_icon.png'),
      ],
      [
        getTabImage('assets/images/ic_classify_nav_icon_gray.png'),
        getTabImage('assets/images/ic_classify_nav_icon.png'),
      ],
      [
        getTabImageCenter('assets/images/ic_program_nav_icon.png'),
        getTabImageCenter('assets/images/ic_program_nav_icon.png'),
      ],
      [
        getTabImage('assets/images/ic_special_nav_icon_gray.png'),
        getTabImage('assets/images/ic_special_nav_icon.png'),
      ],
      [
        getTabImage('assets/images/ic_me_nav_icon_gray.png'),
        getTabImage('assets/images/ic_me_nav_icon.png'),
      ]
    ];

//    _bodys = [
//      new HomePage(),
//      new ShopPage(),
//      new MsgPage(),
//      new MyPage()
//    ];
  }

  @override
  Widget build(BuildContext context) {
    initData();
    // TODO: implement build
    return Scaffold(
      body: pageList[_tabIndex],
      bottomNavigationBar: BottomNavigationBar(
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(icon: getTabIcon(0), title: getTabTitle(0)),
            BottomNavigationBarItem(icon: getTabIcon(1), title: getTabTitle(1)),
            BottomNavigationBarItem(
                icon: getTabIcon(2), title: getTabTitleCenter()),
            BottomNavigationBarItem(icon: getTabIcon(3), title: getTabTitle(3)),
            BottomNavigationBarItem(icon: getTabIcon(4), title: getTabTitle(4)),
          ],
          currentIndex: _tabIndex,
          type: BottomNavigationBarType.fixed,
          onTap: _onItemTapped),
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      _tabIndex = index;
    });
  }
}
