import 'package:flutter/material.dart';


class FeelingButton extends StatelessWidget {
  final Color color;
  final String image;
  final String label;

  const FeelingButton({
    super.key, 
    required this.color, 
    required this.image,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: color,
          ),
          child: Image.asset(image, height: 25, fit: BoxFit.cover,),
        ),
        Text(label, style: Theme.of(context).textTheme.labelSmall,),
      ],
    );
  }
}
