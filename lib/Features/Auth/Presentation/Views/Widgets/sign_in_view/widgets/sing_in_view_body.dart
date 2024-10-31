import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:lottie/lottie.dart';
import 'package:supermarket/Config/routes/app_routes.dart';
import 'package:supermarket/Core/utils/app_text_style.dart';
import 'package:supermarket/Core/utils/widgets/custom_btn_widget.dart';
import 'package:supermarket/Core/utils/widgets/custom_text_field_widget.dart';
import 'package:supermarket/Features/Auth/Presentation/Views/Bloc/auth_bloc.dart';

class SingInViewBody extends StatelessWidget {
  SingInViewBody({super.key});

  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.sizeOf(context).height;

    return BlocConsumer<AuthBloc, AuthState>(
      listener: (context, state) {
        if (state is AuthFailure) {
          log(state.error);
        }
        if (state is AuthSuccess) {
          log("Successfully signed in");
        }
      },
      builder: (context, state) {
        if (state is AuthLoading) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
        return Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "SuperMarket",
                style: AppTextStyle.textStyle24.copyWith(
                  fontWeight: FontWeight.w900,
                ),
              ),
              Lottie.asset(
                "assets/lottie/logo.json",
                height: height * 0.3,
              ),
              CustomTextFormField(
                controller: emailController,
                hintText: "Enter your email",
              ),
              const Gap(16),
              CustomTextFormField(
                controller: passwordController,
                hintText: "Enter your password",
              ),
              const Gap(16),
              CustomBtn(
                text: "Sign In",
                onPressed: () {
                  BlocProvider.of<AuthBloc>(context).add(AuthEvent.loginUser(
                      emailController.text, passwordController.text));
                },
              ),
              const Gap(8),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Already have an account?",
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, RoutesNames.signUpView);
                    },
                    child: const Text("Sign Up"),
                  ),
                ],
              ),
              const Gap(16),
              TextButton(
                onPressed: () {},
                child: const Text("Terms and conditions"),
              ),
            ],
          ),
        );
      },
    );
  }
}
