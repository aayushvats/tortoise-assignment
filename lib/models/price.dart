class Price {
  final int devicePrice;
  final int monthlyDeduction;
  final int effectivePrice;

  Price({
    required this.devicePrice,
    required this.monthlyDeduction,
    required this.effectivePrice,
  });

  factory Price.fromJson(Map<String, dynamic> json) {
    return Price(
      devicePrice: json['devicePrice'],
      monthlyDeduction: json['monthlyDeduction'],
      effectivePrice: json['effectivePrice'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'devicePrice': devicePrice,
      'monthlyDeduction': monthlyDeduction,
      'effectivePrice': effectivePrice,
    };
  }
}