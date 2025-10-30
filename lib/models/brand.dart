class Brand {
  final String brandName;
  final String brandIcon;

  Brand({
    required this.brandName,
    required this.brandIcon,
  });

  factory Brand.fromJson(Map<String, dynamic> json) {
    return Brand(
      brandName: json['brandName'],
      brandIcon: json['brandIcon'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'brandName': brandName,
      'brandIcon': brandIcon,
    };
  }
}