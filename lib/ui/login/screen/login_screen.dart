import 'package:flutter/material.dart';
import '../../home/screen/home_screen.dart';

class LoginScreen extends StatefulWidget {
  static const String routeName = "loginScreen";

  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool isPasswordHidden = true;
  final FocusNode _focusNode=FocusNode();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFFFFF),
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.only(right: 20, left: 20),

          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 60),
                Image.asset("assets/images/Vector.png",),
                SizedBox(height: 62),
                TextField(
                keyboardType: TextInputType.emailAddress
                ,style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: _focusNode.hasFocus?Colors.white:Color(0xFFD6DFF1),
                    hintText: "Mobile Number or Email Address",
                    hintStyle: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: Color(0xFF898F9C),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(16),
                      borderSide: BorderSide(
                        color: Color(0xFF898F9C),
                        width: 1,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(16),
                      borderSide: BorderSide(
                        color: Color(0xFF68A1FF),
                        width: 2,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 24),
                TextField(
                  obscureText: isPasswordHidden,
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Color(0xFFD6DFF1),
                    hintText: "Password",
                    suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          isPasswordHidden = !isPasswordHidden;
                        });
                      },
                      icon: Icon(
                        isPasswordHidden
                            ? Icons.visibility_off
                            : Icons.visibility,
                        color: Color(0xFF898F9C),
                      ),
                    ),
                    hintStyle: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: Color(0xFF898F9C),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(16),
                      borderSide: BorderSide(
                        color: Color(0xFF898F9C),
                        width: 1,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(16),
                      borderSide: BorderSide(
                        color: Color(0xFF68A1FF),
                        width: 2,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 40),
                FilledButton(
                  style: FilledButton.styleFrom(
                    backgroundColor: Color(0xFF1877F2),
                    minimumSize: Size(double.infinity, 50),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadiusGeometry.circular(16),
                    ),
                  ),
                  onPressed: () {
                    Navigator.of(context).pushNamed(HomeScreen.routeName);
                  },
                  child: Text(
                    "Login",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
                  ),
                ),
                SizedBox(height: 24),
                TextButton(
                  style: TextButton.styleFrom(minimumSize: Size(167, 18)),
                  onPressed: () {},
                  child: Text(
                    "Forgotten Password ?",
                    style: TextStyle(color: Color(0xFF898F9C)),
                  ),
                ),
                SizedBox(height: 90),
                OutlinedButton(
                  style: OutlinedButton.styleFrom(
                    side: BorderSide(color: Color(0xFF1877F2),)
                    ,minimumSize: Size(double.infinity, 50),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadiusGeometry.circular(16),
                    ),
                  ),
                  onPressed: () {},
                  child: Text(
                    "Create Account",
                    style: TextStyle(
                      color: Color(0xFF1877F2),
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                SizedBox(height: 10,)
                ,Image.asset("assets/images/meta.png",width: 98)

              ],
            ),
          ),
        ),
      ),
    );
  }
}
