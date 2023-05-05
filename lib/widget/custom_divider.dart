
import 'package:flutter/material.dart';

class CustomDivider extends StatelessWidget {
  const CustomDivider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        Expanded(
          child: Divider(
            endIndent: 10,
            color: Colors.grey,
          ),
        ),
        Text(
          'Or',
          style: TextStyle(fontSize: 12.0, color: Colors.grey),
        ),
        Expanded(
          child: Divider(
            indent: 10,
            color: Colors.grey,
          ),
        ),
      ],
    );
  }
}
