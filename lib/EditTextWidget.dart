
import 'package:flutter/material.dart';


class EditTextWidget extends StatelessWidget {
  final TextEditingController textEditingController;
  final String hinttext;

  final String? Function(String?)? validator;
  final bool readOnly;
  final bool obscure;
  final bool obscure1;
  final bool suffixIcon;
  final Widget? suffixIconWidget;
  final void Function()? onPressed;
  final TextInputType? keyboardType;

  const EditTextWidget({
    Key? key,
    required this.textEditingController,
    required this.hinttext,
    this.obscure = true,
    this.obscure1 = true,
    this.validator,
    this.readOnly = false,
    this.suffixIcon = false,
    this.suffixIconWidget,
    this.onPressed,
    this.keyboardType,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: textEditingController,
      readOnly: readOnly,
      obscureText: suffixIcon ? obscure : false,
      // obscureText1: suffixIcon ? obscure : false,
      keyboardType: keyboardType ?? TextInputType.text,

      cursorColor: Colors.grey,
      style: TextStyle(
        color:Colors.black,
        fontSize: 8,
      ),
      decoration: InputDecoration(
          fillColor: Colors.white,
          filled: true,
          hintText: hinttext,
          hintStyle: TextStyle(
             color: Colors.grey,
            fontSize: 8,
          ),
          // TextStyle(
          //     fontSize: 14.sp,
          //     color: AppColors.greyColor,
          //     fontFamily: 'Poppins'),

          contentPadding: EdgeInsets.fromLTRB(25.0, 10.0, 20.0, 10.0),
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: Colors.grey,
              ),
              borderRadius: BorderRadius.all(
                Radius.circular(20),
              )),
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey),
              borderRadius: BorderRadius.all(
                Radius.circular(20),
              )),
          border: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey),
              borderRadius: BorderRadius.all(
                Radius.circular(20),
              )),
          suffixIcon: suffixIcon
              ? suffixIconWidget ??
                  IconButton(
                      onPressed: onPressed,
                      icon: Icon(
                      
                        obscure ? Icons.visibility_off : Icons.visibility,
                        //   obscure1 ? Icons.visibility_off : Icons.visibility,
                        color: Colors.tealAccent,
                      ))
              : null),
      validator: validator,
    );
  }
}
