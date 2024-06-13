// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vo_statistics.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StatisticsImpl _$$StatisticsImplFromJson(Map<String, dynamic> json) =>
    _$StatisticsImpl(
      budget: Budget.fromJson(json['budget'] as Map<String, dynamic>),
      individual:
          Individual.fromJson(json['individual'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$StatisticsImplToJson(_$StatisticsImpl instance) =>
    <String, dynamic>{
      'budget': instance.budget,
      'individual': instance.individual,
    };

_$BudgetImpl _$$BudgetImplFromJson(Map<String, dynamic> json) => _$BudgetImpl(
      category: Category.fromJson(json['category'] as Map<String, dynamic>),
      amount: Amount.fromJson(json['amount'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$BudgetImplToJson(_$BudgetImpl instance) =>
    <String, dynamic>{
      'category': instance.category,
      'amount': instance.amount,
    };

_$IndividualImpl _$$IndividualImplFromJson(Map<String, dynamic> json) =>
    _$IndividualImpl(
      category: Category.fromJson(json['category'] as Map<String, dynamic>),
      amount: Amount.fromJson(json['amount'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$IndividualImplToJson(_$IndividualImpl instance) =>
    <String, dynamic>{
      'category': instance.category,
      'amount': instance.amount,
    };

_$CategoryImpl _$$CategoryImplFromJson(Map<String, dynamic> json) =>
    _$CategoryImpl(
      lodging: (json['lodging'] as num).toDouble(),
      flight: (json['flight'] as num).toDouble(),
      traffic: (json['traffic'] as num).toDouble(),
      tour: (json['tour'] as num).toDouble(),
      food: (json['food'] as num).toDouble(),
      shopping: (json['shopping'] as num).toDouble(),
      other: (json['other'] as num).toDouble(),
      amount: AmountDetail.fromJson(json['amount'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$CategoryImplToJson(_$CategoryImpl instance) =>
    <String, dynamic>{
      'lodging': instance.lodging,
      'flight': instance.flight,
      'traffic': instance.traffic,
      'tour': instance.tour,
      'food': instance.food,
      'shopping': instance.shopping,
      'other': instance.other,
      'amount': instance.amount,
    };

_$AmountImpl _$$AmountImplFromJson(Map<String, dynamic> json) => _$AmountImpl(
      lodging: (json['lodging'] as num).toDouble(),
      flight: (json['flight'] as num).toDouble(),
      traffic: (json['traffic'] as num).toDouble(),
      tour: (json['tour'] as num).toDouble(),
      food: (json['food'] as num).toDouble(),
      shopping: (json['shopping'] as num).toDouble(),
      other: (json['other'] as num).toDouble(),
    );

Map<String, dynamic> _$$AmountImplToJson(_$AmountImpl instance) =>
    <String, dynamic>{
      'lodging': instance.lodging,
      'flight': instance.flight,
      'traffic': instance.traffic,
      'tour': instance.tour,
      'food': instance.food,
      'shopping': instance.shopping,
      'other': instance.other,
    };

_$AmountDetailImpl _$$AmountDetailImplFromJson(Map<String, dynamic> json) =>
    _$AmountDetailImpl(
      lodging: (json['lodging'] as num).toDouble(),
      flight: (json['flight'] as num).toDouble(),
      traffic: (json['traffic'] as num).toDouble(),
      tour: (json['tour'] as num).toDouble(),
      food: (json['food'] as num).toDouble(),
      shopping: (json['shopping'] as num).toDouble(),
      other: (json['other'] as num).toDouble(),
    );

Map<String, dynamic> _$$AmountDetailImplToJson(_$AmountDetailImpl instance) =>
    <String, dynamic>{
      'lodging': instance.lodging,
      'flight': instance.flight,
      'traffic': instance.traffic,
      'tour': instance.tour,
      'food': instance.food,
      'shopping': instance.shopping,
      'other': instance.other,
    };
