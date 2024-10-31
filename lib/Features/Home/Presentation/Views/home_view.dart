import 'package:flutter/material.dart';
import 'package:supermarket/Features/Home/Presentation/Widgets/home_view_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Builder(
      builder: (context) => const Scaffold(
        body: HomeViewBody(),
      ),
    );
  }
}
