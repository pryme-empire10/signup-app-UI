import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.text,
    this.imagePath,
    this.border,
    required this.onPressed,
    required this.color,
    required this.textColor
  });

  final String text;
  final String? imagePath;
  final VoidCallback onPressed;
  final Color color, textColor;
  final ShapeBorder? border;

  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: BorderRadius.circular(10),
      color: color,
      child: MaterialButton(
        shape: border,
        minWidth: MediaQuery.of(context).size.width,
        height: 50,
        onPressed: onPressed,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (imagePath != null)
              Image.asset(
                imagePath!,
                height: 40,
                width: 40,
              ),
            Text(
              text,
              style: TextStyle(color: textColor,fontSize: 15),
            ),
          ],
        ),
      ),
    );
  }
}



// ElevatedButton.icon(
//       style: ElevatedButton.styleFrom(
//         alignment: Alignment.center,
//         backgroundColor: color,
//         shape: RoundedRectangleBorder(
//           borderRadius: BorderRadius.circular(15),
//         ),
//         minimumSize: Size(MediaQuery.of(context).size.width, 50),
//       ),
//       onPressed: onPressed,
//       icon: Icon(icon),
//       label: Center(
//           child: Text(
//         text,textAlign: TextAlign.center,
//         style: const TextStyle(fontSize: 15),
//       )),
//     );
