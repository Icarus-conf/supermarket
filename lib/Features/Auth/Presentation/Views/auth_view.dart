import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:supermarket/Features/Auth/Presentation/Views/Bloc/auth_bloc.dart';
import 'package:supermarket/Features/Auth/Presentation/Views/Widgets/sign_in_view/sign_in_view.dart';
import 'package:supermarket/Features/Home/Presentation/Views/home_view.dart';

class AuthView extends StatefulWidget {
  const AuthView({super.key});

  @override
  State<AuthView> createState() => _AuthViewState();
}

class _AuthViewState extends State<AuthView> {
  @override
  void initState() {
    BlocProvider.of<AuthBloc>(context).add(const AuthEvent.checkAutoLogin());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthBloc, AuthState>(
      builder: (context, state) {
        if (state is AuthLoading) {
          return const Scaffold(
              body: Center(child: CircularProgressIndicator()));
        } else if (state is AuthSuccess) {
          return const HomeView();
        } else {
          return const SignInView();
        }
      },
    );
  }
}
