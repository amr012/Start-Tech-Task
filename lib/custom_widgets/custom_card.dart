import 'package:flutter/material.dart';

import '../utils/colors/colors.dart';

class CustomCard extends StatelessWidget {
   CustomCard({Key? key,required this.onPressed,required this.title}) : super(key: key);
   final String title;
   final Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 5.0),
      child: MaterialButton(
        padding: EdgeInsets.symmetric(horizontal: 8),
        onPressed: onPressed,
        child: Card(
          color: Colors.white,
          elevation: 1,
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(title,
                  style: TextStyle(color: mainColor,fontSize: 20),),
                Icon(Icons.arrow_forward_ios)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
