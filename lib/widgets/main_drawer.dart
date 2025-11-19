import 'package:flutter/material.dart';
import 'package:fantasy_shop_mobile/screens/menu.dart';
import 'package:fantasy_shop_mobile/screens/item_form.dart';
import 'package:fantasy_shop_mobile/screens/item_entry_list.dart';
import 'package:fantasy_shop_mobile/screens/my_product.dart';
import 'package:pbp_django_auth/pbp_django_auth.dart';
import 'package:provider/provider.dart';

class MainDrawer extends StatelessWidget {
  const MainDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    final request = context.watch<CookieRequest>();
    return Drawer(
      child: ListView(
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(color: Color.fromARGB(255, 172, 88, 198)),
            child: Column(
              children: [
                Text(
                  'Fantasy Shop',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                Padding(padding: EdgeInsets.all(10)),
                Text(
                  "Time to win more matches!",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 15, color: Colors.white),
                ),
              ],
            ),
          ),
          ListTile(
            leading: const Icon(Icons.home_outlined),
            title: const Text('Home'),
            // Bagian redirection ke MyHomePage
            onTap: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => MyHomePage()),
              );
            },
          ),
          ListTile(
            leading: const Icon(Icons.add_box_outlined),
            title: const Text('Create Product'),
            // Bagian redirection ke NewsFormPage
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const ItemForm()),
              );
            },
          ),
          ListTile(
            leading: const Icon(Icons.business),
            title: const Text('All Products'),
            onTap: () {
              // Route to news list page
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const ItemEntryListPage(),
                ),
              );
            },
          ),
          ListTile(
            leading: const Icon(Icons.add_business),
            title: const Text('My Products'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const MyProductPage()),
              );
            },
          ),
        ],
      ),
    );
  }
}
