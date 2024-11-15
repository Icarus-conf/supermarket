import 'package:cached_network_image/cached_network_image.dart';
import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
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
    context.read<AuthBloc>().add(const LogoutUser());
    Navigator.of(context).pushReplacementNamed(RoutesNames.signInView);
  }

  String location = 'Fetching location...';
  String? userProfileImageUrl;
  String? userName;

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
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const Gap(16),
              BlocBuilder<AuthBloc, AuthState>(
                builder: (context, state) {
                  if (state is AuthSuccess) {
                    userProfileImageUrl = state.user.imageUrl;
                    userName = state.user.username;
                  }
                  return Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      PopupMenuButton<String>(
                        onSelected: (value) {
                          if (value == 'Logout') {
                            _logout(context);
                          }
                        },
                        itemBuilder: (context) => [
                          const PopupMenuItem(
                            value: 'Logout',
                            child: Text('Logout'),
                          ),
                        ],
                        child: CircleAvatar(
                          backgroundImage: userProfileImageUrl != null
                              ? CachedNetworkImageProvider(userProfileImageUrl!)
                              : const AssetImage("assets/default_avatar.png")
                                  as ImageProvider,
                          radius: 25,
                        ),
                      ),
                      Column(
                        children: [
                          Row(
                            children: [
                              Text(
                                "Welcome back",
                                style: AppTextStyle.textStyle12.copyWith(
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              const SizedBox(
                                width: 6,
                              ),
                              Text(
                                userName ?? '',
                                style: AppTextStyle.textStyle14.copyWith(
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text(
                                location,
                                style: AppTextStyle.textStyle12.copyWith(
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              const SizedBox(
                                width: 6,
                              ),
                              const Icon(
                                FontAwesomeIcons.locationDot,
                              ),
                            ],
                          ),
                        ],
                      ),
                      const Icon(FontAwesomeIcons.solidBell, size: 28),
                    ],
                  );
                },
              ),
              const Gap(16),
              SizedBox(
                height: height * 0.15,
                child: Swiper(
                  itemBuilder: (BuildContext context, int index) {
                    return Image.asset(
                      "assets/images/frame-1.png",
                    );
                  },
                  itemCount: 3,
                  viewportFraction: 1,
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
                child: ListView.separated(
                  separatorBuilder: (context, index) {
                    return const SizedBox(width: 8);
                  },
                  scrollDirection: Axis.horizontal,
                  itemCount: categories.length,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        Container(
                          height: height * 0.08,
                          width: width * 0.19,
                          decoration: BoxDecoration(
                            gradient: AppColors.gradColor,
                            borderRadius: BorderRadius.circular(16),
                          ),
                          child: Image.asset(categories[index].imageUrl),
                        ),
                        Text(
                          categories[index].name,
                          style: AppTextStyle.textStyle10.copyWith(
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
