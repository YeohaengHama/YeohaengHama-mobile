// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vo_current_budget.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ExpenditureImpl _$$ExpenditureImplFromJson(Map<String, dynamic> json) =>
    _$ExpenditureImpl(
      id: (json['id'] as num).toInt(),
      place: Place.fromJson(json['place'] as Map<String, dynamic>),
      day: (json['day'] as num).toInt(),
      paymentMethod: json['paymentMethod'] as String,
      category: json['category'] as String,
      content: json['content'] as String,
      name: json['name'] as String?,
      amount: (json['amount'] as num).toInt(),
    );

Map<String, dynamic> _$$ExpenditureImplToJson(_$ExpenditureImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'place': instance.place,
      'day': instance.day,
      'paymentMethod': instance.paymentMethod,
      'category': instance.category,
      'content': instance.content,
      'name': instance.name,
      'amount': instance.amount,
    };

_$PlaceImpl _$$PlaceImplFromJson(Map<String, dynamic> json) => _$PlaceImpl(
      id: (json['id'] as num).toInt(),
      placeName: json['placeName'] as String,
      placeNum: json['placeNum'] as String,
      placeType: json['placeType'] as String,
    );

Map<String, dynamic> _$$PlaceImplToJson(_$PlaceImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'placeName': instance.placeName,
      'placeNum': instance.placeNum,
      'placeType': instance.placeType,
    };
