import 'package:facebook/core/utils/app_assets.dart';
import 'package:facebook/core/utils/app_colors.dart';
import 'package:facebook/core/utils/app_validator.dart';
import 'package:facebook/core/widgets/custom_text_form_field.dart';
import 'package:facebook/screens/home/home_screen.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  static const String routeName = '/login-screen';
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  late TextEditingController emailController;
  late TextEditingController passwordController;
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  void initState() {
    emailController = TextEditingController();
    passwordController = TextEditingController();

    super.initState();
  }

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.sizeOf(context).width;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              const SizedBox(height: 24),
              Image.asset(AppImages.logo, width: width * .3),
              const SizedBox(height: 32),
              Form(
                key: formKey,
                child: Column(
                  spacing: 16,
                  children: [
                    CustomTextFormField(
                      controller: emailController,
                      hintText: 'Mobile Number or Email Address',
                      keyboardType: TextInputType.emailAddress,
                      textInputAction: TextInputAction.next,
                      validator: AppValidator.validateEmail,
                    ),
                    CustomTextFormField(
                      controller: passwordController,
                      hintText: 'Password',
                      keyboardType: TextInputType.visiblePassword,
                      textInputAction: TextInputAction.done,
                      isPassword: true,
                      validator: AppValidator.validatePassword,
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 32),
              ElevatedButton(
                onPressed: () {
                  if (formKey.currentState!.validate()) {
                    Navigator.pushReplacementNamed(
                      context,
                      HomeScreen.roputeName,
                    );
                  }
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.blue,
                  foregroundColor: AppColors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadiusGeometry.circular(16),
                  ),
                  minimumSize: const Size.fromHeight(56),
                ),
                child: const Text(
                  'Login',
                  style: TextStyle(fontSize: 16, fontWeight: .w400),
                ),
              ),
              TextButton(
                onPressed: () {},
                child: Text(
                  'Forgotten Password ?',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: .w500,
                    color: AppColors.grey,
                  ),
                ),
              ),
              const Spacer(),
              OutlinedButton(
                onPressed: () {},
                style: OutlinedButton.styleFrom(
                  backgroundColor: Colors.transparent,
                  foregroundColor: AppColors.blue,
                  side: BorderSide(color: AppColors.blue, width: 1),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadiusGeometry.circular(16),
                  ),
                  minimumSize: const Size.fromHeight(56),
                ),
                child: Text(
                  'Create Account',
                  style: TextStyle(fontSize: 16, fontWeight: .w400),
                ),
              ),
              const SizedBox(height: 16),
              Image.asset(AppImages.branding, width: width * .2),
            ],
          ),
        ),
      ),
    );
  }
}
