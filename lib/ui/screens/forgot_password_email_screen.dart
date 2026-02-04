import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:task_manager_app/ui/widgets/screen_background.dart';

import 'forgot_password_verify_otp_screen.dart';

class ForgotPasswordEmailScreen extends StatefulWidget {
  const ForgotPasswordEmailScreen({super.key});
  static const String name = '/ForgotPasswordEmailScreen';

  @override
  State<ForgotPasswordEmailScreen> createState() =>
      _ForgotPasswordEmailScreenState();
}

class _ForgotPasswordEmailScreenState extends State<ForgotPasswordEmailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(34),
        child: ScreenBackground(
          child: Column(
            crossAxisAlignment: .start,
            spacing: 8,
            children: [
              SizedBox(height: 70),
              Text(
                "Your Email Addrees",
                style: Theme.of(context).textTheme.titleLarge,
              ),
              Text(
                "A 6 digits verification OTP will be sent to Your email address",
                style: Theme.of(context).textTheme.labelMedium,
              ),
              SizedBox(height: 8),
              TextFormField(
                decoration: InputDecoration(
                  hintText: "Email",
                  suffixIcon: Icon(Icons.email),
                ),
              ),
              SizedBox(height: 8),

              FilledButton(
                onPressed: _onTapSubmitButton,
                child: Icon(Icons.arrow_circle_right_outlined),
              ),
              SizedBox(height: 24),
              Center(
                child: RichText(
                  text: TextSpan(
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                      fontSize: 15,

                    ),
                    text: "Have an account?",
                    children: [
                      TextSpan(
                        style: TextStyle(color: Colors.green),
                        text: "Sign In",
                        recognizer: TapGestureRecognizer()..onTap = _onTapSignInButton,
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
  void _onTapSignInButton(){
    Navigator.pop(context);
  }
  void _onTapSubmitButton(){
    Navigator.pushNamed(context,ForgotPasswordVerifyOtpScreen.name);
  }

}
