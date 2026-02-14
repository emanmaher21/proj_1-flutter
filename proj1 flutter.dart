import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: const Text(
            "Product Gallery",
            style: TextStyle(
              color: Colors.white,
              fontSize: 20.0,
            ),
          ),
          backgroundColor: Colors.blue,
          leading: Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
          actions: [
            Icon(
              Icons.shopping_cart,
              color: Colors.white,
            )
          ],
        ),
        body: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.network(
                fit: BoxFit.fill,
                "https://cdn.mos.cms.futurecdn.net/8EH5WexwtVCryqxpWX8X8m.jpg",
                width: 400,
                height: 400,
              ),
              Text("Apple AirPods Pro ",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black)),
              Text("Price: \$200",
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
              Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                IconButton(
                  icon: Icon(Icons.favorite),
                  color: Colors.red,
                  onPressed: () {},
                  style: IconButton.styleFrom(backgroundColor: Colors.blue),
                ),
                SizedBox(width: 12),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
                  child: Text("Add to Cart",
                      style: TextStyle(color: Colors.black, fontSize: 20)),
                ),
                SizedBox(width: 12),
                TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(backgroundColor: Colors.blue),
                  child: Text(
                    "Reset",
                    style: TextStyle(color: Colors.black, fontSize: 20),
                  ),
                )
              ]),
              Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(backgroundColor: Colors.purple),
                    child: Text(
                      "new",
                      style: TextStyle(color: Colors.black),
                    )),
                SizedBox(width: 12),
                TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(backgroundColor: Colors.red),
                    child: Text(
                      "discound",
                      style: TextStyle(color: Colors.black),
                    )),
                SizedBox(width: 12),
                TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(backgroundColor: Colors.green),
                    child: Text(
                      "Hot",
                      style: TextStyle(color: Colors.black),
                    )),
                SizedBox(width: 12),
                TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(backgroundColor: Colors.grey),
                    child: Text(
                      "popular",
                      style: TextStyle(color: Colors.black),
                    )),
              ]),
              _buildSecondaryProduct("Smartwatch",
                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQbxYUW8QNhTsptxLwNTbZjoXKskud7qD8NAQ&s"),
              _buildSecondaryProduct("Digital Camera",
                  "https://cdn.media.amplience.net/i/canon/powershot-g7-x_frt_93b7a04fd1f149fbbb5cbbc8896c7456"),
              _buildSecondaryProduct("Running Shoes",
                  "https://www.campusshoes.com/cdn/shop/files/VESPER_VESPER_WHT-MILKY_BLU_07.webp?v=1758174807"),
            ],
          ),
        ),
      ),
    );
  }

  // دالة بناء الوسم (Tag)
  Widget _buildTag(String label, Color color) {
    return Chip(
      label: Text(label,
          style: const TextStyle(color: Colors.white, fontSize: 12)),
      backgroundColor: color,
    );
  }

  Widget _buildSecondaryProduct(String name, String imageUrl) {
    return Card(
      margin: const EdgeInsets.only(bottom: 8),
      child: ListTile(
        leading:
            Image.network(imageUrl, width: 50, height: 50, fit: BoxFit.cover),
        title: Text(name),
        trailing: ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
          child: const Text("Buy", style: TextStyle(color: Colors.white)),
        ),
      ),
    );
  }
}
