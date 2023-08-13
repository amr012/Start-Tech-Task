import 'package:flutter/material.dart';

import '../utils/colors/colors.dart';

class CustomTextFormField extends StatelessWidget {
  bool isDarkMode = false;


  CustomTextFormField({required this.label, required this.controller, Key? key,this.validator,this.keyboardType,this.onChange,
     this.isEnabled}) : super(key: key);
  String label;
  TextEditingController controller;
  String? Function(String?)? validator;
  TextInputType? keyboardType;
  Function(String)? onChange;
  bool? isEnabled;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55,
      child: TextFormField(
        onChanged: onChange,
        validator: validator ,
        controller: controller,
        keyboardType: keyboardType,
        enabled: isEnabled,
        textAlign: TextAlign.center,
        style: TextStyle(height: 1.2,color: isDarkMode ? Colors.white : Colors.black),
        decoration: InputDecoration(
          hintText: label,
            hintStyle: TextStyle(
              color: borderColor.withOpacity(.9)
            ),
            errorStyle: TextStyle(height: .8),
            // errorBorder: OutlineInputBorder(
            //     borderRadius: BorderRadius.circular(15),
            //     borderSide: BorderSide(
            //       color: greyTextColor.withOpacity(.2),
            //     )
            // ),

            border: OutlineInputBorder(
            ),
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
                borderSide: BorderSide(
                  color: borderColor,
                )
            ),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
                borderSide: BorderSide(
                    color: borderColor
                )
            ),
            disabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
                borderSide: BorderSide(
                    color: borderColor
                )
            )
        ),
      ),
    );
  }
}
