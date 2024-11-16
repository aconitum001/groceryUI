import 'package:gorcery/models/product_model.dart';
import 'package:gorcery/utils/assets.dart';

List<Product> bestSellerList = [
  const Product(
    amount: 1,
    title: "Bell Pepper Red",
    desc:
        "Red bell peppers are sweet, crunchy, and packed with vitamins, especially vitamin C and antioxidants.",
    organicPercentage: 90,
    reviews: 4.6, // of 5
    numberOfReviews: 198,
    cal: 31, // per 100 gram
    expiration: 0.5, // year
    image: Assets.assetsImagesPeper,
    price: 4,
  ),
  const Product(
    amount: 1,
    title: "Lamb Meat",
    desc:
        "Lamb meat is a rich source of high-quality protein, essential vitamins, and minerals, known for its tender texture and savory flavor.",
    organicPercentage: 85,
    reviews: 4.9, // of 5
    numberOfReviews: 312,
    cal: 294, // per 100 gram
    expiration: 0.2, // year (refrigerated)
    image: Assets.assetsImagesLambMeat,
    price: 45,
  ),
];

List<Product> vegetables = [
  const Product(
    amount: 1,
    title: "Arabic Ginger",
    desc:
        "Ginger is a flowering plant whose rhizome, ginger root or ginger, is widely used as a spice and a folk medicine.",
    organicPercentage: 100,
    reviews: 4.8, // of 5
    numberOfReviews: 256,
    cal: 80, // per 100 gram
    expiration: 1, // year
    image: Assets.assetsImagesGinger,
    price: 6,
  ),
  const Product(
    amount: 1,
    title: "Bell Pepper Red",
    desc:
        "Red bell peppers are sweet, crunchy, and packed with vitamins, especially vitamin C and antioxidants.",
    organicPercentage: 90,
    reviews: 4.6, // of 5
    numberOfReviews: 198,
    cal: 31, // per 100 gram
    expiration: 0.5, // year
    image: Assets.assetsImagesPeper,
    price: 4,
  ),
  const Product(
    amount: 1,
    title: "Fresh Lettuce",
    desc:
        "Lettuce is a leafy green vegetable that is low in calories and high in water content, perfect for salads.",
    organicPercentage: 95,
    reviews: 4.5, // of 5
    numberOfReviews: 134,
    cal: 15, // per 100 gram
    expiration: 0.2, // year
    image: Assets.assetsImagesLettuce,
    price: 2,
  ),
  const Product(
    amount: 1,
    title: "Butternut Squash",
    desc:
        "Butternut squash is a type of winter squash known for its sweet, nutty flavor and versatility in cooking.",
    organicPercentage: 92,
    reviews: 4.7, // of 5
    numberOfReviews: 189,
    cal: 45, // per 100 gram
    expiration: 1, // year
    image: Assets.assetsImagesButternut,
    price: 8.1,
  ),
  const Product(
    amount: 1,
    title: "Organic Carrots",
    desc:
        "Carrots are root vegetables that are crisp, sweet, and rich in beta-carotene and dietary fiber.",
    organicPercentage: 100,
    reviews: 4.9, // of 5
    numberOfReviews: 220,
    cal: 41, // per 100 gram
    expiration: 0.8, // year
    image: Assets.assetsImagesCarrots,
    price: 4.20,
  ),
  const Product(
    amount: 1,
    title: "Fresh Broccoli",
    desc:
        "Broccoli is a nutrient-rich vegetable that is a great source of vitamins, minerals, and dietary fiber.",
    organicPercentage: 94,
    reviews: 4.4, // of 5
    numberOfReviews: 145,
    cal: 34, // per 100 gram
    expiration: 0.3, // year
    image: Assets.assetsImagesBrocoli,
    price: 2.33,
  ),
  const Product(
    amount: 1,
    title: "Cherry Tomato",
    desc:
        "Cherry tomatoes are small, sweet, and juicy tomatoes often used in salads or as snacks.",
    organicPercentage: 96,
    reviews: 4.8, // of 5
    numberOfReviews: 210,
    cal: 18, // per 100 gram
    expiration: 0.4, // year
    image: Assets.assetsImagesTomato,
    price: 3.5,
  ),
  const Product(
    amount: 1,
    title: "Fresh Spinach",
    desc:
        "Spinach is a nutrient-dense leafy green vegetable that is rich in iron, calcium, and antioxidants.",
    organicPercentage: 98,
    reviews: 4.7, // of 5
    numberOfReviews: 160,
    cal: 23, // per 100 gram
    expiration: 0.2, // year
    image: Assets.assetsImagesSpinach,
    price: 1.99,
  ),
];

