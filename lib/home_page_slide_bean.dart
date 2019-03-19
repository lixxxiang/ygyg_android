import 'package:json_annotation/json_annotation.dart'; 
  
part 'home_page_slide_bean.g.dart';


@JsonSerializable()
  class HomePageSlideBean extends Object with _$HomePageSlideBeanSerializerMixin{

  @JsonKey(name: 'data')
  List<Data> data;

  @JsonKey(name: 'message')
  String message;

  @JsonKey(name: 'status')
  int status;

  HomePageSlideBean(this.data,this.message,this.status,);

  factory HomePageSlideBean.fromJson(Map<String, dynamic> srcJson) => _$HomePageSlideBeanFromJson(srcJson);

}

  
@JsonSerializable()
  class Data extends Object with _$DataSerializerMixin{

  @JsonKey(name: 'dataType')
  String dataType;

  @JsonKey(name: 'imageUrl')
  String imageUrl;

  Data(this.dataType,this.imageUrl,);

  factory Data.fromJson(Map<String, dynamic> srcJson) => _$DataFromJson(srcJson);

}

  
