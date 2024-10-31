import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:supermarket/Core/enums/screen_status.dart';
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<HomeBloc, HomeState>(
        builder: (context, state) {
          // Check the cartItemsStatus for loading state
          if (state.cartItemsStatus == ScreenStatus.loading) {
            return const Center(child: CircularProgressIndicator());
          }
          // Check if cartItems have been loaded successfully
          else if (state.cartItemsStatus == ScreenStatus.success) {
            final cartItems = state.cartItems ?? [];

            if (cartItems.isEmpty) {
              return const Center(child: Text('Your cart is empty.'));
            }

            return ListView.builder(
              itemCount: cartItems.length,
              itemBuilder: (context, index) {
                final item = cartItems[index];
                return CartItemTile(cartItem: item);
              },
            );
          }
          // Check if there was a failure in loading cart items
          else if (state.cartItemsStatus == ScreenStatus.failure) {
            return Center(
                child: Text('Error: ${state.cartItemsFailures?.message}'));
          }

          // Fallback message if no specific state is handled
          return const Center(child: Text('No cart data available.'));
        },
      ),
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
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Price: ${cartItem.price} EGP'),
            Text('Quantity: ${cartItem.quantity}'),
            Text(
                'Total: ${(cartItem.price * cartItem.quantity).toStringAsFixed(2)} EGP'),
          ],
        ),
      ),
    );
  }
}
