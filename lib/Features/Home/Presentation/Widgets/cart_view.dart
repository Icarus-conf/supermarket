import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:supermarket/Core/enums/screen_status.dart';
import 'package:supermarket/Core/utils/app_colors.dart';
import 'package:supermarket/Core/utils/app_text_style.dart';
import 'package:supermarket/Features/Home/Data/models/cart_model.dart';
import 'package:supermarket/Features/Home/Presentation/Bloc/home_bloc.dart';

class CartView extends StatefulWidget {
  const CartView({super.key});

  @override
  State<CartView> createState() => _CartViewState();
}

class _CartViewState extends State<CartView> {
  @override
  void initState() {
    super.initState();
    context.read<HomeBloc>().add(const FetchCartItems());
  }

  double _calculateTotalAmount(List<CartItem> cartItems) {
    return cartItems.fold(0, (sum, item) => sum + (item.price * item.quantity));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<HomeBloc, HomeState>(
        builder: (context, state) {
          if (state.cartItemsStatus == ScreenStatus.loading) {
            return const Center(child: CircularProgressIndicator());
          } else if (state.cartItemsStatus == ScreenStatus.success) {
            final cartItems = state.cartItems ?? [];

            if (cartItems.isEmpty) {
              return const Center(child: Text('Your cart is empty.'));
            }

            final totalAmount = _calculateTotalAmount(cartItems);

            return Column(
              children: [
                const Gap(20),
                Expanded(
                  child: ListView.builder(
                    itemCount: cartItems.length,
                    itemBuilder: (context, index) {
                      final item = cartItems[index];
                      return Container(
                        margin: const EdgeInsets.symmetric(
                            horizontal: 16, vertical: 8),
                        padding: const EdgeInsets.all(16),
                        decoration: BoxDecoration(
                          gradient: AppColors.gradColor,
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Image.asset(
                                  item.imageUrl,
                                  width: 100,
                                  height: 80,
                                ),
                                const SizedBox(
                                  width: 12,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      item.name,
                                      style: AppTextStyle.textStyle16.copyWith(
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                    Row(
                                      children: [
                                        const Text(
                                          "Total Quantity:",
                                          style: AppTextStyle.textStyle12,
                                        ),
                                        const SizedBox(
                                          width: 6,
                                        ),
                                        Text(
                                          item.quantity.toString(),
                                          style:
                                              AppTextStyle.textStyle16.copyWith(
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        const Text(
                                          "Total Price:",
                                          style: AppTextStyle.textStyle12,
                                        ),
                                        const SizedBox(
                                          width: 6,
                                        ),
                                        Text(
                                          (item.price * item.quantity)
                                              .toString(),
                                          style:
                                              AppTextStyle.textStyle16.copyWith(
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            IconButton(
                              onPressed: () {
                                context
                                    .read<HomeBloc>()
                                    .add(DeleteFromCart(item.productId));
                              },
                              icon: SvgPicture.asset(
                                "assets/delete.svg",
                                width: 30,
                                color: const Color.fromARGB(255, 94, 120, 103),
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: ElevatedButton(
                    onPressed: () {
                      _showPaymentDialog(context, totalAmount);
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black,
                      padding: const EdgeInsets.symmetric(vertical: 16.0),
                      minimumSize: const Size(double.infinity, 50),
                    ),
                    child: Text(
                      'Pay $totalAmount EGP',
                      style: AppTextStyle.textStyle16.copyWith(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            );
          } else if (state.cartItemsStatus == ScreenStatus.failure) {
            return Center(
              child: Text('Error: ${state.cartItemsFailures?.message}'),
            );
          }

          return const Center(child: Text('No cart data available.'));
        },
      ),
    );
  }

  void _showPaymentDialog(BuildContext context, double totalAmount) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text('Confirm Payment'),
          content: Text(
              'The total amount is $totalAmount EGP. Do you want to proceed?'),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: const Text('Cancel'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Payment successful!')),
                );
              },
              child: const Text('Pay Now'),
            ),
          ],
        );
      },
    );
  }
}

class CartItemTile extends StatelessWidget {
  final CartItem cartItem;

  const CartItemTile({super.key, required this.cartItem});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: ListTile(
        leading: Image.asset(cartItem.imageUrl,
            width: 50, height: 50, fit: BoxFit.cover),
        title: Text(
          cartItem.name,
          style: AppTextStyle.textStyle16.copyWith(fontWeight: FontWeight.bold),
        ),
        subtitle: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Price: ${cartItem.price} EGP'),
                Text('Quantity: ${cartItem.quantity}'),
                Text(
                    'Total: ${(cartItem.price * cartItem.quantity).toStringAsFixed(2)} EGP'),
              ],
            ),
            IconButton(
                icon: const Icon(Icons.delete),
                onPressed: () {
                  context
                      .read<HomeBloc>()
                      .add(DeleteFromCart(cartItem.productId));
                }),
          ],
        ),
      ),
    );
  }
}
