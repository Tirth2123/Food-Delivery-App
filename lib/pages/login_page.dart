// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:food_delivery_application/components/my_button.dart';
import 'package:food_delivery_application/components/my_textfield.dart';
import 'package:food_delivery_application/services/auth/auth_service.dart';


class LoginPage extends StatefulWidget {
  final void Function()? onTap;


  const LoginPage({
    super.key,
    required this.onTap
  });

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  void login() async {
    final _authService = AuthService();

    try{
      await _authService.signInWithEmailPassword(emailController.text, passwordController.text);
    }
    catch(e){
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: Text(
            e.toString(),),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Center(
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
              "Food Delivery App",
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

            MyButton(
              text: "Login",
              onTap: login,
            ),

            const SizedBox(height: 25),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Not A member??",
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.inversePrimary,
                  ),
                ),
                const SizedBox(width: 4),
                GestureDetector(
                  onTap: widget.onTap,
                  child: Text(
                    "SignUp Now!",
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.inversePrimary,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
