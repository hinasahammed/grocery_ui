import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:grocery_ui/assets/animations/animation_asset.dart';
import 'package:grocery_ui/viewmodel/cart/cart_viewmodel.dart';
import 'package:grocery_ui/viewmodel/home/home_viewmodel.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';

class CartView extends StatelessWidget {
  const CartView({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final homeProvider = Provider.of<HomeViewmodel>(context, listen: false);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Cart"),
      ),
      body: Consumer<HomeViewmodel>(
          builder: (BuildContext context, list, Widget? child) {
        if (list.cartGrocery.isEmpty || list.cartGrocery == []) {
          return Center(
            child: Lottie.asset(
              AnimationAsset.noCartItem,
            ),
          );
        } else {
          return Column(
            children: [
              Expanded(
                child: ListView.builder(
                  shrinkWrap: true,
                  padding: const EdgeInsets.all(16),
                  itemCount: list.cartGrocery.length,
                  itemBuilder: (context, index) {
                    final data = list.cartGrocery[index];
                    return Card(
                      child: Container(
                        padding: const EdgeInsets.all(8),
                        child: Row(
                          children: [
                            Image.asset(
                              data.imageUrl,
                              width: 80,
                              height: 80,
                            ),
                            const Gap(20),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  data.groceryName,
                                  style: theme.textTheme.bodyLarge!.copyWith(
                                    color: theme.colorScheme.onSurface,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  "₹${data.price}",
                                  style: theme.textTheme.bodyLarge!.copyWith(
                                    color: theme.colorScheme.onSurface,
                                  ),
                                )
                              ],
                            ),
                            const Spacer(),
                            IconButton(
                              onPressed: () {
                                homeProvider.removeFromCart(data,context);
                              },
                              icon: Icon(
                                Icons.delete,
                                color: theme.colorScheme.error,
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
              Consumer<CartViewmodel>(
                builder: (context, cart, child) => Container(
                  padding: const EdgeInsets.all(16),
                  width: double.infinity,
                  height: 80,
                  decoration: BoxDecoration(
                    color: theme.colorScheme.primaryContainer,
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(15),
                      topRight: Radius.circular(15),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Total",
                        style: theme.textTheme.bodyLarge!.copyWith(
                          color: theme.colorScheme.onPrimaryContainer,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "₹${cart.total}",
                        style: theme.textTheme.labelLarge!.copyWith(
                          color: theme.colorScheme.onPrimaryContainer,
                          fontWeight: FontWeight.bold,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          );
        }
      }),
    );
  }
}
