import 'package:flutter/material.dart';

class EffectivePriceBottomSheet extends StatelessWidget {
  const EffectivePriceBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text(
              "EFFECTIVE PRICE",
              style: TextStyle(
                color: Colors.black38,
                fontWeight: FontWeight.w700,
                fontSize: 12,
              ),
            ),
            const SizedBox(height: 8),
            const Text(
              "The effective price is the device's cost after savings, based on your payroll structure",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 24),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: Colors.grey.shade300),
              ),
              child: Column(
                children: [
                  _buildInfoRow(
                    title: "Tax slab",
                    value: "30%",
                    isDropdown: true,
                  ),
                  const DashedDivider(),
                  _buildPriceRow(
                    title: "Effective price of the device",
                    subtitle: "Price calculation based on selected tax slab",
                    price: "₹92,483*",
                    color: const Color(0xFF167E62),
                    textSize: 16,
                  ),
                  const DashedDivider(),
                  _buildPriceRow(
                    title: "Impact in monthly in-hand",
                    subtitle: "Your monthly in-hand salary will be reduced by this amount",
                    price: "₹7,706*",
                    color: Colors.black,
                    textSize: 16,
                  ),
                  const DashedDivider(),
                  _buildInfoRow(
                    title: "Know more",
                    value: "",
                    isDropdown: true,
                    titleColor: const Color(0xFF167E62),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 15),
            SizedBox(
              width: double.infinity,
              height: 50,
              child: ElevatedButton(
                onPressed: () => Navigator.pop(context),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                child: const Text(
                  "Okay! Understood",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildInfoRow({
    required String title,
    required String value,
    bool isDropdown = false,
    Color? titleColor,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: TextStyle(
              fontWeight: FontWeight.w500,
              color: titleColor ?? Colors.black,
            ),
          ),
          Row(
            children: [
              Text(value, style: const TextStyle(fontWeight: FontWeight.bold)),
              if (isDropdown) const SizedBox(width: 8),
              if (isDropdown) Icon(Icons.arrow_drop_down, color: Colors.grey.shade700),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildPriceRow({
    required String title,
    required String subtitle,
    required String price,
    required Color color,
    double textSize = 16,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    color: color,
                    fontWeight: FontWeight.w600,
                    fontSize: textSize,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  subtitle,
                  style: TextStyle(color: Colors.grey.shade600, fontSize: 12),
                ),
              ],
            ),
          ),
          Text(
            price,
            style: TextStyle(
              color: color,
              fontWeight: FontWeight.bold,
              fontSize: textSize,
            ),
          ),
        ],
      ),
    );
  }
}

class DashedDivider extends StatelessWidget {
  const DashedDivider({super.key, this.height = 1, this.color});

  final double height;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    final dividerColor = color ?? Colors.grey.shade300;
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        final boxWidth = constraints.constrainWidth();
        const dashWidth = 4.0;
        const dashSpace = 4.0;
        final dashCount = (boxWidth / (dashWidth + dashSpace)).floor();
        return Flex(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          direction: Axis.horizontal,
          children: List.generate(dashCount, (_) {
            return SizedBox(
              width: dashWidth,
              height: height,
              child: DecoratedBox(
                decoration: BoxDecoration(color: dividerColor),
              ),
            );
          }),
        );
      },
    );
  }
}