import 'package:flutter/material.dart';

class ColorSelectorRow extends StatefulWidget {
  final List<Color> colors;
  final double circleSize;

  const ColorSelectorRow({
    Key? key,
    required this.colors,
    this.circleSize = 40.0,
  }) : super(key: key);

  @override
  State<ColorSelectorRow> createState() => _ColorSelectorRowState();
}

class _ColorSelectorRowState extends State<ColorSelectorRow> {
  int? selectedIndex;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: List.generate(widget.colors.length, (index) {
          final color = widget.colors[index];
          final isSelected = index == selectedIndex;

          return Padding(
            padding: const EdgeInsets.only(right: 8),
            child: GestureDetector(
              onTap: () {
                setState(() => selectedIndex = index);
              },
              child: Stack(
                alignment: Alignment.center,
                children: [
                  if (isSelected)
                    Container(
                      width: widget.circleSize + 4,
                      height: widget.circleSize + 4,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: const Color(0xFF16AF8E),
                          width: 3.0,
                        ),
                      ),
                    ),
                  CustomPaint(
                    painter: _InsetShadowCirclePainter(
                      color: color,
                      showWhiteBorder: !isSelected,
                    ),
                    child: SizedBox(
                      width: widget.circleSize,
                      height: widget.circleSize,
                    ),
                  ),
                ],
              ),
            ),
          );
        }),
      ),
    );
  }
}

class _InsetShadowCirclePainter extends CustomPainter {
  final Color color;
  final bool showWhiteBorder;

  _InsetShadowCirclePainter({
    required this.color,
    required this.showWhiteBorder,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final center = Offset(size.width / 2, size.height / 2);
    final radius = size.width / 2;

    // Fill circle
    final fillPaint = Paint()..color = color;
    canvas.drawCircle(center, radius, fillPaint);

    // Optional white border
    if (showWhiteBorder) {
      final borderPaint = Paint()
        ..style = PaintingStyle.stroke
        ..strokeWidth = 2.0
        ..color = Colors.white;
      canvas.drawCircle(center, radius - borderPaint.strokeWidth / 2, borderPaint);
    }

    // Inset shadow (inner glow)
    final shadowPaint = Paint()
      ..shader = RadialGradient(
        colors: [
          const Color(0x73000000), // #00000073
          Colors.transparent,
        ],
        stops: const [0.9, 1.0],
      ).createShader(Rect.fromCircle(center: center, radius: radius));
    canvas.drawCircle(center, radius - 1.5, shadowPaint);
  }

  @override
  bool shouldRepaint(covariant _InsetShadowCirclePainter oldDelegate) =>
      oldDelegate.color != color ||
          oldDelegate.showWhiteBorder != showWhiteBorder;
}