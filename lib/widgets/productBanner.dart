import 'package:flutter/material.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

class ProductBannerSheet extends StatefulWidget {
  final String productAssets;

  const ProductBannerSheet({
    Key? key,
    required this.productAssets,
  }) : super(key: key);

  @override
  State<ProductBannerSheet> createState() => _ProductBannerSheetState();
}

class _ProductBannerSheetState extends State<ProductBannerSheet> {
  bool _expanded = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 8),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
          border: Border.all(
            color: Colors.grey.shade300,
            width: 1,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(16),
                topRight: Radius.circular(16),
              ),
              child: AnimatedContainer(
                duration: const Duration(milliseconds: 300),
                curve: Curves.easeInOut,
                height: _expanded ? null : 250,
                constraints: _expanded
                    ? const BoxConstraints()
                    : const BoxConstraints(maxHeight: 250),
                child: Image.asset(
                  'assets/images/banner.png',
                  fit: BoxFit.cover,
                  alignment: Alignment.topCenter,
                  width: double.infinity,
                ),
              ),
            ),

            GestureDetector(
              onTap: () {
                setState(() => _expanded = !_expanded);
              },
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      _expanded ? "View Less" : "View More",
                      style: TextStyle(
                        color: Color(0xFF167E62),
                        fontWeight: FontWeight.w500,
                        fontSize: 14,
                      ),
                    ),
                    Icon(
                      _expanded
                          ? PhosphorIcons.caretCircleUpFill
                          : PhosphorIcons.caretCircleDownFill,
                      color: Color(0xFF167E62),
                      size: 20,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}