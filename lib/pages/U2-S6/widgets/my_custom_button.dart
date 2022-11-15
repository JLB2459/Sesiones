import 'package:flutter/material.dart';

class MyCustomButton extends StatelessWidget {
  final VoidCallback decrease;
  final VoidCallback reset;
  final VoidCallback increment;
  const MyCustomButton({
    super.key,
    required this.decrease,
    required this.reset,
    required this.increment,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        CustomButtonItem(
          icon: Icons.remove,
          color: Colors.redAccent.shade700,
          onPressed: decrease,
        ),
        CustomButtonItem(
          color: Colors.blueAccent.shade200,
          onPressed: reset,
          icon: Icons.sync,
        ),
        CustomButtonItem(
          color: Colors.brown.shade500,
          onPressed: increment,
          icon: Icons.add,
        ),
      ],
    );
  }
}

class CustomButtonItem extends StatelessWidget {
  const CustomButtonItem({
    Key? key,
    required this.icon,
    required this.color,
    required this.onPressed,
  }) : super(key: key);
  final IconData icon;
  final Color color;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(
          15,
        ),
      ),
      color: //Colors.redAccent.shade700,
          color,
      onPressed: onPressed,
      child: Icon(
        //Icons.remove,
        icon,
        color: Colors.white,
      ),
    );
  }
}
