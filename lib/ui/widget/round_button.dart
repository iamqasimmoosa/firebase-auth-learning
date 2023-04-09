import 'package:flutter/material.dart';
class RoundButton extends StatelessWidget {
  final String title;
  final VoidCallback ontap;
  const RoundButton({Key? key,
    required this.title,
    required this. ontap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap:ontap ,
      child: Container(
        height: 50,
        decoration:BoxDecoration(
          color: Colors.cyan,
          borderRadius: BorderRadius.circular(10)
        ),
        child: Center(child: Text(title, style: TextStyle(color: Colors.white),),),
      ),
    );
  }
}
