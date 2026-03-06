import 'package:flutter/material.dart';

class HotelHomeScreen extends StatefulWidget {
  const HotelHomeScreen({super.key});

  @override
  State<HotelHomeScreen> createState() => _HotelHomeScreenState();
}

class _HotelHomeScreenState extends State<HotelHomeScreen> {
  int navIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF6F7FB),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18),
          child: ListView(
            children: [
              const SizedBox(height: 10),

              Row(
                children: [
                  CircleAvatar(
                    radius: 26,
                    backgroundImage: NetworkImage(
                      "https://image2url.com/r2/default/images/1772576757895-5c510235-2ef4-40b3-8e71-50eb1fe29d8f.jpg",
                    ),
                  ),
                  const SizedBox(width: 12),

                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          "Mohamed Mahmoud",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 4),
                        Row(
                          children: [
                            Icon(
                              Icons.location_on_outlined,
                              size: 14,
                              color: Colors.grey,
                            ),
                            SizedBox(width: 4),
                            Text(
                              "San Diego, CA",
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),

                  IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.favorite_border),
                  ),
                ],
              ),

              const SizedBox(height: 20),

              Row(
                children: const [
                  Text(
                    "Most Popular",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  Spacer(),
                  Text("See All", style: TextStyle(color: Colors.blue)),
                ],
              ),

              const SizedBox(height: 12),

              SizedBox(
                height: 200,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    hotelCard(
                      image:
                          "https://images.unsplash.com/photo-1505693416388-ac5ce068fe85",
                      title: "The Horizon Retreat",
                      price: 480,
                    ),
                    const SizedBox(width: 12),
                    hotelCard(
                      image:
                          "https://images.unsplash.com/photo-1500375592092-40eb2168fd21",
                      title: "Opal Grove Inn",
                      price: 190,
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 20),

              Row(
                children: const [
                  Text(
                    "Recommended for you",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  Spacer(),
                  Text("See All", style: TextStyle(color: Colors.blue)),
                ],
              ),

              const SizedBox(height: 15),

              recommendedTile(
                image:
                    "https://images.unsplash.com/photo-1501117716987-c8e2a40d6f9b",
                title: "Serenity Sands",
                price: 270,
                rating: 4.0,
              ),
              const SizedBox(height: 12),
              recommendedTile(
                image:
                    "https://images.unsplash.com/photo-1542314831-068cd1dbfeeb",
                title: "Elysian Suites",
                price: 320,
                rating: 3.8,
              ),
            ],
          ),
        ),
      ),

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: navIndex,
        onTap: (i) {
          setState(() {
            navIndex = i;
          });
        },
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_month),
            label: "My Booking",
          ),
          BottomNavigationBarItem(icon: Icon(Icons.message), label: "Message"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
        ],
      ),
    );
  }

  Widget hotelCard({
    required String image,
    required String title,
    required int price,
  }) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(16),
      child: Stack(
        children: [
          Image.network(image, width: 170, height: 200, fit: BoxFit.cover),
          Positioned(
            bottom: 12,
            left: 12,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 6),
                Text(
                  "\$$price/night",
                  style: const TextStyle(color: Colors.white),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget recommendedTile({
    required String image,
    required String title,
    required int price,
    required double rating,
  }) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.network(
              image,
              width: 60,
              height: 60,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 4),
                Text(
                  "\$$price/night",
                  style: const TextStyle(color: Colors.blue),
                ),
              ],
            ),
          ),
          Row(
            children: [
              const Icon(Icons.star, color: Colors.amber, size: 16),
              Text(rating.toString()),
            ],
          ),
        ],
      ),
    );
  }
}
