import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:supermarket/Core/enums/screen_status.dart';
import 'package:supermarket/Core/utils/app_colors.dart';
import 'package:supermarket/Core/utils/app_text_style.dart';
import 'package:supermarket/Features/Home/Data/models/cart_model.dart';
import 'package:supermarket/Features/Home/Presentation/Bloc/home_bloc.dart';

class ProductsGridView extends StatefulWidget {
  const ProductsGridView({super.key});

  @override
  State<ProductsGridView> createState() => _ProductsGridViewState();
}

class _ProductsGridViewState extends State<ProductsGridView> {
  @override
  void initState() {
    super.initState();
    context.read<HomeBloc>().add(const FetchProducts());
  }

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return BlocBuilder<HomeBloc, HomeState>(
      builder: (context, state) {
        // Handle loading state for products
        if (state.productsStatus == ScreenStatus.loading) {
          return const Center(child: CircularProgressIndicator());
        }
        // Handle success state for loaded products
        else if (state.productsStatus == ScreenStatus.success) {
          return GridView.builder(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              childAspectRatio: 4 / 6,
            ),
            itemCount: state.products?.length ?? 0,
            itemBuilder: (context, index) {
              var product = state.products![index];
              final userId = FirebaseAuth.instance.currentUser?.uid;

              log(product.toString());
              log(userId ?? '');

              return SizedBox(
                width: width * 0.4,
                height: height * 0.3,
                child: Column(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        gradient: AppColors.gradColor,
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(16),
                          topRight: Radius.circular(16),
                        ),
                      ),
                      child: Image.asset(
                        product.imageUrl,
                        width: width * 0.4,
                        height: height * 0.1,
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 12,
                        vertical: 8,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.grey[100],
                        borderRadius: const BorderRadius.only(
                          bottomLeft: Radius.circular(16),
                          bottomRight: Radius.circular(16),
                        ),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            product.name,
                            style: AppTextStyle.textStyle14.copyWith(
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Text(
                            '${product.price} EGP',
                            style: AppTextStyle.textStyle14.copyWith(
                              fontWeight: FontWeight.w600,
                              color: Colors.black,
                            ),
                          ),
                          Row(
                            children: [
                              IconButton(
                                icon: const Icon(Icons.remove),
                                onPressed: () {
                                  if (product.quantity > 1) {
                                    BlocProvider.of<HomeBloc>(context).add(
                                      UpdateQuantity(
                                        product.id,
                                        product.quantity - 1,
                                      ),
                                    );
                                  }
                                },
                              ),
                              Text(
                                product.quantity.toString(),
                                style: AppTextStyle.textStyle14.copyWith(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              IconButton(
                                icon: const Icon(Icons.add),
                                onPressed: () {
                                  BlocProvider.of<HomeBloc>(context).add(
                                    UpdateQuantity(
                                      product.id,
                                      product.quantity + 1,
                                    ),
                                  );
                                },
                              ),
                            ],
                          ),
                          ElevatedButton(
                            onPressed: () {
                              BlocProvider.of<HomeBloc>(context).add(
                                AddToCart(CartItem(
                                  userId: userId ?? '',
                                  productId: product.id,
                                  name: product.name,
                                  price: product.price,
                                  imageUrl: product.imageUrl,
                                  quantity: product.quantity,
                                )),
                              );
                            },
                            child: const Text('Add to Cart'),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              );
            },
          );
        }
        // Handle failure state
        else if (state.productsStatus == ScreenStatus.failure) {
          return Center(
              child: Text('Error: ${state.productsFailures?.message}'));
        }

        // Fallback message if no specific state is handled
        return const Center(child: Text("No products available."));
      },
    );
  }
}
