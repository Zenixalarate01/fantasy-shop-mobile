import 'package:flutter/material.dart';
import 'package:fantasy_shop_mobile/models/item_list.dart';

class ItemEntryCard extends StatelessWidget {
  final ItemEntry item;
  final VoidCallback onTap;

  const ItemEntryCard({super.key, required this.item, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      child: InkWell(
        onTap: onTap,
        child: Card(
          color: const Color.fromARGB(120, 223, 148, 255),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8.0),
            side: BorderSide(color: Colors.grey.shade300),
          ),
          elevation: 2,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(6),
                  child: Image.network(
                    'https://dylan-pirade-fantasyshop.pbp.cs.ui.ac.id/proxy-image/?url=${Uri.encodeComponent(item.thumbnail)}',
                    height: 150,
                    width: double.infinity,
                    fit: BoxFit.cover,
                    errorBuilder: (context, error, stackTrace) => Container(
                      height: 150,
                      color: Colors.grey[300],
                      child: const Center(child: Icon(Icons.broken_image)),
                    ),
                  ),
                ),

                const SizedBox(height: 8),

                // Item Name
                Text(
                  item.name,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                const SizedBox(height: 6),

                // Category
                Text("Category: ${item.categoryDisplay}"),

                const SizedBox(height: 6),

                // Description preview
                Text(
                  item.description.length > 100
                      ? "${item.description.substring(0, 100)}..."
                      : item.description,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(color: Colors.black54),
                ),

                const SizedBox(height: 6),

                // Featured indicator
                if (item.isFeatured)
                  const Text(
                    "Featured Item",
                    style: TextStyle(
                      color: Colors.amber,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                const SizedBox(height: 6),

                // Price
                Text(
                  "Price: ${item.price}",
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.green,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
