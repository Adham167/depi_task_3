
import 'package:depi_task_3/widgets/button_build_widget.dart';
import 'package:flutter/material.dart';

class FeatureButton extends StatefulWidget {
  const FeatureButton({super.key});

  @override
  State<FeatureButton> createState() => _FeatureButtonState();
}

class _FeatureButtonState extends State<FeatureButton> {
  bool isGerd = true;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isGerd = !isGerd;
        });
      },
      child: Container(
        height: 50,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(36),
          color: Colors.red.withOpacity(0.1),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: ButtonBuildWidget(isGred: isGerd, text: "List View"),
              ),
              Expanded(
                child: ButtonBuildWidget(isGred: !isGerd, text: "Grid View"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
