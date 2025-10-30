import 'package:flutter/material.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

class ShippingDetailsBanner extends StatelessWidget {
  final String shippingDetails;

  const ShippingDetailsBanner({
    Key? key,
    required this.shippingDetails,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      color: const Color(0xFFFAF4EA),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(
            PhosphorIcons.truckFill,
            color: Color(0xFF926120),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(
              shippingDetails,
              style: const TextStyle(
                color: Color(0xFF926120),
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class CorporateCareBanner extends StatelessWidget {
  const CorporateCareBanner({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
      color: const Color(0xFF0C3B2E),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            'assets/images/shield.png',
            height: 28,
            width: 28,
          ),
          const SizedBox(width: 10),
          const Text(
            'Protected with Tortoise Corporate Care',
            style: TextStyle(
              color: Color(0xFF8EE4AF),
              fontWeight: FontWeight.w500,
              fontSize: 15,
            ),
          ),
        ],
      ),
    );
  }
}