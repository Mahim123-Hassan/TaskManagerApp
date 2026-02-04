import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});
  static const String name = '/SignUpScreen ';

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(34),
        child: Column(
          crossAxisAlignment: .start,
          spacing: 8,
          children: [
            SizedBox(height: 70),
            Text(
              "Join With Us",
              style: Theme.of(context).textTheme.titleLarge,
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
                hintText: "First Name",
                suffixIcon: Icon(Icons.person),
              ),
            ),
            TextFormField(
              decoration: InputDecoration(
                hintText: "Last Name",
                suffixIcon: Icon(Icons.person),
              ),
            ),
            TextFormField(
              decoration: InputDecoration(
                hintText: "Mobile",
                suffixIcon: Icon(Icons.phone),
              ),
            ),
            TextFormField(
              decoration: InputDecoration(
                hintText: "Password",
                suffixIcon: Icon(Icons.password),
              ),
            ),
            SizedBox(height: 8),
            FilledButton(
              onPressed: _onTapSignUpButton,
              child: Icon(Icons.arrow_circle_right_outlined),
            ),
            SizedBox(height: 24),
            Center(
              child: RichText(
                text: TextSpan(
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                  ),
                  text: "Already have an account?",
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
    );
  }
void _onTapSignInButton(){
    Navigator.pop(context);
}

  void _onTapSignUpButton(){}

}
