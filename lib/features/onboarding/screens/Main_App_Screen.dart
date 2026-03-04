import 'package:flutter/material.dart';

class MainAppScreen extends StatefulWidget {
  const MainAppScreen({super.key});

  @override
  State<MainAppScreen> createState() => _MainAppScreenState();
}

class _MainAppScreenState extends State<MainAppScreen> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    final screens = [
      const HotelHomeScreen(),
      const MyBookingScreen(),
      const MessagesScreen(),
      const ProfileScreen(),
    ];

    return Scaffold(
      backgroundColor: const Color(0xfff5f6fa),
      appBar: AppBar(
        backgroundColor: const Color(0xfff5f6fa),
        elevation: 0,
        centerTitle: true,
        title: Text(
          currentIndex == 0
              ? "Home"
              : currentIndex == 1
              ? "My Booking"
              : currentIndex == 2
              ? "Message"
              : "Profile",
          style: const TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.more_vert, color: Colors.black),
          ),
        ],
        leading: const SizedBox(),
        leadingWidth: 0,
      ),
      body: screens[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (i) => setState(() => currentIndex = i),
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
      floatingActionButton: currentIndex == 2
          ? FloatingActionButton(
              onPressed: () {},
              backgroundColor: Colors.blue,
              child: const Icon(Icons.add, color: Colors.white),
            )
          : null,
    );
  }
}

class HotelHomeScreen extends StatelessWidget {
  const HotelHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox();
  }
}

class MyBookingScreen extends StatefulWidget {
  const MyBookingScreen({super.key});

  @override
  State<MyBookingScreen> createState() => _MyBookingScreenState();
}

class _MyBookingScreenState extends State<MyBookingScreen> {
  int tabIndex = 0;

  final List<BookingItem> booked = [
    BookingItem(
      title: "The Aston Vill Hotel",
      location: "Veum Point, Michikoton",
      price: 120,
      rating: 4.7,
      dates: "12 - 14 Nov 2024",
      guests: "2 Guests (1 Room)",
      image: "https://picsum.photos/seed/bk1/300/300",
    ),
    BookingItem(
      title: "Mystic Palms",
      location: "Palm Springs, CA",
      price: 230,
      rating: 4.0,
      dates: "20 - 25 Nov 2024",
      guests: "1 Guests (1 Room)",
      image: "https://picsum.photos/seed/bk2/300/300",
    ),
    BookingItem(
      title: "Elysian Suites",
      location: "San Diego, CA",
      price: 320,
      rating: 3.8,
      dates: "02 - 05 Dec 2024",
      guests: "3 Guests (2 Rooms)",
      image: "https://picsum.photos/seed/bk3/300/300",
    ),
  ];