List<Product> fruits = [
  const Product(
    amount: 1,
    title: "Banana",
    desc:
        "Bananas are a rich source of potassium, easy to digest, and a great energy booster.",
    organicPercentage: 95,
    reviews: 4.8, // of 5
    numberOfReviews: 350,
    cal: 89, // per 100 gram
    expiration: 0.3, // year
    image: Assets.assetsImagesBanana,
    price: 1.5,
  ),
  const Product(
    amount: 1,
    title: "Red Apple",
    desc: "Red apples are sweet, juicy, and packed with fiber and vitamin C.",
    organicPercentage: 98,
    reviews: 4.9, // of 5
    numberOfReviews: 420,
    cal: 52, // per 100 gram
    expiration: 0.5, // year
    image: Assets.assetsImagesRedApple,
    price: 3.2,
  ),
  const Product(
    amount: 1,
    title: "Orange",
    desc:
        "Oranges are citrus fruits known for their refreshing flavor and high vitamin C content.",
    organicPercentage: 92,
    reviews: 4.7, // of 5
    numberOfReviews: 310,
    cal: 47, // per 100 gram
    expiration: 0.6, // year
    image: Assets.assetsImagesOrange,
    price: 2.8,
  ),
  const Product(
    amount: 1,
    title: "Strawberries",
    desc:
        "Strawberries are sweet, tangy berries loaded with antioxidants and vitamin C.",
    organicPercentage: 97,
    reviews: 4.8, // of 5
    numberOfReviews: 275,
    cal: 32, // per 100 gram
    expiration: 0.2, // year
    image: Assets.assetsImagesStrawberry,
    price: 4.5,
  ),
  const Product(
    amount: 1,
    title: "Watermelon",
    desc:
        "Watermelons are hydrating fruits with a refreshing, sweet flavor and low calorie content.",
    organicPercentage: 94,
    reviews: 4.6, // of 5
    numberOfReviews: 230,
    cal: 30, // per 100 gram
    expiration: 0.1, // year
    image: Assets.assetsImagesWatermelon,
    price: 6.0,
  ),
  const Product(
    amount: 1,
    title: "Blueberries",
    desc:
        "Blueberries are small, sweet berries packed with antioxidants and vitamins.",
    organicPercentage: 99,
    reviews: 4.9, // of 5
    numberOfReviews: 350,
    cal: 57, // per 100 gram
    expiration: 0.2, // year
    image: Assets.assetsImagesBlueberries,
    price: 5.5,
  ),
  const Product(
    amount: 1,
    title: "Pineapple",
    desc:
        "Pineapples are tropical fruits with a tangy, sweet flavor and rich in vitamin C.",
    organicPercentage: 91,
    reviews: 4.7, // of 5
    numberOfReviews: 200,
    cal: 50, // per 100 gram
    expiration: 0.4, // year
    image: Assets.assetsImagesPineapple,
    price: 3.8,
  ),
  const Product(
    amount: 1,
    title: "Grapes",
    desc:
        "Grapes are sweet, juicy fruits that are a great source of vitamins and antioxidants.",
    organicPercentage: 96,
    reviews: 4.8, // of 5
    numberOfReviews: 310,
    cal: 69, // per 100 gram
    expiration: 0.3, // year
    image: Assets.assetsImagesGrapes,
    price: 3.0,
  ),
];

List<Product> dairyProductList = [
  const Product(
    amount: 1,
    title: "Milk",
    desc:
        "Milk is a nutrient-rich beverage packed with calcium, protein, and vitamins, essential for strong bones and overall health.",
    organicPercentage: 95,
    reviews: 4.7, // of 5
    numberOfReviews: 567,
    cal: 42, // per 100 gram
    expiration: 1, // year
    image: Assets.assetsImagesMilk,
    price: 3,
  ),
  const Product(
    amount: 1,
    title: "Cheddar Cheese",
    desc:
        "Cheddar cheese is a popular, firm cheese with a sharp flavor, rich in protein, calcium, and fat.",
    organicPercentage: 80,
    reviews: 4.8, // of 5
    numberOfReviews: 298,
    cal: 400, // per 100 gram
    expiration: 0.8, // year
    image: Assets.assetsImagesCheddarCheese,
    price: 6,
  ),
  const Product(
    amount: 1,
    title: "Yogurt",
    desc:
        "Yogurt is a probiotic-rich dairy product, great for digestion, immune support, and a good source of calcium.",
    organicPercentage: 85,
    reviews: 4.5, // of 5
    numberOfReviews: 430,
    cal: 59, // per 100 gram
    expiration: 0.5, // year
    image: Assets.assetsImagesYogurt,
    price: 2,
  ),
  const Product(
    amount: 1,
    title: "Butter",
    desc:
        "Butter is made from cream and adds rich flavor and texture to a wide range of dishes, from baking to frying.",
    organicPercentage: 90,
    reviews: 4.9, // of 5
    numberOfReviews: 215,
    cal: 717, // per 100 gram
    expiration: 0.6, // year
    image: Assets.assetsImagesButter,
    price: 5,
  ),
  const Product(
    amount: 1,
    title: "Cottage Cheese",
    desc:
        "Cottage cheese is a soft, creamy cheese that's high in protein and low in fat, perfect for healthy snacking or in salads.",
    organicPercentage: 70,
    reviews: 4.4, // of 5
    numberOfReviews: 120,
    cal: 98, // per 100 gram
    expiration: 0.3, // year
    image: Assets.assetsImagesCottageCheese,
    price: 3.5,
  ),
  const Product(
    amount: 1,
    title: "Sour Cream",
    desc:
        "Sour cream is a tangy dairy product made from fermented cream, often used as a topping or in recipes for its creamy consistency.",
    organicPercentage: 80,
    reviews: 4.4, // of 5
    numberOfReviews: 180,
    cal: 206, // per 100 gram
    expiration: 0.4, // year
    image: Assets.assetsImagesSourCream,
    price: 3.7,
  ),
];


