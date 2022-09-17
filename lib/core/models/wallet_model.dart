class WalletModel {
  final double amount;
  final String currency;

  WalletModel({
    required this.currency,
    required this.amount,
  });

  WalletModel copyWith({String? currency, double? amount}) {
    return WalletModel(
      currency: currency ?? this.currency,
      amount: amount ?? this.amount,
    );
  }
}