import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:supermarket/Config/routes/app_routes.dart';
import 'package:supermarket/Core/utils/app_colors.dart';
import 'package:supermarket/Core/utils/app_text_style.dart';
import 'package:supermarket/Core/utils/services/location_service.dart';
import 'package:supermarket/Features/Auth/Presentation/Views/Bloc/auth_bloc.dart';
import 'package:supermarket/Features/Home/Presentation/Widgets/category_model.dart';
import 'package:supermarket/Features/Home/Presentation/Widgets/products_grid_view.dart';

class HomeViewBody extends StatefulWidget {
  const HomeViewBody({super.key});

  @override
  State<HomeViewBody> createState() => _HomeViewBodyState();
}

class _HomeViewBodyState extends State<HomeViewBody> {
  void _logout(BuildContext context) {
    // Trigger logout event in your Auth Bloc or Provider
    context.read<AuthBloc>().add(const LogoutUser());
    // Navigate back to sign-in screen
    Navigator.of(context).pushReplacementNamed(RoutesNames.signInView);
  }

  String location = 'Fetching location...';

  void fetchLocation() async {
    LocationService locationService = LocationService();
    String fetchedLocation = await locationService.getCityAndCountry();
    setState(() {
      location = fetchedLocation;
    });
  }

  @override
  void initState() {
    fetchLocation();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.sizeOf(context).height;
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const Gap(16),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    icon: const Icon(Icons.logout),
                    onPressed: () => _logout(context),
                  ),
                  Column(
                    children: [
                      const Row(
                        children: [
                          Text(
                            "Deliver Now",
                            style: AppTextStyle.textStyle12,
                          ),
                          Icon(Icons.arrow_drop_down_outlined),
                        ],
                      ),
                      Text(
                        location,
                        style: AppTextStyle.textStyle12.copyWith(
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                  const Gap(16),
                ],
              ),
              const Gap(16),
              SizedBox(
                height: height * 0.15,
                child: Swiper(
                  itemBuilder: (BuildContext context, int index) {
                    return Image.network(
                      "https://via.placeholder.com/350x150",
                      fit: BoxFit.fill,
                    );
                  },
                  itemCount: 10,
                  viewportFraction: 0.8,
                  scale: 0.9,
                ),
              ),
              const Gap(20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Categories",
                    style: AppTextStyle.textStyle14.copyWith(
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      "View all",
                      style: AppTextStyle.textStyle12.copyWith(
                        fontWeight: FontWeight.w600,
                        color: AppColors.primaryColor,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: height * 0.12,
                child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 4,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                  ),
                  itemCount: categories.length,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        Container(
                          height: 70,
                          width: 100,
                          decoration: BoxDecoration(
                            gradient: AppColors.gradColor,
                            borderRadius: BorderRadius.circular(16),
                          ),
                          child: Image.asset(
                            categories[index].imageUrl,
                          ),
                        ),
                        Text(
                          categories[index].name,
                          style: AppTextStyle.textStyle12.copyWith(
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    );
                  },
                ),
              ),
              const Gap(16),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Recommended for you",
                    style: AppTextStyle.textStyle14.copyWith(
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      "View all",
                      style: AppTextStyle.textStyle12.copyWith(
                        fontWeight: FontWeight.w600,
                        color: AppColors.primaryColor,
                      ),
                    ),
                  ),
                ],
              ),
              const Gap(16),
              const ProductsGridView(),
            ],
          ),
        ),
      ),
    );
  }
}
