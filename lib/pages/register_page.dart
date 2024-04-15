// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:food_delivery_application/components/my_button.dart';
import 'package:food_delivery_application/components/my_textfield.dart';
import 'package:food_delivery_application/services/auth/auth_service.dart';

class RegisterPage extends StatefulWidget {
  final void Function()? onTap;

  const RegisterPage({super.key, this.onTap});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController =
      TextEditingController();

  void register() async {
    final _authService = AuthService();

    if (passwordController.text == confirmPasswordController.text) {
      try {
        await _authService.signUpWithEmailPassword(
            emailController.text, passwordController.text);
      } catch (e) {
        showDialog(
          context: context,
          builder: (context) => AlertDialog(
            title: Text(
              e.toString(),),
          ),
        );
      }
    }else{
      showDialog(
        context: context,
        builder: (context) => const AlertDialog(
          title: Text("Password Not Match",),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Center(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.person,
                size: 100,
                color: Theme.of(context).colorScheme.inversePrimary,
              ),
              const SizedBox(height: 25),
              Text(
                "Create Your Account",
                style: TextStyle(
                  fontSize: 16,
                  color: Theme.of(context).colorScheme.inversePrimary,
                ),
              ),
              const SizedBox(height: 25),
              MyTextField(
                controller: emailController,
                hintText: "Enter Your Email-Id",
                obscureText: false,
              ),
              const SizedBox(height: 25),
              MyTextField(
                controller: passwordController,
                hintText: "Enter Your Password",
                obscureText: true,
              ),
              const SizedBox(height: 25),
              MyTextField(
                controller: confirmPasswordController,
                hintText: "Enter Your Confirm Password",
                obscureText: true,
              ),
              const SizedBox(height: 25),
              MyButton(
                text: "Sign Up",
                onTap: register,
              ),
              const SizedBox(height: 25),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Already Have an Account??",
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.inversePrimary,
                    ),
                  ),
                  const SizedBox(width: 4),
                  GestureDetector(
                    onTap: widget.onTap,
                    child: Text(
                      "Login Now!",
                      style: TextStyle(
                          color: Theme.of(context).colorScheme.inversePrimary,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
