import 'package:grand_hotel/features/main_app/models/booking_item.dart';
import 'package:grand_hotel/features/main_app/models/chat_item.dart';

const List<BookingItem> bookedBookings = [
  BookingItem(
    title: 'The Aston Vill Hotel',
    location: 'Veum Point, Michikoton',
    price: 120,
    rating: 4.7,
    dates: '12 - 14 Nov 2024',
    guests: '2 Guests (1 Room)',
    image: 'https://picsum.photos/seed/bk1/300/300',
  ),
  BookingItem(
    title: 'Mystic Palms',
    location: 'Palm Springs, CA',
    price: 230,
    rating: 4.0,
    dates: '20 - 25 Nov 2024',
    guests: '1 Guests (1 Room)',
    image: 'https://picsum.photos/seed/bk2/300/300',
  ),
  BookingItem(
    title: 'Elysian Suites',
    location: 'San Diego, CA',
    price: 320,
    rating: 3.8,
    dates: '02 - 05 Dec 2024',
    guests: '3 Guests (2 Rooms)',
    image: 'https://picsum.photos/seed/bk3/300/300',
  ),
];

const List<BookingItem> bookingHistory = [
  BookingItem(
    title: 'Ocean Crest',
    location: 'Miami, FL',
    price: 150,
    rating: 4.3,
    dates: '10 - 12 Sep 2024',
    guests: '2 Guests (1 Room)',
    image: 'https://picsum.photos/seed/h1/300/300',
  ),
  BookingItem(
    title: 'Golden Bay',
    location: 'Los Angeles, CA',
    price: 200,
    rating: 4.1,
    dates: '01 - 03 Aug 2024',
    guests: '1 Guests (1 Room)',
    image: 'https://picsum.photos/seed/h2/300/300',
  ),
];

const List<ChatItem> chatItems = [
  ChatItem(
    name: 'Mohamed ahmed',
    message: 'Thank you! \u{1F60A}',
    time: '7:12 AM',
    unread: 3,
    avatar:
        'https://image2url.com/r2/default/images/1772581600208-9a0d7a5f-e08c-4d53-bcdc-7f7049a64d68.jpg',
  ),
  ChatItem(
    name: 'ahmed khaled',
    message: 'Answer me now !',
    time: '7:12 AM',
    unread: 500,
    avatar:
        'https://image2url.com/r2/default/images/1772749832078-578e7200-627d-48bd-a1b7-eef24effa743.png',
  ),
  ChatItem(
    name: 'Kallalooh',
    message: 'Yes! please take a order',
    time: '9:28 AM',
    unread: 0,
    avatar:
        'https://image2url.com/r2/default/images/1772581718936-7a9432e0-3da2-4103-a1cb-51fc4824ce81.jpg',
  ),
  ChatItem(
    name: 'James Eddins ',
    message: 'I think this one is good',
    time: '4:35 PM',
    unread: 1,
    avatar:
        'https://th.bing.com/th/id/R.d1cba4a26f707f1df4e789c1df5d7071?rik=2iWkA5Sx4%2bQKDQ&pid=ImgRaw&r=0',
  ),
  ChatItem(
    name: 'Ollie Haley',
    message: 'Wow, this is really epic',
    time: '8:12 PM',
    unread: 0,
    avatar: 'https://picsum.photos/seed/msg4/200/200',
  ),
  ChatItem(
    name: 'Traci Maggio',
    message: 'omg, this is amazing',
    time: '10:22 PM',
    unread: 0,
    avatar: 'https://picsum.photos/seed/msg5/200/200',
  ),
  ChatItem(
    name: 'Mathew Konopelski',
    message: 'woohoooo',
    time: 'yesterday',
    unread: 0,
    avatar: 'https://picsum.photos/seed/msg6/200/200',
  ),
];

const String profileAvatarUrl =
    'https://image2url.com/r2/default/images/1772581600208-9a0d7a5f-e08c-4d53-bcdc-7f7049a64d68.jpg';


