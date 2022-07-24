import 'package:flutter/material.dart';

import 'custom_text.dart';




class CustomButton extends StatelessWidget {
  final title, route, primary, textFontSize, asset,titleColor;
  final GestureTapCallback onPressed;
  CustomButton(
      {Key? key,
      required this.title,
      this.titleColor,
      this.route,
      required this.onPressed,
      this.textFontSize,
      this.primary,
      this.asset})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // margin: const EdgeInsets.only(leright: 30),
      width: MediaQuery.of(context).size.width/1.2,
      height: MediaQuery.of(context).size.height/17,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
          primary: primary ?? Colors.white,
        ),
        onPressed: onPressed,
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: asset!=""?Row(
            children: [
              SizedBox(width: 10,),
              Image.asset(asset,height: 25),
              CustomText(
                text: title,color: Colors.black,
                fontSize: textFontSize,
                fontWeight: FontWeight.bold,
              ),
            ],
          ):CustomText(
            text: title,color: titleColor==null?Colors.black:titleColor,
            fontSize: textFontSize,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
