import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:supermarket/Core/enums/screen_status.dart';
import 'package:supermarket/Core/utils/app_colors.dart';
import 'package:supermarket/Core/utils/app_text_style.dart';
import 'package:supermarket/Features/Home/Data/models/cart_model.dart';
import 'package:supermarket/Features/Home/Data/models/product_model.dart';
import 'package:supermarket/Features/Home/Presentation/Bloc/home_bloc.dart';

class ProductDetailView extends StatefulWidget {
  const ProductDetailView({super.key, required this.product});

  final ProductModel product;

  @override
  State<ProductDetailView> createState() => _ProductDetailViewState();
}

class _ProductDetailViewState extends State<ProductDetailView> {
  late int quantity;

  @override
  void initState() {
    super.initState();
    quantity = widget.product.quantity;
  }

  void _incrementQuantity() {
    setState(() {
      quantity++;
    });
    BlocProvider.of<HomeBloc>(context).add(
      UpdateQuantity(widget.product.id, quantity),
    );
  }

  void _decrementQuantity() {
    if (quantity > 1) {
      setState(() {
        quantity--;
      });
      BlocProvider.of<HomeBloc>(context).add(
        UpdateQuantity(widget.product.id, quantity),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.sizeOf(context).width;
    var height = MediaQuery.sizeOf(context).height;

    return BlocBuilder<HomeBloc, HomeState>(
      builder: (context, state) {
        if (state.productsStatus == ScreenStatus.loading) {
          return const Center(child: CircularProgressIndicator());
        }
        if (state.productsStatus == ScreenStatus.failure) {
          return Center(
              child: Text('Error: ${state.productsFailures?.message}'));
        }
        final userId = FirebaseAuth.instance.currentUser?.uid;

        return Scaffold(
          body: Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              gradient: AppColors.gradColor,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(height: 70),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        color: const Color(0xFF64DF8F),
                      ),
                      child: IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: const Icon(Icons.arrow_back_ios_new),
                      ),
                    ),
                    Text(
                      widget.product.name,
                      style: AppTextStyle.textStyle24.copyWith(
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                    const SizedBox(width: 40),
                  ],
                ),
                const SizedBox(height: 25),
                Image.asset(
                  widget.product.imageUrl,
                  width: width * 0.8,
                  height: height * 0.4,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.grey[400],
                            borderRadius: BorderRadius.circular(16),
                          ),
                          child: IconButton(
                            icon: const Icon(
                              Icons.remove,
                              size: 15,
                            ),
                            onPressed: _decrementQuantity,
                          ),
                        ),
                        const SizedBox(
                          width: 16,
                        ),
                        Text(
                          quantity.toString(),
                          style: AppTextStyle.textStyle16.copyWith(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(
                          width: 16,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.grey[400],
                            borderRadius: BorderRadius.circular(16),
                          ),
                          child: IconButton(
                            icon: const Icon(
                              Icons.add,
                              size: 15,
                            ),
                            onPressed: _incrementQuantity,
                          ),
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Price",
                          style: AppTextStyle.textStyle18.copyWith(
                            fontWeight: FontWeight.w100,
                          ),
                        ),
                        Text(
                          "${widget.product.price} EG",
                          style: AppTextStyle.textStyle20.copyWith(
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                const Spacer(),
                Container(
                  padding: const EdgeInsets.all(16),
                  width: double.infinity,
                  height: height * 0.3,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Product Detail ",
                        style: AppTextStyle.textStyle20.copyWith(
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                      const SizedBox(height: 8),
                      Text(
                        widget.product.description,
                        style: AppTextStyle.textStyle14.copyWith(
                          fontWeight: FontWeight.w200,
                          color: Colors.grey[400],
                        ),
                      ),
                      const Spacer(),
                      SizedBox(
                        height: 53,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xFF64DF8F),
                          ),
                          onPressed: () {
                            BlocProvider.of<HomeBloc>(context).add(
                              AddToCart(CartItem(
                                userId: userId ?? '',
                                productId: widget.product.id,
                                name: widget.product.name,
                                price: widget.product.price,
                                imageUrl: widget.product.imageUrl,
                                quantity: quantity,
                              )),
                            );
                          },
                          child: Row(
                            children: [
                              const Spacer(),
                              SvgPicture.asset("assets/bag-2.svg"),
                              const SizedBox(width: 8),
                              Text(
                                "ADD TO CART",
                                style: AppTextStyle.textStyle20.copyWith(
                                  color: Colors.black,
                                ),
                              ),
                              const Spacer(),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
