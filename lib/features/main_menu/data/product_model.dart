import 'package:grand_hotel/core/constants/app_images.dart';

class ProductModel {
  ProductModel({
    required this.id,
    required this.image,
    required this.name,
    required this.text,
    required this.price,
    this.rating = '0,0',
  });
  final String id;
  final String image;
  final String name;
  final String text;
  final String price;
  final String rating;
}

List<ProductModel> mostPopular = [
  ProductModel(
    id: '1',
    image: AppImages.hotel_1,
    name: 'The Horizon Retreat',
    text: 'Los Angeles, CA',
    price: '\$480/night',
  ),
  ProductModel(
    id: '2',
    image: AppImages.hotel_2,
    name: 'Opal Grove Inn',
    text: 'San Diego, CA',
    price: '\$190/night',
  ),
  ProductModel(
    id: '3',
    image: AppImages.hotel_3,
    name: 'Astra Grand Hotel',
    text: 'New York, NY',
    price: '\$300/night',
  ),
];

List<ProductModel> recomanded = [
  ProductModel(
    id: '1',
    image: AppImages.hotel_4,
    name: 'Serenity Sands',
    text: 'Honolulu, HI',
    price: '\$270',
    rating: '4,0',
  ),
  ProductModel(
    id: '2',
    image: AppImages.hotel_5,
    name: 'Elysian Suites',
    text: 'San Diego, CA',
    price: '\$320',
    rating: '3,8',
  ),
  ProductModel(
    id: '3',
    image: AppImages.hotel_8,
    name: 'Mystic Palms',
    text: 'Palm Springs, CA',
    price: '\$230',
    rating: '4,0',
  ),
  ProductModel(
    id: '4',
    image: AppImages.hotel_9,
    name: 'Sapphire Hotel',
    text: 'Key West, FL',
    price: '\$290',
    rating: '3,8',
  ),
];

List<ProductModel> bestToday = [
  ProductModel(
    id: '1',
    image: AppImages.hotel_6,
    name: 'Tranquil Shores',
    text: 'Santa Monica, CA',
    price: '\$270',
  ),
  ProductModel(
    id: '2',
    image: AppImages.hotel_7,
    name: 'Elysian Suites',
    text: 'San Diego, CA',
    price: '\$320',
  ),
];

List<ProductModel> favourite = [
  ProductModel(
    id: '1',
    image: AppImages.hotel_10,
    name: 'Eliinate Galian Hotel',
    text: 'Chestnut StreetRome, NY',
    price: '\$248 ',
  ),
  ProductModel(
    id: '2',
    image: AppImages.hotel_11,
    name: 'Cerulean Temple Hotel',
    text: 'Chestnut StreetRome, NY',
    price: '\$156',
  ),
  ProductModel(
    id: '3',
    image: AppImages.hotel_12,
    name: 'Double Oak Hotel',
    text: 'Chestnut StreetRome, NY',
    price: '\$163',
  ),
  ProductModel(
    id: '4',
    image: AppImages.hotel_13,
    name: 'Jade Gem Resort',
    text: 'Chestnut StreetRome, NY',
    price: '\$211',
  ),
];
