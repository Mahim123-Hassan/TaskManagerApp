import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:task_manager_app/ui/screens/sign_up_screen.dart';
import 'package:task_manager_app/ui/widgets/screen_background.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});
  static const String name = '/SignInScreen';

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ScreenBackground(
        child: Padding(
          padding: const EdgeInsets.all(34),
          child: Column(
            crossAxisAlignment: .start,
            spacing: 8,
            children: [
              SizedBox(height: 70),
              Text(
                "Get Started With",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
              ),
              SizedBox(height: 8),
              TextFormField(
                decoration: InputDecoration(
                  hintText: "Email",
                  suffixIcon: Icon(Icons.email),
                ),
              ),
              TextFormField(
                decoration: InputDecoration(
                  hintText: "Password",
                  suffixIcon: Icon(Icons.lock),
                ),
              ),
              SizedBox(height: 8),
              FilledButton(
                onPressed: _onTabSignInButton,
                child: Icon(Icons.arrow_circle_right_outlined),
              ),
              SizedBox(height: 24),
              Column(
                children: [
                  Center(
                    child: TextButton(
                      onPressed: _onTapForgotPasswordButton,
                      child: Text("Forgot Password"),
                    ),
                  ),
                  //  SizedBox(height: 5),
                  RichText(
                    text: TextSpan(
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                      ),
                      text: "Don't have an account?",
                      children: [
                        TextSpan(
                          style: TextStyle(color: Colors.green),
                          text: "Sign Up",
                          recognizer: TapGestureRecognizer()
                            ..onTap = _onTabSignUpButton,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _onTabSignInButton() {}
  void _onTapForgotPasswordButton() {}
  void _onTabSignUpButton() {
    Navigator.pushNamed(context,SignUpScreen.name);
  }
}
