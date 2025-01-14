class Order {
  final String id;
  final String amount;
  final String email;
  final String idProduct;
  final DateTime? time;

  Order({
    required this.id,
    required this.amount,
    required this.email,
    required this.idProduct,
    this.time,
  });

  factory Order.fromJson(Map<String, dynamic> json) {
    return Order(
      id: json['id'],
      amount: json['amount'],
      email: json['email'],
      idProduct: json['idProduct'],
      time: json['resulttime'],
    );
  }
}
