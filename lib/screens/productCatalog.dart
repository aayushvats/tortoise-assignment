import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tortoise_assignment/data/staticData.dart';
import 'package:tortoise_assignment/models/brand.dart';
import 'package:tortoise_assignment/widgets/backButton.dart';
import 'package:tortoise_assignment/widgets/titleText.dart';

import '../models/product.dart';
import '../widgets/brandCard.dart';
import '../widgets/productCard.dart';
import '../widgets/seachTextField.dart';

class ProductCatalog extends StatefulWidget {
  const ProductCatalog({super.key});

  @override
  State<ProductCatalog> createState() => _ProductCatalogState();
}

class _ProductCatalogState extends State<ProductCatalog> {
  Brand? selectedBrand;
  Product? selectedProduct;

  final GlobalKey<SearchTextFieldState> _searchKey = GlobalKey<SearchTextFieldState>();

  List<Product> getFilteredProducts() {
    if (selectedProduct != null) {
      return [selectedProduct!];
    }

    if (selectedBrand != null) {
      return SampleData.products
          .where((product) => product.brandID == selectedBrand)
          .toList();
    }

    final allProducts = List<Product>.from(SampleData.products);
    allProducts.shuffle();
    return allProducts;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: backButton(onPressed: () {}),
        toolbarHeight: 75,
        title: SearchTextField(
          key: _searchKey,
          products: SampleData.products,
          onAutoComplete: (String? val) {
            if (val == null) {
              setState(() {
                selectedBrand = null;
                selectedProduct = null;
              });
              return;
            }
            if (SampleData.brands.any((brand) => brand.brandName == val)) {
              setState(() {
                selectedBrand = SampleData.brands.firstWhere(
                        (brand) => brand.brandName == val);
                selectedProduct = null;
              });
            } else if (SampleData.products
                .any((product) => product.productName == val)) {
              setState(() {
                selectedProduct = SampleData.products.firstWhere(
                        (product) => product.productName == val);
                selectedBrand = null;
              });
            }
          },
        ),
      ),

      body: Padding(
        padding: const EdgeInsets.only(left: 25.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 30),
              buildSubtitleText(SampleData.brandTitle),
              const SizedBox(height: 20),

              // Brand list
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: SampleData.brands.map((brand) {
                    return InkWell(
                      onTap: () {
                        setState(() {
                          selectedBrand = brand;
                          selectedProduct = null;
                        });
                        _searchKey.currentState?.setSelectedLabel(brand.brandName);
                      },
                      child: BrandCard(
                        brand: brand,
                        isSelected: selectedBrand == brand,
                      ),
                    );
                  }).toList(),
                ),
              ),

              const SizedBox(height: 30),
              buildSubtitleText(SampleData.devicesTitle),
              const SizedBox(height: 20),

              Padding(
                padding: const EdgeInsets.only(right: 25),
                child: GridView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: getFilteredProducts().length,
                  gridDelegate:
                  const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 1.4,
                  ),
                  itemBuilder: (context, index) {
                    return ProductCard(
                      product: getFilteredProducts()[index],
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}