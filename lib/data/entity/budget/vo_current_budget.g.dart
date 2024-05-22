// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vo_current_budget.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ExpenditureImpl _$$ExpenditureImplFromJson(Map<String, dynamic> json) =>
    _$ExpenditureImpl(
      id: (json['id'] as num).toInt(),
      place: (json['place'] as num).toInt(),
      day: (json['day'] as num).toInt(),
      paymentMethod: json['paymentMethod'] as String,
      category: json['category'] as String,
      name: json['name'] as String,
      amount: (json['amount'] as num).toInt(),
    );

Map<String, dynamic> _$$ExpenditureImplToJson(_$ExpenditureImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'place': instance.place,
      'day': instance.day,
      'paymentMethod': instance.paymentMethod,
      'category': instance.category,
      'name': instance.name,
      'amount': instance.amount,
    };
