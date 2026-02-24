import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PostItem extends StatelessWidget {
  String profileName;
  String profileImage;
  String postImage;
  PostItem({required this.profileName,required this.profileImage,required this.postImage});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.symmetric(horizontal: 16),
          height: 50,
          child: Row(
            children: [
              Expanded(
                child: Row(
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage(
                        profileImage,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(5),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            child: Text(
                              profileName,
                              style: TextStyle(
                                color: Color(0xFF242527),
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                          Row(
                            children: [
                              Text(
                                "8h. ",
                                style: TextStyle(
                                  color: Color(0xFF898F9C),
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              Icon(Icons.public,size: 12,color: Color(0xFF898F9C),)
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Icon(Icons.more_horiz, color: Color(0xFF242527)),
            ],
          ),
        ),
        Image.asset(
          postImage,
          width: double.infinity,
          height: 180,
          fit: BoxFit.cover,
        ),
        Row(
          children: [
            Expanded(
              child: Row(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.favorite_border,
                      size: 25,
                      color: Color(0xFF000000),
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.chat_bubble_outline_outlined,
                      size: 25,
                      color: Color(0xFF000000),
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      CupertinoIcons.paperplane,
                      size: 25,
                      color: Color(0xFF000000),
                    ),
                  ),
                ],
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.bookmark_border_rounded,
                size: 25,
                color: Color(0xFF000000),
              ),
            ),
          ],
        ),
        Divider(height: 12, thickness: 2, color: Color(0xFF898F9C)),
      ],
    );
  }
}
