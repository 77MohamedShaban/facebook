import 'package:flutter/material.dart';

class CreatePostItem extends StatelessWidget {
  const CreatePostItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 13, vertical: 15),
      child: Row(
        children: [
          CircleAvatar(
            backgroundImage: AssetImage(
              "assets/images/mohamed_shaban.jpeg",
            ),
            radius: 20,
          ),
          Expanded(
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 12),
              child: TextField(
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
                ),
              ),
            ),
          ),
          Icon(Icons.photo_library_outlined,color: Color(0xFF0DE571),),
        ],
      ),
    );
  }
}
