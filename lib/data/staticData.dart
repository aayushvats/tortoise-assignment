import 'package:flutter/material.dart';
import '../models/brand.dart';
import '../models/price.dart';
import '../models/product.dart';
import '../models/spec.dart';

class SampleData {

  static final Brand apple = Brand(
    brandName: 'Apple',
    brandIcon: 'assets/icons/apple.png',
  );
  static final Brand google = Brand(
    brandName: 'Google',
    brandIcon: 'assets/icons/google.png',
  );
  static final Brand samsung = Brand(
    brandName: 'Samsung',
    brandIcon: 'assets/icons/samsung.png',
  );
  static final Brand oneplus = Brand(
    brandName: 'OnePlus',
    brandIcon: 'assets/icons/oneplus.png',
  );

  static final List<Brand> brands = [apple, google, samsung, oneplus];

  static final List<Product> products = [
    // ---------------- Apple ----------------
    Product(
      brandID: apple,
      productName: 'iPhone 16',
      productAssets: 'dummy-',
      colors: [Colors.black, Colors.white, Colors.blue],
      space: [128, 256, 512],
      specifications: [
        Spec(icon: const Icon(Icons.memory), title: 'Chip', content: 'A18 Bionic'),
        Spec(icon: const Icon(Icons.camera_alt), title: 'Camera', content: '48MP + 12MP Dual'),
        Spec(icon: const Icon(Icons.battery_full), title: 'Battery', content: '3,900mAh'),
        Spec(icon: const Icon(Icons.display_settings), title: 'Display', content: '6.1-inch OLED, 120Hz'),
      ],
      price: Price(devicePrice: 79900, monthlyDeduction: 2500, effectivePrice: 77400),
      shippingDetails: 'Ships in 3–5 business days',
    ),
    Product(
      brandID: apple,
      productName: 'iPhone 16 Pro',
      productAssets: 'iphone16pro-',
      colors: [Colors.white60, Colors.yellowAccent, Colors.blueAccent],
      space: [256, 512],
      specifications: [
        Spec(icon: const Icon(Icons.memory), title: 'Chip', content: 'A18 Pro'),
        Spec(icon: const Icon(Icons.camera_alt), title: 'Camera', content: '48MP Triple Camera'),
        Spec(icon: const Icon(Icons.battery_full), title: 'Battery', content: '4,100mAh'),
        Spec(icon: const Icon(Icons.display_settings), title: 'Display', content: '6.3-inch Super Retina XDR'),
      ],
      price: Price(devicePrice: 129900, monthlyDeduction: 3500, effectivePrice: 126400),
      shippingDetails: 'Ships in 3–5 business days',
    ),
    Product(
      brandID: apple,
      productName: 'iPhone 16 Pro Max',
      productAssets: 'dummy-',
      colors: [Colors.black, Colors.white60],
      space: [256, 512],
      specifications: [
        Spec(icon: const Icon(Icons.memory), title: 'Chip', content: 'A18 Pro'),
        Spec(icon: const Icon(Icons.camera_alt), title: 'Camera', content: '48MP Main + 12MP Ultra + 12MP Telephoto'),
        Spec(icon: const Icon(Icons.battery_full), title: 'Battery', content: '4,400mAh'),
        Spec(icon: const Icon(Icons.display_settings), title: 'Display', content: '6.7-inch LTPO OLED'),
      ],
      price: Price(devicePrice: 159900, monthlyDeduction: 4500, effectivePrice: 155400),
      shippingDetails: 'Ships in 3–5 business days',
    ),
    Product(
      brandID: apple,
      productName: 'iPhone Air',
      productAssets: 'dummy-',
      colors: [Colors.pink, Colors.blue],
      space: [128, 256],
      specifications: [
        Spec(icon: const Icon(Icons.memory), title: 'Chip', content: 'A17'),
        Spec(icon: const Icon(Icons.camera_alt), title: 'Camera', content: '12MP + 12MP Dual'),
        Spec(icon: const Icon(Icons.battery_full), title: 'Battery', content: '3,500mAh'),
        Spec(icon: const Icon(Icons.display_settings), title: 'Display', content: '6.1-inch OLED'),
      ],
      price: Price(devicePrice: 65900, monthlyDeduction: 2000, effectivePrice: 63900),
      shippingDetails: 'Ships in 5–7 business days',
    ),
    Product(
      brandID: apple,
      productName: 'MacBook Pro',
      productAssets: 'dummy-',
      colors: [Colors.grey, Colors.white60],
      space: [256, 512],
      specifications: [
        Spec(icon: const Icon(Icons.memory), title: 'Processor', content: 'M3 Pro'),
        Spec(icon: const Icon(Icons.storage), title: 'RAM', content: '16GB Unified Memory'),
        Spec(icon: const Icon(Icons.display_settings), title: 'Display', content: '14-inch Liquid Retina XDR'),
        Spec(icon: const Icon(Icons.battery_full), title: 'Battery', content: 'Up to 18 hours'),
      ],
      price: Price(devicePrice: 199900, monthlyDeduction: 6000, effectivePrice: 193900),
      shippingDetails: 'Ships in 1–2 weeks',
    ),
    Product(
      brandID: apple,
      productName: 'iPad Pro',
      productAssets: 'dummy-',
      colors: [Colors.grey, Colors.white60],
      space: [64, 128, 256, 512],
      specifications: [
        Spec(icon: const Icon(Icons.memory), title: 'Chip', content: 'M3'),
        Spec(icon: const Icon(Icons.display_settings), title: 'Display', content: '12.9-inch Liquid Retina XDR'),
        Spec(icon: const Icon(Icons.storage), title: 'RAM', content: '8GB'),
        Spec(icon: const Icon(Icons.usb), title: 'Connectivity', content: 'Thunderbolt / USB 4'),
      ],
      price: Price(devicePrice: 129900, monthlyDeduction: 3500, effectivePrice: 126400),
      shippingDetails: 'Ships in 3–5 business days',
    ),
    Product(
      brandID: apple,
      productName: 'MacBook Air',
      productAssets: 'dummy-',
      colors: [Colors.yellowAccent, Colors.grey],
      space: [128, 256, 512],
      specifications: [
        Spec(icon: const Icon(Icons.memory), title: 'Processor', content: 'M2'),
        Spec(icon: const Icon(Icons.display_settings), title: 'Display', content: '13.6-inch Retina'),
        Spec(icon: const Icon(Icons.storage), title: 'RAM', content: '8GB Unified Memory'),
        Spec(icon: const Icon(Icons.battery_full), title: 'Battery', content: 'Up to 18 hours'),
      ],
      price: Price(devicePrice: 114900, monthlyDeduction: 3000, effectivePrice: 111900),
      shippingDetails: 'Ships in 1–2 weeks',
    ),
    Product(
      brandID: apple,
      productName: 'iPad Air',
      productAssets: 'ipadair-',
      colors: [Colors.blue, Colors.grey],
      space: [32, 64, 128, 256, 512],
      specifications: [
        Spec(icon: const Icon(Icons.memory), title: 'Chip', content: 'M1'),
        Spec(icon: const Icon(Icons.display_settings), title: 'Display', content: '10.9-inch Liquid Retina'),
        Spec(icon: const Icon(Icons.storage), title: 'RAM', content: '8GB'),
        Spec(icon: const Icon(Icons.usb), title: 'Port', content: 'USB-C'),
      ],
      price: Price(devicePrice: 59900, monthlyDeduction: 1800, effectivePrice: 58100),
      shippingDetails: 'Ships in 5–7 business days',
    ),
    Product(
      brandID: apple,
      productName: 'iPad 10th Gen',
      productAssets: 'dummy-',
      colors: [Colors.yellow, Colors.pink],
      space: [64, 128, 256],
      specifications: [
        Spec(icon: const Icon(Icons.memory), title: 'Chip', content: 'A14 Bionic'),
        Spec(icon: const Icon(Icons.display_settings), title: 'Display', content: '10.9-inch Retina'),
        Spec(icon: const Icon(Icons.camera_alt), title: 'Camera', content: '12MP Ultra Wide'),
        Spec(icon: const Icon(Icons.battery_full), title: 'Battery', content: '10 hours'),
      ],
      price: Price(devicePrice: 44900, monthlyDeduction: 1400, effectivePrice: 43500),
      shippingDetails: 'Ships in 5–7 business days',
    ),

    // ---------------- Google ----------------
    Product(
      brandID: google,
      productName: 'Pixel 10',
      productAssets: 'pixel10-',
      colors: [Colors.white, Colors.green],
      space: [64, 128, 256],
      specifications: [
        Spec(icon: const Icon(Icons.memory), title: 'Chip', content: 'Tensor G4'),
        Spec(icon: const Icon(Icons.camera_alt), title: 'Camera', content: '50MP Dual'),
        Spec(icon: const Icon(Icons.display_settings), title: 'Display', content: '6.3-inch OLED 120Hz'),
        Spec(icon: const Icon(Icons.battery_full), title: 'Battery', content: '4,600mAh'),
      ],
      price: Price(devicePrice: 79999, monthlyDeduction: 2500, effectivePrice: 77499),
      shippingDetails: 'Ships in 3–5 business days',
    ),
    Product(
      brandID: google,
      productName: 'Pixel 10 Pro',
      productAssets: 'dummy-',
      colors: [Colors.black, Colors.yellowAccent],
      space: [128, 256, 512],
      specifications: [
        Spec(icon: const Icon(Icons.memory), title: 'Chip', content: 'Tensor G4 Pro'),
        Spec(icon: const Icon(Icons.camera_alt), title: 'Camera', content: '50MP + 48MP + 12MP'),
        Spec(icon: const Icon(Icons.display_settings), title: 'Display', content: '6.7-inch LTPO AMOLED'),
        Spec(icon: const Icon(Icons.battery_full), title: 'Battery', content: '5,000mAh'),
      ],
      price: Price(devicePrice: 109999, monthlyDeduction: 3500, effectivePrice: 106499),
      shippingDetails: 'Ships in 3–5 business days',
    ),
    Product(
      brandID: google,
      productName: 'Pixel 9a',
      productAssets: 'dummy-',
      colors: [Colors.green, Colors.white],
      space: [32, 64, 128, 256],
      specifications: [
        Spec(icon: const Icon(Icons.memory), title: 'Chip', content: 'Tensor G3 Lite'),
        Spec(icon: const Icon(Icons.camera_alt), title: 'Camera', content: '48MP Single'),
        Spec(icon: const Icon(Icons.display_settings), title: 'Display', content: '6.1-inch OLED'),
        Spec(icon: const Icon(Icons.battery_full), title: 'Battery', content: '4,400mAh'),
      ],
      price: Price(devicePrice: 46999, monthlyDeduction: 1500, effectivePrice: 45499),
      shippingDetails: 'Ships in 5–7 business days',
    ),

    // ---------------- Samsung ----------------
    Product(
      brandID: samsung,
      productName: 'S24 Ultra',
      productAssets: 'dummy-',
      colors: [Colors.black, Colors.grey],
      space: [256, 512, 1024],
      specifications: [
        Spec(icon: const Icon(Icons.memory), title: 'Chip', content: 'Snapdragon 8 Gen 3'),
        Spec(icon: const Icon(Icons.camera_alt), title: 'Camera', content: '200MP Quad Camera'),
        Spec(icon: const Icon(Icons.display_settings), title: 'Display', content: '6.8-inch QHD+ AMOLED'),
        Spec(icon: const Icon(Icons.battery_full), title: 'Battery', content: '5,000mAh, 45W Fast Charging'),
      ],
      price: Price(devicePrice: 139999, monthlyDeduction: 4000, effectivePrice: 135999),
      shippingDetails: 'Ships in 3–5 business days',
    ),
    Product(
      brandID: samsung,
      productName: 'S24 FE',
      productAssets: 'dummy-',
      colors: [Colors.green, Colors.pink],
      space: [128, 256],
      specifications: [
        Spec(icon: const Icon(Icons.memory), title: 'Chip', content: 'Exynos 2400'),
        Spec(icon: const Icon(Icons.camera_alt), title: 'Camera', content: '50MP Triple'),
        Spec(icon: const Icon(Icons.display_settings), title: 'Display', content: '6.4-inch 120Hz AMOLED'),
        Spec(icon: const Icon(Icons.battery_full), title: 'Battery', content: '4,500mAh'),
      ],
      price: Price(devicePrice: 59999, monthlyDeduction: 2000, effectivePrice: 57999),
      shippingDetails: 'Ships in 5–7 business days',
    ),

    // ---------------- OnePlus ----------------
    Product(
      brandID: oneplus,
      productName: 'OnePlus 13',
      productAssets: 'dummy-',
      colors: [Colors.red, Colors.black],
      space: [128, 256, 512],
      specifications: [
        Spec(icon: const Icon(Icons.memory), title: 'Chip', content: 'Snapdragon 8 Gen 3'),
        Spec(icon: const Icon(Icons.camera_alt), title: 'Camera', content: '50MP Triple Camera'),
        Spec(icon: const Icon(Icons.display_settings), title: 'Display', content: '6.7-inch AMOLED 120Hz'),
        Spec(icon: const Icon(Icons.battery_full), title: 'Battery', content: '5,000mAh 100W Fast Charging'),
      ],
      price: Price(devicePrice: 69999, monthlyDeduction: 2200, effectivePrice: 67799),
      shippingDetails: 'Ships in 3–5 business days',
    ),
    Product(
      brandID: oneplus,
      productName: 'Nord CE4 Lite',
      productAssets: 'dummy-',
      colors: [Colors.green, Colors.white],
      space: [64, 128, 256, 512],
      specifications: [
        Spec(icon: const Icon(Icons.memory), title: 'Chip', content: 'Snapdragon 7s Gen 2'),
        Spec(icon: const Icon(Icons.camera_alt), title: 'Camera', content: '108MP Main'),
        Spec(icon: const Icon(Icons.display_settings), title: 'Display', content: '6.7-inch AMOLED 120Hz'),
        Spec(icon: const Icon(Icons.battery_full), title: 'Battery', content: '5,000mAh 80W'),
      ],
      price: Price(devicePrice: 19999, monthlyDeduction: 700, effectivePrice: 19299),
      shippingDetails: 'Ships in 5–7 business days',
    ),
  ];

  static final String brandTitle = "Search from popular brands";
  static final String devicesTitle = "Available Devices";
}
