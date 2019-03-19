// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_page_slide_bean.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HomePageSlideBean _$HomePageSlideBeanFromJson(Map<String, dynamic> json) {
  return HomePageSlideBean(
      (json['data'] as List)
          ?.map((e) =>
              e == null ? null : Data.fromJson(e as Map<String, dynamic>))
          ?.toList(),
      json['message'] as String,
      json['status'] as int);
}

Map<String, dynamic> _$HomePageSlideBeanToJson(HomePageSlideBean instance) =>
    <String, dynamic>{
      'data': instance.data,
      'message': instance.message,
      'status': instance.status
    };

Data _$DataFromJson(Map<String, dynamic> json) {
  return Data(json['dataType'] as String, json['imageUrl'] as String);
}

Map<String, dynamic> _$DataToJson(Data instance) => <String, dynamic>{
      'dataType': instance.dataType,
      'imageUrl': instance.imageUrl
    };
