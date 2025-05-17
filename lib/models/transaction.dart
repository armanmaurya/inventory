import '../utils/enums.dart';

class Transaction {
  final String id;
  final String productId;
  final int quantity;
  final TransactionType type;
  final DateTime date;

  Transaction({
    required this.id,
    required this.productId,
    required this.quantity,
    required this.type,
    required this.date,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'productId': productId,
      'quantity': quantity,
      'type': type.toString(),
      'date': date.toIso8601String(),
    };
  }

  factory Transaction.fromMap(Map<String, dynamic> map) {
    return Transaction(
      id: map['id'],
      productId: map['productId'],
      quantity: map['quantity'],
      type: map['type'] == 'TransactionType.stockIn'
          ? TransactionType.stockIn
          : TransactionType.stockOut,
      date: DateTime.parse(map['date']),
    );
  }
}
