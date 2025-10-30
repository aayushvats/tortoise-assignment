import 'package:flutter/material.dart';

import '../models/brand.dart';

class BrandCard extends StatefulWidget {
  final Brand brand;
  bool isSelected;

  BrandCard({super.key, required this.brand, required this.isSelected});

  @override
  State<BrandCard> createState() => _BrandCardState();
}

class _BrandCardState extends State<BrandCard> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10.0),
      child: Container(
        width: 100,
        height: 100,
        decoration: BoxDecoration(
          color: Color(0xFFEEEEEE),
          border: Border.all(color: widget.isSelected?Colors.black:Colors.transparent),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              widget.brand.brandIcon,
              height: 25,
              width: 70,
              fit: BoxFit.contain,
            ),
            const SizedBox(height: 16),
            // Brand Name
            Text(
              widget.brand.brandName,
              style: const TextStyle(
                color: Colors.black,
                fontSize: 14,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