  final List<BookingItem> history = [
    BookingItem(
      title: "Ocean Crest",
      location: "Miami, FL",
      price: 150,
      rating: 4.3,
      dates: "10 - 12 Sep 2024",
      guests: "2 Guests (1 Room)",
      image: "https://picsum.photos/seed/h1/300/300",
    ),
    BookingItem(
      title: "Golden Bay",
      location: "Los Angeles, CA",
      price: 200,
      rating: 4.1,
      dates: "01 - 03 Aug 2024",
      guests: "1 Guests (1 Room)",
      image: "https://picsum.photos/seed/h2/300/300",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    final list = tabIndex == 0 ? booked : history;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          const SizedBox(height: 8),
          const _SearchBar(hint: "Search...", trailing: SizedBox()),
          const SizedBox(height: 14),
          Container(
            padding: const EdgeInsets.all(4),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(22),
            ),
            child: Row(
              children: [
                Expanded(
                  child: InkWell(
                    borderRadius: BorderRadius.circular(18),
                    onTap: () => setState(() => tabIndex = 0),
                    child: Container(
                      height: 40,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: tabIndex == 0
                            ? const Color(0xfff5f6fa)
                            : Colors.white,
                        borderRadius: BorderRadius.circular(18),
                      ),
                      child: Text(
                        "Booked",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: tabIndex == 0 ? Colors.black : Colors.grey,
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: InkWell(
                    borderRadius: BorderRadius.circular(18),
                    onTap: () => setState(() => tabIndex = 1),
                    child: Container(
                      height: 40,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: tabIndex == 1
                            ? const Color(0xfff5f6fa)
                            : Colors.white,
                        borderRadius: BorderRadius.circular(18),
                      ),
                      child: Text(
                        "History",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: tabIndex == 1 ? Colors.black : Colors.grey,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 14),
          Expanded(
            child: ListView.separated(
              itemCount: list.length,
              separatorBuilder: (_, __) => const SizedBox(height: 12),
              itemBuilder: (context, index) {
                return BookingCard(item: list[index]);
              },
            ),
          ),
        ],
      ),
    );
  }
}

class BookingCard extends StatelessWidget {
  final BookingItem item;

  const BookingCard({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(18),
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (_) => BookingDetailScreen(item: item)),
        );
      },
      child: Container(
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(18),
        ),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(14),
              child: _netImg(item.image, w: 70, h: 70, fit: BoxFit.cover),
            ),
            const SizedBox(width: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          item.title,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                          ),
                        ),
                      ),
                      const Icon(Icons.star, size: 16, color: Colors.amber),
                      const SizedBox(width: 4),
                      Text(
                        item.rating.toStringAsFixed(1),
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 6),
                  Row(
                    children: [
                      const Icon(
                        Icons.location_on_outlined,
                        size: 14,
                        color: Colors.grey,
                      ),
                      const SizedBox(width: 4),
                      Expanded(
                        child: Text(
                          item.location,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: const TextStyle(
                            fontSize: 12,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 8),
                  Row(
                    children: [
                      Text(
                        "\$${item.price}",
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                          color: Colors.blue,
                        ),
                      ),
                      const Text(
                        " /night",
                        style: TextStyle(fontSize: 12, color: Colors.grey),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Row(
                    children: [
                      const Icon(
                        Icons.calendar_month_outlined,
                        size: 16,
                        color: Colors.grey,
                      ),
                      const SizedBox(width: 6),
                      Expanded(
                        child: Text(
                          "Dates    ${item.dates}",
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: const TextStyle(fontSize: 12),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 6),
                  Row(
                    children: [
                      const Icon(
                        Icons.person_outline,
                        size: 16,
                        color: Colors.grey,
                      ),
                      const SizedBox(width: 6),
                      Expanded(
                        child: Text(
                          "Guest    ${item.guests}",
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: const TextStyle(fontSize: 12),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class BookingDetailScreen extends StatelessWidget {
  final BookingItem item;

  const BookingDetailScreen({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfff5f6fa),
      appBar: AppBar(
        backgroundColor: const Color(0xfff5f6fa),
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.pop(context),
        ),
        centerTitle: true,
        title: const Text(
          "Booking Detail",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.more_vert, color: Colors.black),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Container(
          padding: const EdgeInsets.all(14),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(18),
          ),
          child: ListView(
            children: [
              const Text(
                "Your Hotel",
                style: TextStyle(color: Colors.grey, fontSize: 12),
              ),
              const SizedBox(height: 10),
              Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(14),
                    child: _netImg(item.image, w: 64, h: 64, fit: BoxFit.cover),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Expanded(
                              child: Text(
                                item.title,
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14,
                                ),
                              ),
                            ),
                            const Icon(
                              Icons.star,
                              size: 16,
                              color: Colors.amber,
                            ),
                            const SizedBox(width: 4),
                            Text(
                              item.rating.toStringAsFixed(1),
                              style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 6),
                        Row(
                          children: [
                            const Icon(
                              Icons.location_on_outlined,
                              size: 14,
                              color: Colors.grey,
                            ),
                            const SizedBox(width: 4),
                            Expanded(
                              child: Text(
                                item.location,
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style: const TextStyle(
                                  fontSize: 12,
                                  color: Colors.grey,
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 6),
                        RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: "\$${item.price}",
                                style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14,
                                  color: Colors.blue,
                                ),
                              ),
                              const TextSpan(
                                text: " /night",
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.grey,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16),
              Row(
                children: const [
                  Text(
                    "Location",
                    style: TextStyle(color: Colors.grey, fontSize: 12),
                  ),
                  Spacer(),
                  Text("Open Map", style: TextStyle(color: Colors.blue)),
                ],
              ),
              const SizedBox(height: 10),
              ClipRRect(
                borderRadius: BorderRadius.circular(16),
                child: _netImg(
                  "https://picsum.photos/seed/mapdetail/900/400",
                  w: double.infinity,
                  h: 140,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(height: 18),
              const Text(
                "Your Booking",
                style: TextStyle(color: Colors.grey, fontSize: 12),
              ),
              const SizedBox(height: 10),
              _InfoRow(
                icon: Icons.calendar_month_outlined,
                left: "Dates",
                right: item.dates,
              ),
              const SizedBox(height: 10),
              _InfoRow(
                icon: Icons.person_outline,
                left: "Guest",
                right: item.guests,
              ),
              const SizedBox(height: 10),
              const _InfoRow(
                icon: Icons.bed_outlined,
                left: "Room type",
                right: "Queen Room",
              ),
              const SizedBox(height: 10),
              const _InfoRow(
                icon: Icons.phone_outlined,
                left: "Phone",
                right: "0214354646",
              ),
              const SizedBox(height: 18),
              ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: _netImg(
                  "https://barcode.tec-it.com/barcode.ashx?data=06158310-5427-471d-af1f-bd9029b&code=Code128&translate-esc=on",
                  w: double.infinity,
                  h: 70,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(height: 8),
              const Text(
                "06158310-5427-471d-af1f-bd9029b",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 11, color: Colors.grey),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MessagesScreen extends StatefulWidget {
  const MessagesScreen({super.key});

  @override
  State<MessagesScreen> createState() => _MessagesScreenState();
}

class _MessagesScreenState extends State<MessagesScreen> {
  final List<ChatItem> chats = [
    ChatItem(
      name: "Mohamed ahmed",
      message: "Thank you! 😊",
      time: "7:12 AM",
      unread: 3,
      avatar:
          "https://image2url.com/r2/default/images/1772581600208-9a0d7a5f-e08c-4d53-bcdc-7f7049a64d68.jpg",
    ),
    ChatItem(
      name: "Kallalooh",
      message: "Yes! please take a order",
      time: "9:28 AM",
      unread: 0,
      avatar:
          "https://image2url.com/r2/default/images/1772581718936-7a9432e0-3da2-4103-a1cb-51fc4824ce81.jpg",
    ),
    ChatItem(
      name: "James Eddins ",
      message: "I think this one is good",
      time: "4:35 PM",
      unread: 1,
      avatar:
          "https://th.bing.com/th/id/R.d1cba4a26f707f1df4e789c1df5d7071?rik=2iWkA5Sx4%2bQKDQ&pid=ImgRaw&r=0",
    ),
    ChatItem(
      name: "Ollie Haley",
      message: "Wow, this is really epic",
      time: "8:12 PM",
      unread: 0,
      avatar: "https://picsum.photos/seed/msg4/200/200",
    ),
    ChatItem(
      name: "Traci Maggio",
      message: "omg, this is amazing",
      time: "10:22 PM",
      unread: 0,
      avatar: "https://picsum.photos/seed/msg5/200/200",
    ),
    ChatItem(
      name: "Mathew Konopelski",
      message: "woohoooo",
      time: "yesterday",
      unread: 0,
      avatar: "https://picsum.photos/seed/msg6/200/200",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          const SizedBox(height: 8),
          const _SearchBar(
            hint: "Search...",
            trailing: Icon(Icons.tune, color: Colors.grey),
          ),
          const SizedBox(height: 12),
          Expanded(
            child: ListView.separated(
              itemCount: chats.length,
              separatorBuilder: (_, __) => const Divider(height: 1),
              itemBuilder: (context, index) {
                return _ChatTile(item: chats[index]);
              },
            ),
          ),
        ],
      ),
    );
  }
}

class _ChatTile extends StatelessWidget {
  final ChatItem item;

  const _ChatTile({required this.item});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(999),
              child: _netImg(item.avatar, w: 48, h: 48, fit: BoxFit.cover),
            ),
            const SizedBox(width: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    item.name,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    item.message,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(color: Colors.grey, fontSize: 12),
                  ),
                ],
              ),
            ),
            const SizedBox(width: 8),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  item.time,
                  style: const TextStyle(color: Colors.grey, fontSize: 11),
                ),
                const SizedBox(height: 6),
                if (item.unread > 0)
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 7,
                      vertical: 3,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Text(
                      item.unread.toString(),
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 11,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: ListView(
        children: [
          const SizedBox(height: 10),
          Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(999),
                child: _netImg(
                  "https://image2url.com/r2/default/images/1772581600208-9a0d7a5f-e08c-4d53-bcdc-7f7049a64d68.jpg",
                  w: 52,
                  h: 52,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      "Mohamed ahmed",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                      ),
                    ),
                    SizedBox(height: 2),
                    Text(
                      "@Mohamed",
                      style: TextStyle(color: Colors.grey, fontSize: 12),
                    ),
                  ],
                ),
              ),
              InkWell(
                onTap: () {},
                borderRadius: BorderRadius.circular(10),
                child: Container(
                  width: 36,
                  height: 36,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: const Icon(Icons.edit, size: 18),
                ),
              ),
            ],
          ),
          const SizedBox(height: 18),
          const Text(
            "Setting",
            style: TextStyle(color: Colors.grey, fontSize: 12),
          ),
          const SizedBox(height: 10),
          _ProfileTile(
            icon: Icons.credit_card,
            title: "Your Card",
            onTap: () {},
          ),
          _ProfileTile(icon: Icons.security, title: "Security", onTap: () {}),
          _ProfileTile(
            icon: Icons.notifications_none,
            title: "Notification",
            onTap: () {},
          ),
          _ProfileTile(icon: Icons.language, title: "Languages", onTap: () {}),
          _ProfileTile(
            icon: Icons.help_outline,
            title: "Help and Support",
            onTap: () {},
          ),
          const SizedBox(height: 22),
          Center(
            child: TextButton(
              onPressed: () {},
              child: const Text(
                "Logout",
                style: TextStyle(
                  color: Colors.red,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          const SizedBox(height: 12),
        ],
      ),
    );
  }
}

class _ProfileTile extends StatelessWidget {
  final IconData icon;
  final String title;
  final VoidCallback onTap;

  const _ProfileTile({
    required this.icon,
    required this.title,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(14),
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 14),
        decoration: const BoxDecoration(
          border: Border(
            bottom: BorderSide(color: Color(0xFFE9E9E9), width: 1),
          ),
        ),
        child: Row(
          children: [
            Container(
              width: 34,
              height: 34,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Icon(icon, size: 18),
            ),
            const SizedBox(width: 12),
            Expanded(
              child: Text(
                title,
                style: const TextStyle(fontWeight: FontWeight.w600),
              ),
            ),
            const Icon(Icons.chevron_right, color: Colors.grey),
          ],
        ),
      ),
    );
  }
}

class _SearchBar extends StatelessWidget {
  final String hint;
  final Widget trailing;

  const _SearchBar({required this.hint, required this.trailing});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 44,
      padding: const EdgeInsets.symmetric(horizontal: 12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(14),
      ),
      child: Row(
        children: [
          const Icon(Icons.search, color: Colors.grey),
          const SizedBox(width: 8),
          Expanded(
            child: Text(hint, style: const TextStyle(color: Colors.grey)),
          ),
          trailing,
        ],
      ),
    );
  }
}

class _InfoRow extends StatelessWidget {
  final IconData icon;
  final String left;
  final String right;

  const _InfoRow({required this.icon, required this.left, required this.right});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(icon, size: 18, color: Colors.grey),
        const SizedBox(width: 8),
        Text(left, style: const TextStyle(fontSize: 12)),
        const Spacer(),
        Text(
          right,
          style: const TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}

class BookingItem {
  final String title;
  final String location;
  final int price;
  final double rating;
  final String dates;
  final String guests;
  final String image;

  BookingItem({
    required this.title,
    required this.location,
    required this.price,
    required this.rating,
    required this.dates,
    required this.guests,
    required this.image,
  });
}

class ChatItem {
  final String name;
  final String message;
  final String time;
  final int unread;
  final String avatar;

  ChatItem({
    required this.name,
    required this.message,
    required this.time,
    required this.unread,
    required this.avatar,
  });
}

Widget _netImg(
  String url, {
  required double w,
  required double h,
  required BoxFit fit,
}) {
  return Image.network(
    url,
    width: w,
    height: h,
    fit: fit,
    errorBuilder: (context, error, stackTrace) {
      return Container(
        width: w,
        height: h,
        alignment: Alignment.center,
        color: const Color(0xFFEFEFEF),
        child: const Icon(Icons.broken_image_outlined),
      );
    },
  );
}
