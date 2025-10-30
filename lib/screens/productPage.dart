import 'package:flutter/material.dart';
import 'package:tortoise_assignment/widgets/banner.dart';
import 'package:tortoise_assignment/widgets/colorSelector.dart';
import 'package:tortoise_assignment/widgets/specifications.dart';

import '../models/product.dart';
import '../widgets/backButton.dart';
import '../widgets/bottomBar.dart';
import '../widgets/carousel.dart';
import '../widgets/productBanner.dart';
import '../widgets/spaceSelector.dart';
import '../widgets/titleText.dart';

class ProductPage extends StatefulWidget {
  final Product product;

  const ProductPage({super.key, required this.product});

  @override
  State<ProductPage> createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: backButton(onPressed: () { Navigator.pop(context); }),
        toolbarHeight: 75,
        centerTitle: true,
        title: buildTitleText(widget.product.productName)
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ShippingDetailsBanner(shippingDetails: widget.product.shippingDetails),
            ProductCarousel(productAsset: widget.product.productAssets),
            CorporateCareBanner(),

            SizedBox(height: 16.0),
            buildLabelTitle("Finish"),
            buildLabelText("Pick a Color"),
            SizedBox(height: 8.0),
            ColorSelectorRow(colors: widget.product.colors),

            SizedBox(height: 16.0),
            buildLabelTitle("Storage"),
            buildLabelText("How much space do you need?"),
            SizedBox(height: 8.0),
            SpaceSelector(storage: widget.product.space,),

            SizedBox(height: 16.0),
            buildLabelTitle("Specifications"),
            SpecificationsSheet(specifications: widget.product.specifications),

            ProductBannerSheet(productAssets: widget.product.productAssets,),
          ],
        ),
      ),
      bottomNavigationBar: BottomBar(),
    );
  }
}

