import 'package:flutter/material.dart';

class MenuPage extends StatefulWidget {
  const MenuPage({super.key});

  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  final Set<int> favoriteItems = {};

  final List<Map<String, String>> menuItems = [
    {
      "name": "Pepperoni Pizza",
      "price": "RM 21.90",
      "rating": "4.7",
      "reviews": "350 reviews",
      "image":
      "https://static.vecteezy.com/system/resources/previews/056/277/117/non_2x/delicious-pepperoni-pizza-with-melted-cheese-photo.jpg",
    },
    {
      "name": "Margherita Magic",
      "price": "RM 18.90",
      "rating": "4.1",
      "reviews": "50 reviews",
      "image":
      "https://tse4.mm.bing.net/th/id/OIP.lZ6nr5W7YLi0bvo9qBkC2QHaHa?r=0&rs=1&pid=ImgDetMain&o=7&rm=3",
    },
    {
      "name": "BBQ Chicken Feast",
      "price": "RM 24.90",
      "rating": "5.0",
      "reviews": "35 reviews",
      "image":
      "https://www.jillianrecipes.com/wp-content/uploads/2025/11/mqvkxixagawjgbfvjpwf.webp",
    },
    {
      "name": "Garlic Pizza",
      "price": "RM 19.90",
      "rating": "4.0",
      "reviews": "30 reviews",
      "image":
      "https://tse1.mm.bing.net/th/id/OIP.SFJj4JL8pJc2UHCm-k14YwHaHa?r=0&rs=1&pid=ImgDetMain&o=7&rm=3",
    },
    {
      "name": "Hawaiian Pizza",
      "price": "RM 20.90",
      "rating": "4.8",
      "reviews": "120 reviews",
      "image":
      "https://hips.hearstapps.com/hmg-prod/images/hawaiian-pizza-secondary-65f4641f046ed.jpg?crop=1xw:1xh;center",
    },
    {
      "name": "Meat Lovers",
      "price": "RM 26.90",
      "rating": "4.9",
      "reviews": "98 reviews",
      "image":
      "https://chasety.com/wp-content/uploads/2024/05/realchasecurtis_Meat_Lovers_Pizza_with_bacon_ham_sausage_and_pe_c9071d5f-b231-4f4d-a7ec-e465238e66b4.png",
    },
    {
      "name": "Cheese Burst",
      "price": "RM 22.90",
      "rating": "4.6",
      "reviews": "175 reviews",
      "image":
      "https://t3.ftcdn.net/jpg/09/62/14/10/360_F_962141033_hgSk2VzHhpYJ17BVix1TjwrxhsF4NGjP.jpg",
    },
    {
      "name": "Seafood Pizza",
      "price": "RM 28.90",
      "rating": "4.8",
      "reviews": "85 reviews",
      "image":
      "https://images.prismic.io/grbhouse/d7155b38-7efa-4230-b8d8-af92221c23db_HSE-AH-seafood-pizza-S.png?auto=compress%2Cformat&w=2000&q=75",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF7F7F7),
      appBar: AppBar(
        backgroundColor: const Color(0xFFE7A694),
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: const Text(
          'Our Menu',
          style: TextStyle(
            color: Colors.white,
            fontSize: 28,
            fontWeight: FontWeight.bold,
            fontFamily: 'cursive',
          ),
        ),
      ),

      body: SingleChildScrollView(
        padding: const EdgeInsets.all(12),
        child: Column(
          children: [
            GridView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: menuItems.length,
              gridDelegate:
              const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 12,
                mainAxisSpacing: 12,
                childAspectRatio: 0.75,
              ),
              itemBuilder: (context, index) {
                final item = menuItems[index];

                return _buildPizzaCard(
                  index: index,
                  name: item['name']!,
                  price: item['price']!,
                  imageUrl: item['image']!,
                  rating: item['rating']!,
                  reviews: item['reviews']!,
                );
              },
            ),

            const SizedBox(height: 25),

            SizedBox(
              width: 220,
              height: 50,
              child: OutlinedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                style: OutlinedButton.styleFrom(
                  side: const BorderSide(
                    color: Color(0xFF9A7566),
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                child: const Text(
                  "Back to Home",
                  style: TextStyle(
                    color: Color(0xFF9A7566),
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),

            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }

  Widget _buildPizzaCard({
    required int index,
    required String name,
    required String price,
    required String imageUrl,
    required String rating,
    required String reviews,
  }) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(22),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 8,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              ClipRRect(
                borderRadius: const BorderRadius.vertical(
                  top: Radius.circular(22),
                ),
                child: Image.network(
                  imageUrl,
                  height: 120,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),

              Positioned(
                top: 8,
                right: 8,
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      if (favoriteItems.contains(index)) {
                        favoriteItems.remove(index);
                      } else {
                        favoriteItems.add(index);
                      }
                    });
                  },
                  child: CircleAvatar(
                    radius: 15,
                    backgroundColor: Colors.white,
                    child: Icon(
                      favoriteItems.contains(index)
                          ? Icons.favorite
                          : Icons.favorite_border,
                      color: favoriteItems.contains(index)
                          ? Colors.red
                          : Colors.grey,
                      size: 18,
                    ),
                  ),
                ),
              ),
            ],
          ),

          Padding(
            padding: const EdgeInsets.fromLTRB(10, 12, 10, 4),
            child: Text(
              name,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              children: [
                const Icon(
                  Icons.star,
                  color: Colors.amber,
                  size: 14,
                ),
                const SizedBox(width: 4),
                Text(
                  '$rating ($reviews)',
                  style: const TextStyle(
                    fontSize: 11,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
          ),

          const Spacer(),

          Padding(
            padding: const EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment:
              MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 10,
                    vertical: 5,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Text(
                    price,
                    style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),

                const Icon(
                  Icons.open_in_new,
                  color: Colors.grey,
                  size: 22,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}