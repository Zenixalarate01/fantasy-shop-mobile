import 'package:flutter/material.dart';
import 'package:fantasy_shop_mobile/models/item_list.dart';
import 'package:fantasy_shop_mobile/widgets/main_drawer.dart';
import 'package:fantasy_shop_mobile/screens/item_detail.dart';
import 'package:fantasy_shop_mobile/widgets/item_entry_card.dart';
import 'package:provider/provider.dart';
import 'package:pbp_django_auth/pbp_django_auth.dart';

class ItemEntryListPage extends StatefulWidget {
  final int? filterUserId;

  const ItemEntryListPage({super.key, this.filterUserId});

  @override
  State<ItemEntryListPage> createState() => _ItemEntryListPage();
}

class _ItemEntryListPage extends State<ItemEntryListPage> {
  Future<List<ItemEntry>> fetchItem(CookieRequest request) async {
    final response = await request.get(
      'https://dylan-pirade-fantasyshop.pbp.cs.ui.ac.id/json/',
    );
    print(response);

    List<ItemEntry> listItem = response
        .map<ItemEntry>((d) => ItemEntry.fromJson(d))
        .toList();

    // Apply user filter if provided
    if (widget.filterUserId != null) {
      listItem = listItem
          .where((item) => item.userId == widget.filterUserId)
          .toList();
    }

    return listItem;
  }

  @override
  Widget build(BuildContext context) {
    final request = context.watch<CookieRequest>();

    return Scaffold(
      appBar: AppBar(title: const Text('Item List')),
      drawer: const MainDrawer(),
      body: FutureBuilder(
        future: fetchItem(request),
        builder: (context, AsyncSnapshot snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          }

          if (!snapshot.hasData || snapshot.data.isEmpty) {
            return const Center(
              child: Text(
                'There are no items to display.',
                style: TextStyle(fontSize: 18),
              ),
            );
          }

          final items = snapshot.data;

          return ListView.builder(
            itemCount: items.length,
            itemBuilder: (_, index) => ItemEntryCard(
              item: items[index],
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ItemDetailPage(item: items[index]),
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}
