import 'dart:developer';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:image_picker/image_picker.dart';
import 'package:supermarket/Config/routes/app_routes.dart';
import 'package:supermarket/Core/utils/app_text_style.dart';
import 'package:supermarket/Core/utils/services/image_service.dart';
import 'package:supermarket/Core/utils/widgets/custom_btn_widget.dart';
import 'package:supermarket/Core/utils/widgets/custom_text_field_widget.dart';
import 'package:supermarket/Features/Auth/Presentation/Views/Bloc/auth_bloc.dart';

class SignUpViewBody extends StatefulWidget {
  const SignUpViewBody({super.key});

  @override
  State<SignUpViewBody> createState() => _SignUpViewBodyState();
}

class _SignUpViewBodyState extends State<SignUpViewBody> {
  final userNameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  File? _image;

  final ImageService _imageService = ImageService();

  Future<void> pickImage() async {
    final XFile? image = await _imageService.pickImage();

    if (image != null) {
      setState(() {
        _image = File(image.path);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthBloc, AuthState>(
      listener: (context, state) {
        if (state is AuthFailure) {
          log(state.error);
        }
        if (state is AuthSuccess) {
          log("Successfully signed up");
          Navigator.pushNamed(context, RoutesNames.signInView);
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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Spacer(),
              Text(
                "Registration form",
                style: AppTextStyle.textStyle18
                    .copyWith(fontWeight: FontWeight.w600),
              ),
              const Gap(50),
              Align(
                alignment: Alignment.center,
                child: Column(
                  children: [
                    CircleAvatar(
                      radius: 50,
                      backgroundImage: _image != null
                          ? FileImage(_image!)
                          : null, // Use FileImage
                      child: _image == null
                          ? const Icon(Icons.camera_alt, size: 50)
                          : null, // Placeholder icon
                    ),
                    TextButton(
                      onPressed: () {
                        pickImage();
                      },
                      child: const Text("Pick your profile image"),
                    ),
                  ],
                ),
              ),
              const Gap(25),
              const Text(
                "Username",
                style: AppTextStyle.textStyle14,
              ),
              CustomTextFormField(
                controller: userNameController,
                hintText: "Enter your username",
              ),
              const Gap(16),
              const Text(
                "Email",
                style: AppTextStyle.textStyle14,
              ),
              CustomTextFormField(
                hintText: "Enter your email",
                controller: emailController,
              ),
              const Gap(16),
              const Text(
                "Password",
                style: AppTextStyle.textStyle14,
              ),
              CustomTextFormField(
                hintText: "Enter your password",
                controller: passwordController,
              ),
              const Spacer(),
              CustomBtn(
                  text: "Sign Up",
                  onPressed: () {
                    BlocProvider.of<AuthBloc>(context).add(
                        AuthEvent.registerUser(
                            emailController.text,
                            passwordController.text,
                            userNameController.text,
                            _image != null ? XFile(_image!.path) : null));
                  }),
              const Spacer(),
            ],
          ),
        );
      },
    );
  }
}
