import 'package:flutter/material.dart';
import 'package:grocery_ui/res/utils/grocery_list.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Grocery"),
      ),
      body: GridView.builder(
          itemCount: groceryList.length,
          padding: const EdgeInsets.all(16),
          gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 200,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            mainAxisExtent: 250,
          ),
          itemBuilder: (context, index) {
            final data = groceryList[index];
            return Card(
              child: Container(
                padding: const EdgeInsets.all(8),
                child: Column(
                  children: [
                    Image.asset(data.imageUrl),
                    Text(data.groceryName),
                    const Text("data"),
                    const Text("data"),
                  ],
                ),
              ),
            );
          }),
    );
  }
}
