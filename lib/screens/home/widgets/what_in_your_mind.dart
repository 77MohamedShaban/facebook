import 'package:facebook/core/utils/app_assets.dart';
import 'package:facebook/core/utils/app_colors.dart';
import 'package:flutter/material.dart';

class WhatInYourMind extends StatelessWidget {
  const WhatInYourMind({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Row(
        spacing: 8,
        children: [
          CircleAvatar(
            backgroundImage: AssetImage(AppImages.profilePicture),
            radius: 24,
          ),
           Expanded(
             child: TextField(
               onTapOutside: (_) => FocusManager.instance.primaryFocus?.unfocus(),
                       decoration: InputDecoration(
                       hintText: "What’s in Your Mind?",
                       hintStyle: TextStyle(
                       fontSize: 16,
                       fontWeight: FontWeight.w500,
                       color: Color(0xFF898F9C),
                       ),border: InputBorder.none,
                       focusedBorder: OutlineInputBorder(
                       borderRadius: BorderRadius.circular(30),
                       borderSide: BorderSide(  color:Color(0xFF898F9C),)
                       ),contentPadding: EdgeInsets.symmetric(horizontal: 5,)
                       ),),
           )
          ,
          Image.asset(AppIcons.gallery, width: 24),
        ],
      ),
    );
  }
}
