import 'package:flutter/material.dart';
import 'package:supermarket/Features/Auth/Presentation/Views/Widgets/sign_up_view/widgets/sign_up_view_body.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SignUpViewBody(),
    );
  }
}
