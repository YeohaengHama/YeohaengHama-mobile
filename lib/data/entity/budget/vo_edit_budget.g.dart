// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vo_edit_budget.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$EditBudgetImpl _$$EditBudgetImplFromJson(Map<String, dynamic> json) =>
    _$EditBudgetImpl(
      expendituresId: (json['expendituresId'] as num).toInt(),
      budgetId: (json['budgetId'] as num).toInt(),
      totalAmount: (json['totalAmount'] as num).toInt(),
      payerId: PayerId.fromJson(json['payerId'] as Map<String, dynamic>),
      divided: json['divided'] as bool,
      accountId: (json['accountId'] as List<dynamic>)
          .map((e) => AccountId.fromJson(e as Map<String, dynamic>))
          .toList(),
      amount: (json['amount'] as List<dynamic>)
          .map((e) => (e as num).toInt())
          .toList(),
      place: Place.fromJson(json['place'] as Map<String, dynamic>),
      day: (json['day'] as num).toInt(),
      paymentMethod: json['paymentMethod'] as String,
      content: json['content'] as String,
      category: json['category'] as String,
      individual: json['individual'] as bool,
    );

Map<String, dynamic> _$$EditBudgetImplToJson(_$EditBudgetImpl instance) =>
    <String, dynamic>{
      'expendituresId': instance.expendituresId,
      'budgetId': instance.budgetId,
      'totalAmount': instance.totalAmount,
      'payerId': instance.payerId,
      'divided': instance.divided,
      'accountId': instance.accountId,
      'amount': instance.amount,
      'place': instance.place,
      'day': instance.day,
      'paymentMethod': instance.paymentMethod,
      'content': instance.content,
      'category': instance.category,
      'individual': instance.individual,
    };

_$PayerIdImpl _$$PayerIdImplFromJson(Map<String, dynamic> json) =>
    _$PayerIdImpl(
      id: (json['id'] as num).toInt(),
      nickname: json['nickname'] as String,
      photoUrl: json['photoUrl'] as String,
      accountRole: json['accountRole'] as String,
    );

Map<String, dynamic> _$$PayerIdImplToJson(_$PayerIdImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'nickname': instance.nickname,
      'photoUrl': instance.photoUrl,
      'accountRole': instance.accountRole,
    };

_$AccountIdImpl _$$AccountIdImplFromJson(Map<String, dynamic> json) =>
    _$AccountIdImpl(
      id: (json['id'] as num).toInt(),
      nickname: json['nickname'] as String,
      photoUrl: json['photoUrl'] as String,
      accountRole: json['accountRole'] as String,
    );

Map<String, dynamic> _$$AccountIdImplToJson(_$AccountIdImpl instance) =>
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
