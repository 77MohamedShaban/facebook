import 'package:flutter/material.dart';

class CreateStorytItem extends StatelessWidget {
  final bool isCreate;
  const CreateStorytItem({super.key, this.isCreate = false});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(15),
      child: SizedBox(
        width: 100,
        height: 180,
        child: Stack(
          clipBehavior: Clip.none,
          alignment: Alignment.topCenter,
          children: [
            Column(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(15),
                  ),
                  child: Image.asset(
                    "assets/images/mohamed_shaban.jpeg",
                    width: 112,
                    height: 120,
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(height: 28), // مساحة +
                Text(
                  "Create a Story",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                      color: Color(0xFF242527)
                  ),
                ),
              ],
            ),
            Positioned(
              top: 100,
              child: Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.blue,
                  border: Border.all(color: Colors.white, width: 4),
                ),
                child: Icon(
                  Icons.add,
                  color: Colors.white,
                  size: 24,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
