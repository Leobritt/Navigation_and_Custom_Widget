import 'package:flutter/material.dart';

class CustomButtonWidget extends StatelessWidget {
  const CustomButtonWidget({
    super.key,
    required this.onpressed,
    required this.title,
    this.disable = false,
    this.titleButtonSize,
  });

  final VoidCallback onpressed;
  final String title;
  final bool disable;
  final double? titleButtonSize;

  @override
  Widget build(BuildContext context) {
    VoidCallback? onPressedHandler;
    if (disable) {
      // Se a variável disable for true, onPressedHandler será nulo (botão desabilitado).
      onPressedHandler = null;
    } else {
      // Se a variável disable for false, onPressedHandler será a função onpressed (botão habilitado).
      onPressedHandler = onpressed;
    }

    return ElevatedButton(
      onPressed: onPressedHandler,
      style: ButtonStyle(
        foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
        backgroundColor: MaterialStateProperty.resolveWith<Color>(
          (states) {
            if (states.contains(MaterialState.disabled)) {
              return Colors.red;
            }
            if (states.contains(MaterialState.pressed)) {
              return Colors.blue;
            }
            return Colors.green;
          },
        ),
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
        ),
        textStyle: MaterialStateProperty.all(
          TextStyle(fontSize: titleButtonSize),
        ),
      ),
      child: Text(title),
    );
  }
}
