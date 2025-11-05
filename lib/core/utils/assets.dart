import 'package:flutter/material.dart';

class Assets {
  static const addToCart = 'assets/images/add-to-cart.png';
  static const basket = 'assets/images/basket.png';
  static const box = 'assets/images/box.png';
  static const cart = 'aassets/images/cart.png';
  static const google = 'assets/images/google.png';
  static const history = 'assets/images/history.png';
  static const warning = 'assets/images/warning.png';
  static const wishlist = 'aassets/images/wishlist.png';
  // Categories
  List<Map<String, dynamic>> get categories => [
    {
      'image': 'assets/images/categories/fruits.png',
      'title': 'Fruits',
      'color': const Color(0xff53B175),
    },
    {
      'image': 'assets/images/categories/vegetables.png',
      'title': 'Vegetables',
      'color': const Color(0xffF8A44C),
    },
    {
      'image': 'assets/images/categories/spices.png',
      'title': 'Spices',
      'color': const Color(0xffF7A593),
    },
    {
      'image': 'assets/images/categories/grains.png',
      'title': 'Grains',
      'color': const Color(0xffD3B0E0),
    },
    {
      'image': 'assets/images/categories/nuts.png',
      'title': 'Nuts',
      'color': const Color(0xffFDE598),
    },
    {
      'image': 'assets/images/categories/spinach.png',
      'title': 'Spinach',
      'color': const Color(0xffB7DFF5),
    },
  ];
  // static const fruits = 'assets/images/categories/fruits.png';
  // static const grains = 'assets/images/categories/grains.png';
  // static const nuts = 'assets/images/categories/nuts.png';
  // static const spices = 'assets/images/categories/spices.png';
  // static const spinach = 'assets/images/categories/spinach.png';
  // static const vegetables = 'assets/images/categories/vegetables.png';

  // Landing
  static const buyOnLaptop = 'assets/images/landing/buy-on-laptop.jpg';
  static const buyThrough = 'assets/images/landing/buy-through.png';
  static const buyfood = 'assets/images/landing/buyfood.jpg';
  static const groceryCart = 'assets/images/landing/grocery-cart.jpg';
  static const store = 'assets/images/landing/store.jpg';
  static const vegTable = 'assets/images/landing/veg-table.jpg';
  // Offers
  static const offer1 = 'assets/images/offres/Offer1.jpg';
  static const offer2 = 'assets/images/offres/Offer2.jpg';
  static const offer3 = 'assets/images/offres/Offer3.jpg';
  static const offer4 = 'assets/images/offres/Offer4.jpg';
}
