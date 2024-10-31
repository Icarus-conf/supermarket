import 'package:flutter/material.dart';
import 'package:supermarket/Features/Auth/Presentation/Views/Widgets/sign_in_view/widgets/sing_in_view_body.dart';

class SignInView extends StatelessWidget {
  const SignInView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingInViewBody(),
    );
  }
}
