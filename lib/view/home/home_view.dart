import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:grocery_ui/assets/animations/animation_asset.dart';
import 'package:grocery_ui/res/utils/grocery_list.dart';
import 'package:grocery_ui/view/cart/cart_view.dart';
import 'package:grocery_ui/viewmodel/home/home_viewmodel.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';
import 'package:badges/badges.dart' as badges;

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final homeProvider = Provider.of<HomeViewmodel>(context, listen: false);
    return Consumer<HomeViewmodel>(
      builder: (context, groceryItem, child) => Scaffold(
        appBar: AppBar(
          title: const Text("Grocery"),
          actions: [
            badges.Badge(
              badgeContent: Text(
                groceryItem.cartGrocery.length.toString(),
                style: theme.textTheme.labelLarge!.copyWith(
                  color: theme.colorScheme.onPrimary,
                ),
              ),
              badgeStyle: badges.BadgeStyle(
                badgeColor: theme.colorScheme.primary,
              ),
              badgeAnimation: const badges.BadgeAnimation.scale(),
              child: IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const CartView(),
                    ),
                  );
                },
                icon: const Icon(Icons.shopping_cart),
              ),
            ),
            const Gap(15),
          ],
        ),
        body: GridView.builder(
          shrinkWrap: true,
          itemCount: groceryList.length,
          padding: const EdgeInsets.all(16),
          gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 200,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            mainAxisExtent: 230,
          ),
          itemBuilder: (context, index) {
            final data = groceryList[index];
            return Card(
              child: Container(
                padding: const EdgeInsets.all(8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset(
                      data.imageUrl,
                      width: 150,
                      height: 150,
                      fit: BoxFit.contain,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: 60,
                              child: Text(
                                data.groceryName,
                                style: theme.textTheme.bodyLarge!.copyWith(
                                  color: theme.colorScheme.onSurface,
                                  fontWeight: FontWeight.bold,
                                ),
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                            Text(
                              "₹${data.price}",
                              style: theme.textTheme.labelLarge!.copyWith(
                                color: theme.colorScheme.onSurface,
                              ),
                            ),
                          ],
                        ),
                        IconButton(
                          onPressed: () {
                            if (!groceryItem.cartGrocery.contains(data)) {
                              homeProvider.addToCart(data,context);
                            }
                          },
                          icon: groceryItem.cartGrocery.contains(data)
                              ? Lottie.asset(
                                  AnimationAsset.addedToCart,
                                  width: 30,
                                  height: 30,
                                  repeat: false,
                                )
                              : Icon(
                                  Icons.add_shopping_cart,
                                  color: theme.colorScheme.secondary,
                                ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
