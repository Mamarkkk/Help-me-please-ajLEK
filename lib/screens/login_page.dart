import 'package:flutter/material.dart';
import 'package:project1/components/my_button.dart';
import 'package:project1/components/my_text_field.dart';
import 'package:project1/screens/home_page.dart';
import 'package:project1/screens/register_page.dart';
import 'package:project1/screens/reset_password.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  //text controller
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                height: 50,
              ),
              Icon(
                Icons.lock_open_rounded,
                size: 72,
                color: Theme.of(context).colorScheme.primary,
              ),
              const SizedBox(
                height: 50,
              ),
              Text(
                "Welcome, Please login.",
                style: TextStyle(
                  color: Theme.of(context).colorScheme.primary,
                  fontSize: 16,
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              //email
              MyTextField(
                  controller: emailController,
                  hintText: "Enter your email",
                  obscureText: false),
              const SizedBox(
                height: 20,
              ),
              //passsword
              MyTextField(
                  controller: passwordController,
                  hintText: "Enter your password",
                  obscureText: true),
              const SizedBox(
                height: 10,
              ),
              //forgot password
              Align(
                  alignment: Alignment.centerRight,
                  child: GestureDetector(
                    child: Text(
                      "Forget Password?",
                      style: TextStyle(
                          color: Theme.of(context).colorScheme.primary,
                          fontWeight: FontWeight.bold),
                          
                    ),
                    onTap: () {
                      Navigator.pop(context);
                      Navigator.push(context,
                      MaterialPageRoute(builder: (context) => ForgotPasswordPage())); // Navigate back to the LoginPage
                    },
                  )),
              const SizedBox(
                height: 10,
              ),
              MyButton(
                  text: "Login",
                  onTap: () {
                    Navigator.pop(context);
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => HomePage()));
                  }),

              const SizedBox(
                height: 50,
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don't have an account yet?",
                    style:
                        TextStyle(color: Theme.of(context).colorScheme.primary),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  //tap to register page
                  GestureDetector(
                    child: Text(
                      "Register",
                      style: TextStyle(
                          color: Theme.of(context).colorScheme.primary,
                          fontWeight: FontWeight.bold),
                    ),
                    onTap: () {
                      Navigator.pop(context);
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const RegisterPage()));
                    },
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
