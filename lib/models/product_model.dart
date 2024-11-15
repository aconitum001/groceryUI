class Product {
  final String image, title, desc;
  final int amount, organicPercentage, numberOfReviews;
  final double price, reviews, cal, expiration;

  const Product({
    required this.image,
    required this.title,
    required this.desc,
    required this.amount,
    required this.organicPercentage,
    required this.expiration,
    required this.price,
    required this.reviews,
    required this.numberOfReviews,
    required this.cal,
  });
}
