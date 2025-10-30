import 'package:flutter/material.dart';

class SpaceSelector extends StatefulWidget {
  final List<int> storage;

  const SpaceSelector({
    Key? key,
    required this.storage,
  }) : super(key: key);

  @override
  State<SpaceSelector> createState() => _SpaceSelectorState();
}

class _SpaceSelectorState extends State<SpaceSelector> {
  int? selectedValue;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 0.0),
      child: LayoutBuilder(
        builder: (context, constraints) {
          const itemsPerRow = 3;
          const horizontalSpacing = 6.0;
          final totalSpacing = (itemsPerRow - 1) * horizontalSpacing;
          final itemWidth = (constraints.maxWidth - totalSpacing) / itemsPerRow;

          return Column(
            mainAxisSize: MainAxisSize.min,
            children: _buildRows(itemWidth),
          );
        },
      ),
    );
  }

  List<Widget> _buildRows(double itemWidth) {
    final List<Widget> rows = [];
    const int itemsPerRow = 3;

    for (int i = 0; i < widget.storage.length; i += itemsPerRow) {
      final int end = (i + itemsPerRow < widget.storage.length)
          ? i + itemsPerRow
          : widget.storage.length;
      final List<int> rowItems = widget.storage.sublist(i, end);

      final List<Widget> rowWidgets = rowItems.map((value) {
        final isSelected = value == selectedValue;

        return SizedBox(
          width: itemWidth,
          child: Padding(
            padding: const EdgeInsets.only(right: 4.0),
            child: GestureDetector(
              onTap: () => setState(() => selectedValue = value),
              child: AnimatedContainer(
                duration: const Duration(milliseconds: 200),
                padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(
                    color: isSelected ? const Color(0xFF16AF8E) : Colors.grey.shade300,
                    width: 1,
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.08),
                      blurRadius: 3,
                      offset: const Offset(0, 2),
                    ),
                  ],
                ),
                child: Row(
                  children: [
                    Container(
                      width: 20,
                      height: 20,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: isSelected ? const Color(0xFF16AF8E) : Colors.grey.shade400,
                          width: isSelected ? 5.0 : 1.5,
                        ),
                      ),
                    ),
                    const SizedBox(width: 8),
                    Text(
                      '$value GB',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                        color: isSelected ? const Color(0xFF16AF8E) : Colors.black87,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      }).toList();

      rows.add(
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: rowWidgets,
        ),
      );

      if (i + itemsPerRow < widget.storage.length) {
        rows.add(const SizedBox(height: 5.5));
      }
    }
    return rows;
  }
}