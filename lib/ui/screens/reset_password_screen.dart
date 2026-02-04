import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:task_manager_app/ui/screens/sign_in_screen.dart';
import 'package:task_manager_app/ui/widgets/screen_background.dart';

class ResetPasswordScreen extends StatefulWidget {
  const ResetPasswordScreen({super.key});
  static const String name = "/ ResetPasswordScreen";

  @override
  State<ResetPasswordScreen> createState() => _ResetPasswordScreenState();
}

class _ResetPasswordScreenState extends State<ResetPasswordScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ScreenBackground(
        child: Padding(
          padding: const EdgeInsets.all(34),
          child: Column(
            spacing: 8,
            crossAxisAlignment: .start,
            children: [
              SizedBox(height: 70),
              Text(
                "Reset Password",
                style: Theme.of(context).textTheme.titleLarge,
              ),
              Text("Minimum length of Password should more than 8 letters"),
              SizedBox(height: 8),
              TextFormField(
                decoration: InputDecoration(
                  hintText: "New Password",
                  suffixIcon: Icon(Icons.lock),
                ),
              ),
              TextFormField(
                decoration: InputDecoration(
                  hintText: "Confirm Password",
                  suffixIcon: Icon(Icons.lock),
                ),
              ),
              SizedBox(),
              FilledButton(
                onPressed: _onTapSubmitButton,
                child: Icon(Icons.arrow_circle_right_outlined),
              ),
              SizedBox(height: 24),
              Center(
                child: RichText(
                  text: TextSpan(
                    style: TextStyle(color: Colors.black),
                    text: "Have an account?",
                    children: [
                      TextSpan(
                        style: TextStyle(color: Colors.green),
                        text: "Sign in",
                        recognizer: TapGestureRecognizer()
                          ..onTap = _onTapSignInButton,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _onTapSignInButton() {
    Navigator.pushNamedAndRemoveUntil(
      context,
      SignInScreen.name,
      (protected) => false,
    );
  }

  void _onTapSubmitButton() {
    Navigator.pushNamed(context, ResetPasswordScreen.name);
  }
}
