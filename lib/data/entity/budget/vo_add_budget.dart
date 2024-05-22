import 'package:flutter_riverpod/flutter_riverpod.dart';

// AddBudget 클래스 정의
class AddBudget {
  final int itineraryId;
  final int place;
  final int day;
  final String paymentMethod;
  final String content;
  final String category;
  final String name;
  final int amount;

  AddBudget({
    required this.itineraryId,
    required this.place,
    required this.day,
    required this.paymentMethod,
    required this.content,
    required this.category,
    required this.name,
    required this.amount,
  });

  AddBudget copyWith({
    int? itineraryId,
    int? place,
    int? day,
    String? paymentMethod,
    String? content,
    String? category,
    String? name,
    int? amount,
  }) {
    return AddBudget(
      itineraryId: itineraryId ?? this.itineraryId,
      place: place ?? this.place,
      day: day ?? this.day,
      paymentMethod: paymentMethod ?? this.paymentMethod,
      content: content ?? this.content,
      category: category ?? this.category,
      name: name ?? this.name,
      amount: amount ?? this.amount,
    );
  }
}