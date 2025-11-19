import 'package:flutter/material.dart';
import 'package:pbp_django_auth/pbp_django_auth.dart';
import 'package:provider/provider.dart';
import 'package:fantasy_shop_mobile/models/item_list.dart';
import 'package:fantasy_shop_mobile/widgets/item_entry_card.dart';
import 'package:fantasy_shop_mobile/screens/item_detail.dart';

class MyProductPage extends StatefulWidget {
  const MyProductPage({super.key});

  @override
  State<MyProductPage> createState() => _MyProductPageState();
}

class _MyProductPageState extends State<MyProductPage> {
  List<ItemEntry> myProducts = [];

  @override
  void initState() {
    super.initState();
    fetchMyProducts();
  }

  Future<void> fetchMyProducts() async {
    final request = context.read<CookieRequest>();

    final response = await request.get(
      "https://dylan-pirade-fantasyshop.pbp.cs.ui.ac.id/json/?filter=my",
    );

    if (mounted) {
      setState(() {
        myProducts = response
            .map<ItemEntry>((json) => ItemEntry.fromJson(json))
            .toList();
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("My Products")),

      body: ListView.builder(
        itemCount: myProducts.length,
        itemBuilder: (context, index) {
          final item = myProducts[index];

          return ItemEntryCard(
            item: item,
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => ItemDetailPage(item: item)),
              );
            },
          );
        },
      ),
    );
  }
}
