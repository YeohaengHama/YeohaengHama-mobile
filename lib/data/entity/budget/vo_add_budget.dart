
class Accounts {
  final int id;
  final String nickName;
  final String photoUrl;

  Accounts({
    required this.id,
    required this.nickName,
    required this.photoUrl,
  });
}

class AddBudget {
  final int? expendituresId;
  final int budgetId;
  final int totalAmount;
  final int payerId;
  final List<int> amount;
  final List<int> accountId;
  final String placeName;
  final int place;
  final int day;
  final String paymentMethod;
  final String content;
  final String category;
  final bool individual;
  final bool divided;
  final List<Accounts>? accounts;  // List<Account> 필드 추가

  AddBudget({
    this.expendituresId, // Null 허용
    required this.budgetId,
    required this.totalAmount,
    required this.payerId,
    required this.amount,
    required this.accountId,
    required this.placeName,
    required this.place,
    required this.day,
    required this.paymentMethod,
    required this.divided,
    required this.content,
    required this.category,
    required this.individual,
    this.accounts,  // 필드 초기화 추가
  });

  AddBudget copyWith({
    int? expendituresId, // Null 허용
    int? budgetId,
    int? totalAmount,
    int? payerId,
    List<int>? amount,
    List<int>? accountId,
    String? placeName,
    int? place,
    int? day,
    String? paymentMethod,
    String? content,
    String? category,
    bool? divided,
    bool? individual,
    List<Accounts>? accounts,  // copyWith에 필드 추가
  }) {
    return AddBudget(
      expendituresId: expendituresId ?? this.expendituresId,
      budgetId: budgetId ?? this.budgetId,
      totalAmount: totalAmount ?? this.totalAmount,
      payerId: payerId ?? this.payerId,
      amount: amount ?? this.amount,
      accountId: accountId ?? this.accountId,
      placeName: placeName ?? this.placeName,
      place: place ?? this.place,
      day: day ?? this.day,
      paymentMethod: paymentMethod ?? this.paymentMethod,
      content: content ?? this.content,
      category: category ?? this.category,
      divided: divided ?? this.divided,
      individual: individual ?? this.individual,
      accounts: accounts ?? this.accounts,  // 필드 초기화 추가
    );
  }
}
