import 'package:grand_hotel/core/constants/app_images.dart';

class ReviewModel {
  final String name;
  final String imagePath; 
  final double rating;
  final String comment;

  const ReviewModel({
    required this.name,
    required this.imagePath,
    required this.rating,
    required this.comment,
  });
}

// ── Dummy Data ──────────────────────────────────────────
final List<ReviewModel> dummyReviews = [
  ReviewModel(
    name: 'Kim Borrdy',
    imagePath: AppImages.kimBorrdy, 
    rating: 4.5,
    comment: 'Amazing! The room is good than the picture. Thanks for amazing experience!',
  ),
  ReviewModel(
    name: 'Mirai Kamazuki',
    imagePath: AppImages.miraiKamazuki, 
    rating: 5.0,
    comment: 'The service is on point, and I really like the facilities. Good job!',
  ),
  ReviewModel(
    name: 'Jzenklen',
    imagePath: AppImages.jzenklen, 
    rating: 5.0,
    comment: 'The service is on point, and I really like the facilities. Good job!',
  ),
  ReviewModel(
    name: 'Rezikan Akay',
    imagePath: AppImages.rezikanAkay, 
    rating: 5.0,
    comment: 'The service is on point, and I really like the facilities. Good job!',
  ),
  ReviewModel(
    name: 'Rezingkaly',
    imagePath: AppImages.rezingkaly,
    rating: 5.0,
    comment: 'The service is on point, and I really like the facilities. Good job!',
  ),
  ReviewModel(
    name: 'Andiziky',
    imagePath: AppImages.jzenklen, 
    rating: 5.0,
    comment: 'The service is on point, and I really like the facilities. Good job!',
  ),
];