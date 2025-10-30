import 'package:flutter/material.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

import '../models/product.dart';

class SearchTextField extends StatefulWidget {
  final TextEditingController? controller;
  final String? hintText;
  final List<Product> products;
  final Function(String?) onAutoComplete;

  const SearchTextField({
    Key? key,
    this.controller,
    this.hintText,
    required this.products,
    required this.onAutoComplete,
  }) : super(key: key);

  @override
  State<SearchTextField> createState() => SearchTextFieldState();
}

class SearchTextFieldState extends State<SearchTextField> {
  TextEditingController? _controller;
  String? selectedLabel;

  @override
  void initState() {
    super.initState();
    _controller = widget.controller ?? TextEditingController();
  }

  void setSelectedLabel(String? label) {
    setState(() {
      selectedLabel = label;
      _controller?.clear();
    });
  }

  void _handleSubmitted(String value) {
    final trimmed = value.trim().toLowerCase();
    for (final product in widget.products) {
      final brandName = product.brandID.brandName.toLowerCase();
      final productName = product.productName.toLowerCase();

      if (trimmed == brandName || trimmed == productName) {
        setState(() {
          selectedLabel = trimmed == brandName
              ? product.brandID.brandName
              : product.productName;
          _controller!.clear();
        });
        widget.onAutoComplete(selectedLabel!);
        return;
      }
    }
  }

  void _clearSelectedLabel() {
    setState(() => selectedLabel = null);
    widget.onAutoComplete(null);
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: _controller,
      onSubmitted: _handleSubmitted,
      decoration: InputDecoration(
        hintText: selectedLabel == null ? (widget.hintText ?? 'Search') : "",
        isDense: true,
        filled: true,
        fillColor: Colors.black.withOpacity(0.05),
        prefixIcon: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(width: selectedLabel != null ? 11 : 18),
            const Icon(PhosphorIcons.magnifyingGlass, color: Colors.black),
            if (selectedLabel != null) ...[
              const SizedBox(width: 8),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(color: Colors.black),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      selectedLabel!,
                      style: const TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.w400),
                    ),
                    const SizedBox(width: 4),
                    GestureDetector(
                      onTap: _clearSelectedLabel,
                      child: const Icon(PhosphorIcons.xCircleFill,
                          size: 16, color: Colors.black),
                    ),
                  ],
                ),
              ),
            ],
          ],
        ),
        contentPadding:
        const EdgeInsets.symmetric(vertical: 14.0, horizontal: 16.0),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12.0),
          borderSide: const BorderSide(color: Colors.black),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12.0),
          borderSide: const BorderSide(color: Colors.black, width: 1.5),
        ),
      ),
      cursorColor: Colors.black,
    );
  }
}