// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vo_current_budget.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ExpenditureImpl _$$ExpenditureImplFromJson(Map<String, dynamic> json) =>
    _$ExpenditureImpl(
      id: (json['id'] as num).toInt(),
      expendituresTotalAmount: (json['expendituresTotalAmount'] as num).toInt(),
      place: Place.fromJson(json['place'] as Map<String, dynamic>),
      day: (json['day'] as num).toInt(),
      paymentMethod: json['paymentMethod'] as String,
      category: json['category'] as String,
      content: json['content'] as String,
      individual: json['individual'] as bool,
      calculate: (json['calculate'] as List<dynamic>)
          .map((e) => Calculation.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ExpenditureImplToJson(_$ExpenditureImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'expendituresTotalAmount': instance.expendituresTotalAmount,
      'place': instance.place,
      'day': instance.day,
      'paymentMethod': instance.paymentMethod,
      'category': instance.category,
      'content': instance.content,
      'individual': instance.individual,
      'calculate': instance.calculate,
    };

_$CalculationImpl _$$CalculationImplFromJson(Map<String, dynamic> json) =>
    _$CalculationImpl(
      id: (json['id'] as num).toInt(),
      accountShowDTO:
          Account.fromJson(json['accountShowDTO'] as Map<String, dynamic>),
      amount: (json['amount'] as num).toInt(),
    );

Map<String, dynamic> _$$CalculationImplToJson(_$CalculationImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'accountShowDTO': instance.accountShowDTO,
      'amount': instance.amount,
    };

_$AccountImpl _$$AccountImplFromJson(Map<String, dynamic> json) =>
    _$AccountImpl(
      id: (json['id'] as num).toInt(),
      nickname: json['nickname'] as String,
      photoUrl: json['photoUrl'] as String?,
      accountRole: json['accountRole'] as String?,
    );

Map<String, dynamic> _$$AccountImplToJson(_$AccountImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'nickname': instance.nickname,
      'photoUrl': instance.photoUrl,
      'accountRole': instance.accountRole,
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
