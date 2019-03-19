import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'NetUtil.dart';
import 'home_page_slide_bean.dart';
import 'package:dio/dio.dart';

void main() => runApp(MaterialApp(home: Home()));

class Home extends StatelessWidget {
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
  List<String> imageUrls = new List<String>();
  bool success = false;

  @override
  void initState() {
    super.initState();
    getHttp();
  }

  void getHttp() async {
    Response response = await NetUtil()
        .getHttp("http://59.110.164.214:8024/global/homePageSlide", null);
    HomePageSlideBean homePageSlideBean =
        HomePageSlideBean.fromJson(response.data);
    for (int i = 0; i < homePageSlideBean.data.length; i++) {
      imageUrls.add(homePageSlideBean.data[i].imageUrl);
    }
    print(imageUrls);
    build(context);
    success = true;
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return Scaffold(
        appBar: AppBar(),
        body: Offstage(
            offstage: success,
            child: Container(
                child: Center(
                    child:
    CircularProgressIndicator(
                      valueColor: AlwaysStoppedAnimation(Color(0xFFB4A078)),
                    )
//                        ListView(
//              children: <Widget>[
//                Container(
//                  height: 200,
//                  child: Swiper(
//                    itemBuilder: (BuildContext context, int index) {
//                      return new Image.network(
//                        imageUrls[index],
//                        fit: BoxFit.fill,
//                      );
//                    },
//                    itemCount: imageUrls.length,
//                    pagination: new SwiperPagination(),
//                    control: new SwiperControl(),
//                  ),
//                )
//              ],
//            )
                )
            )
        )
    );
  }
}
