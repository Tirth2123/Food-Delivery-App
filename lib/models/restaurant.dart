import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:food_delivery_application/models/cart_item.dart';

import 'food.dart';

class Restaurant extends ChangeNotifier {
  final List<Food> _menu = [
    // burgers

    Food(
        name: "Bacon and Kimchi Burger",
        description:
            "Chef Wesley Genovart makes this over the top Shake Shack inspired burger with two thin stacked patties thick cut bacon kimchi and a spicy homemade sauce.",
        imagePath: "lib/images/burger/bacon-and-kimchi-burgers.webp",
        price: 299,
        category: FoodCategory.burgers,
        availableAddons: [
          Addon(name: "Extra Patty", price: 50),
          Addon(name: "Sliced cheese", price: 20),
          Addon(name: "Mayonnaise", price: 20),
        ]),
    Food(
        name: "Caprese Burger",
        description:
            "The delicious flavors of a caprese salad basil tomato and mozzarella are captured in these juicy burgers.",
        imagePath: "lib/images/burger/caprese-burger.webp",
        price: 249,
        category: FoodCategory.burgers,
        availableAddons: [
          Addon(name: "Extra Patty", price: 50),
          Addon(name: "Sliced Mozzarella cheese", price: 40),
          Addon(name: "Mayonnaise", price: 20),
          Addon(name: "Zucchini", price: 30),
        ]),
    Food(
        name: "Chicken Burger",
        description:
            "Flavored with scallions, parsley, basil, and lemon zest these chicken burger are delicious enough to stand alone.",
        imagePath: "lib/images/burger/Chicken-Burger.webp",
        price: 239,
        category: FoodCategory.burgers,
        availableAddons: [
          Addon(name: "Extra Chicken Patty", price: 70),
          Addon(name: "Garlic Aioli & Avocado", price: 50),
          Addon(name: "Cheddar & Swiss cheese", price: 40),
          Addon(name: "Bacon", price: 50),
        ]),
    Food(
        name: "Hatch Chile Smash Burger",
        description:
            "This spicy, crispy, cheesy, swoon inducing smash burger will have you going back for seconds thanks to the cheese and salsa that melt into a queso like moment and take this burger to the next level.",
        imagePath: "lib/images/burger/hatch-chile-smash-burger.webp",
        price: 279,
        category: FoodCategory.burgers,
        availableAddons: [
          Addon(name: "Pueblo Roasted Green Chiles", price: 50),
          Addon(name: "Cheddar cheese", price: 30),
          Addon(name: "Ground Beef", price: 50),
        ]),
    Food(
        name: "Ultimate Veggie Burger",
        description:
            "These veggie burger hit every satisfying savory note with a hearty mix of pearl barley, chickpeas, mushrooms, and crispy panko.",
        imagePath: "lib/images/burger/Ultimate-Veggie-Burgers.webp",
        price: 299,
        category: FoodCategory.burgers,
        availableAddons: [
          Addon(name: "Grilled tomatoes", price: 30),
          Addon(name: "Sliced avocado", price: 50),
          Addon(name: "Mango salsa", price: 40),
        ]),
    Food(
        name: "Urdaburger",
        description:
            "Smoky, melty pimentón cheese, crispy jamón serrano, and a savory sweet aioli top beef patties in this towering tapas-inspired burger from Urdaneta.",
        imagePath: "lib/images/burger/caprese-burger.webp",
        price: 289,
        category: FoodCategory.burgers,
        availableAddons: [
          Addon(name: "Yellow American cheese", price: 50),
          Addon(name: "Extra Patty", price: 60),
          Addon(name: "Mayonnaise", price: 20),
          Addon(name: "Cream cheese", price: 40),
        ]),

    // sandwich

    Food(
        name: "Caprese Sandwich",
        description:
            "This caprese sandwich is fresh from the basil and hearty from thick crusty ciabatta.",
        imagePath: "lib/images/sandwich/Caprese Sandwich.webp",
        price: 179,
        category: FoodCategory.sandwich,
        availableAddons: [
          Addon(name: "Mozzarella cheese Slice", price: 50),
          Addon(name: "Vegan Basil Pesto", price: 70),
        ]),
    Food(
        name: "Chickpea Salad Sandwich",
        description:
            "This vegan chickpea salad sandwich is lemony, bright and surprisingly delicious. It's got all the flavors of a classic tuna salad sandwich—dill, lemon and a bit of garlic—but with chickpeas.",
        imagePath: "lib/images/sandwich/Chickpea Salad Sandwich.webp",
        price: 149,
        category: FoodCategory.sandwich,
        availableAddons: [
          Addon(name: "Vegan Mayonnaise", price: 50),
        ]),
    Food(
        name: "Cucumber Sandwich",
        description:
            "This creamy, crunchy cucumber sandwich strikes a lovely balance between decadent and light. The cream cheese-yogurt spread complements the crisp refreshing cucumber.",
        imagePath: "lib/images/sandwich/cucumber-sandwich.webp",
        price: 199,
        category: FoodCategory.sandwich,
        availableAddons: [
          Addon(name: "Cream cheese", price: 70),
          Addon(name: "Greek yogurt", price: 50),
          Addon(name: "Whole-Wheat sandwich bread", price: 20),
          Addon(name: "Mayonnaise", price: 40),
        ]),
    Food(
        name: "Mushroom Sandwich with Pickled Onion",
        description:
            "This sandwich is a specialty at Dad's Luncheonette in Half Moon Bay, California where chef owner Scott Clark makes it with local maitake mushrooms Using ghee to cook the sandwich components imparts a nutty flavor you wouldn't get by using butter.",
        imagePath:
            "lib/images/sandwich/Mushroom Sandwich with Pickled Onion.webp",
        price: 219,
        category: FoodCategory.sandwich,
        availableAddons: [
          Addon(name: "Extra thinly sliced red onion", price: 40),
          Addon(name: "Cheddar cheese slice", price: 40),
          Addon(name: "Whole-Wheat sandwich bread", price: 20),
          Addon(name: "Mayonnaise", price: 40),
        ]),
    Food(
        name: "Tomato-&-Avocado Cheese Sandwich",
        description:
            "Parmesan cheese is such a bold flavor you only need 1/4 cup to add a big punch to this vegetarian toaster-oven sandwich.",
        imagePath: "lib/images/sandwich/Tomato-&-Avocado Cheese Sandwic.webp",
        price: 189,
        category: FoodCategory.sandwich,
        availableAddons: [
          Addon(name: "Mashed Avocado", price: 60),
          Addon(name: "Grated Parmesan cheese", price: 40),
        ]),
    Food(
        name: "Veggie & Hummus Sandwich",
        description:
            "This mile high vegetable and hummus sandwich makes the perfect heart healthy vegetarian lunch to go.",
        imagePath: "lib/images/sandwich/Veggie & Hummus Sandwich.webp",
        price: 229,
        category: FoodCategory.sandwich,
        availableAddons: [
          Addon(name: "Cream cheese", price: 70),
          Addon(name: "Mashed Avocado", price: 60),
          Addon(name: "Sliced Cucumber", price: 40),
        ]),

    // pizza

    Food(
        name: "Classic Cheese Pizza",
        description:
            "Sometimes all you want at the end of the day is a simple cheese pizza.",
        imagePath: "lib/images/pizza/classic-cheese-pizza.webp",
        price: 249,
        category: FoodCategory.pizza,
        availableAddons: [
          Addon(name: "Extra cheese", price: 40),
          Addon(name: "Paneer", price: 50),
        ]),
    Food(
        name: "Hawaiian Pizza with Pineapple and Salami",
        description:
            "Pork and pineapple are a dream combination in this homemade salty sweet pizza.",
        imagePath:
            "lib/images/pizza/Hawaiian Pizza with Pineapple and Salami.webp",
        price: 299,
        category: FoodCategory.pizza,
        availableAddons: [
          Addon(name: "Extra Mozzarella cheese", price: 50),
          Addon(name: "Extra Sliced Genoa Salami", price: 70),
        ]),
    Food(
        name: "Margherita Pizza",
        description:
            "This classic pizza is easy to pull off at home with fresh ingredients.",
        imagePath: "lib/images/pizza/margherita-pizza.webp",
        price: 279,
        category: FoodCategory.pizza,
        availableAddons: [
          Addon(name: "Extra Mozzarella cheese", price: 50),
          Addon(name: "Fontina Cheese", price: 50),
          Addon(name: "Parmesan Cheese", price: 50),
          Addon(name: "Feta Cheese", price: 50),
        ]),
    Food(
        name: "Portobello Mushroom and Red Pepper Pizza",
        description:
            "This substantial pizza features meaty portobello mushrooms and bright red bell peppers, simply paired with fresh salted mozzarella, grated Parmesan, and fresh basil.",
        imagePath:
            "lib/images/pizza/Portobello Mushroom and Red Pepper Pizza.webp",
        price: 299,
        category: FoodCategory.pizza,
        availableAddons: [
          Addon(name: "grated Parmesan cheese", price: 50),
          Addon(name: "Basil", price: 30),
          Addon(name: "Mozzarella cheese", price: 50),
        ]),
    Food(
        name: "Potato Pizza with Crème Fraîche and Bacon",
        description:
            "This pizza starts with the flavors of the classic Alsatian pizza made with crème fraîche, caramelized onion, and bacon, and adds soft confit garlic cloves and thin slices of potatoes.",
        imagePath:
            "lib/images/pizza/potato-pizza-with-creme-fraiche-and-bacon.webp",
        price: 319,
        category: FoodCategory.pizza,
        availableAddons: [
          Addon(name: "Caramelized Onions", price: 40),
          Addon(name: "Crumbled Bacon", price: 50),
        ]),
    Food(
        name: "Vegan Wild Mushroom Pizza",
        description:
            "The garlic crema balances the mushrooms earthy flavor while thinly sliced brussels sprouts add an awesome crunch.",
        imagePath: "lib/images/pizza/Vegan Wild Mushroom Pizza.webp",
        price: 279,
        category: FoodCategory.pizza,
        availableAddons: [
          Addon(name: "Tofu", price: 50),
          Addon(name: "Vegan Mayonnaise", price: 70),
        ]),

    // northIndian

    Food(
        name: "Aloo Paratha",
        description:
            "If you’re a fan of bread and potatoes, you’re going to love this Punjabi Aloo Paratha or Aloo ka Paratha.",
        imagePath: "lib/images/north_indian/Aloo_Paratha.png",
        price: 99,
        category: FoodCategory.northIndian,
        availableAddons: [
          Addon(name: "Oil Aloo Paratha", price: 20),
          Addon(name: "Butter Aloo Paratha", price: 30),
          Addon(name: "Bundi Raita", price: 20),
          Addon(name: "Cheese Aloo Paratha", price: 50),
        ]),
    Food(
        name: "Dal Makhani",
        description:
            "There are some dishes that represent Punjabi cuisine, like none other. Dal Makhani is one of them.",
        imagePath: "lib/images/north_indian/Dal Makhani.jpg",
        price: 79,
        category: FoodCategory.northIndian,
        availableAddons: []),
    Food(
        name: "Paneer Butter Masala",
        description:
            "Paneer Butter Masala is one of India’s most popular paneer gravy.",
        imagePath: "lib/images/north_indian/Paneer Butter Masala.jpg",
        price: 199,
        category: FoodCategory.northIndian,
        availableAddons: []),
    Food(
        name: "Paneer Tikka",
        description:
            "Paneer Tikka is a popular and delicious tandoori snack where Paneer are marinated in a spiced yogurt-based marinade arranged on skewers and grilled in the oven.",
        imagePath: "lib/images/north_indian/Paneer Tikka.jpg",
        price: 149,
        category: FoodCategory.northIndian,
        availableAddons: [
          Addon(name: "6 pieces", price: 50),
          Addon(name: "8 pieces", price: 100),
        ]),
    Food(
        name: "Chole Bhature",
        description:
            "Chole Bhature is a popular Indian dish of white chickpeas in a spicy and tangy gravy In North India.",
        imagePath: "lib/images/north_indian/Punjabi-Chole.jpg",
        price: 149,
        category: FoodCategory.northIndian,
        availableAddons: [
          Addon(name: "Chass", price: 20),
          Addon(name: "Extara Bhature", price: 30),
          Addon(name: "Bundi Raita", price: 20),
        ]),
    Food(
        name: "Rajma Chawal",
        description:
            "This Rajma is a lightly spiced, creamy and delicious Punjabi style curry made with protein rich kidney beans, aromatics like onions, ginger, garlic, fragrant spices and tangy tomatoes.",
        imagePath: "lib/images/north_indian/Rajma Chawal.jpg",
        price: 129,
        category: FoodCategory.northIndian,
        availableAddons: [
          Addon(name: "Curd", price: 30),
          Addon(name: "Mint Raita", price: 40),
        ]),

    // southIndian

    Food(
        name: "Coconut Rice",
        description:
            "Coconut rice is a dish prepared by soaking white rice in coconut milk or cooking rice with coconut flakes.",
        imagePath: "lib/images/south_indian/Coconut Rice.jpg",
        price: 159,
        category: FoodCategory.southIndian,
        availableAddons: [
          Addon(name: "Extra Sambhar", price: 30),
          Addon(name: "Extra Coconut Chutney", price: 20),
          Addon(name: "Extra Gralic Chutney", price: 20),
        ]),
    Food(
        name: "Idli",
        description:
            "Idli is a type of savory rice cake, originating from the Indian subcontinent, popular as a breakfast food in Southern India and in Sri Lanka.",
        imagePath: "lib/images/south_indian/Idli.jpg",
        price: 149,
        category: FoodCategory.southIndian,
        availableAddons: [
          Addon(name: "Extra Sambhar", price: 30),
          Addon(name: "Extra Coconut Chutney", price: 20),
          Addon(name: "Extra Gralic Chutney", price: 20),
        ]),
    Food(
        name: "Malabar Parotta with Kurma",
        description:
            "Parotta is a subcontinental layered flatbread made from maida or atta, alternatively known as a flaky ribbon pancake.",
        imagePath: "lib/images/south_indian/Malabar Parota.jpg",
        price: 169,
        category: FoodCategory.southIndian,
        availableAddons: [
          Addon(name: "Extra Sambhar", price: 30),
          Addon(name: "Extra Coconut Chutney", price: 20),
          Addon(name: "Extra Gralic Chutney", price: 20),
        ]),
    Food(
        name: "Paniyaram",
        description:
            "These small delights look exactly like takoyaki and are a perfect example of what to do with leftover idli batter, made with rice and black gram lentils.",
        imagePath: "lib/images/south_indian/Paniyaram.jpg",
        price: 129,
        category: FoodCategory.southIndian,
        availableAddons: [
          Addon(name: "Extra Sambhar", price: 30),
          Addon(name: "Extra Coconut Chutney", price: 20),
          Addon(name: "Extra Gralic Chutney", price: 20),
        ]),
    Food(
        name: "Pongal",
        description:
            "Pongal in its typical definition is a heart warming porridge made of rice and yellow lentils that can be prepared to be both sweet and savory.",
        imagePath: "lib/images/south_indian/Pongal.jpg",
        price: 149,
        category: FoodCategory.southIndian,
        availableAddons: [
          Addon(name: "Extra Sambhar", price: 30),
          Addon(name: "Extra Coconut Chutney", price: 20),
          Addon(name: "Extra Gralic Chutney", price: 20),
        ]),
    Food(
        name: "Medu Vada",
        description:
            "Medu Vada is a category of savory fried snacks from India Different types of vadas can be described as fritters, cutlets, donuts, or dumplings.",
        imagePath: "lib/images/south_indian/Medu Vada.jpg",
        price: 159,
        category: FoodCategory.southIndian,
        availableAddons: [
          Addon(name: "Extra Sambhar", price: 30),
          Addon(name: "Extra Coconut Chutney", price: 20),
          Addon(name: "Extra Gralic Chutney", price: 20),
        ]),

    // gujarati

    Food(
        name: "Basundi",
        description:
            "Basundi is a rich, creamy Indian sweet or dessert that’s made with whole milk and flavored with fragrant spices, nuts and optionally dry fruits like raisins.",
        imagePath: "lib/images/gujarati/Basundi.jpg",
        price: 299,
        category: FoodCategory.gujarati,
        availableAddons: []),
    Food(
        name: "Khaman",
        description:
            "Khaman also known as khaman dhokla in other Indian states, is a popular delicacy from the Gujarati cuisine.",
        imagePath: "lib/images/gujarati/Khaman.jpg",
        price: 199,
        category: FoodCategory.gujarati,
        availableAddons: []),
    Food(
        name: "Khandvi",
        description:
            "Khandvi is made with a mixture of gram flour and buttermilk.",
        imagePath: "lib/images/gujarati/Khandvi.jpg",
        price: 229,
        category: FoodCategory.gujarati,
        availableAddons: []),
    Food(
        name: "Lilva Kachori",
        description:
            "Closer to Gujarat or if you are in a Gujarati household, this snack is actually called as Lilva Ni Kachori, which simply means kachori with lilva or fresh tuvar.",
        imagePath: "lib/images/gujarati/Lilva Kachori.jpg",
        price: 249,
        category: FoodCategory.gujarati,
        availableAddons: []),
    Food(
        name: "Methi Na Gota",
        description:
            "Methi na Gota is a Gujarati deep fried snack of savory and spiced fritters Basically these fritters are made with besan, methi.",
        imagePath: "lib/images/gujarati/Methi Na Gota.jpg",
        price: 129,
        category: FoodCategory.gujarati,
        availableAddons: []),
    Food(
        name: "Muthia",
        description:
            "There are a variety of snacks both sweet and savory, when it comes to Gujarati cuisine.",
        imagePath: "lib/images/gujarati/Muthia.jpg",
        price: 119,
        category: FoodCategory.gujarati,
        availableAddons: []),
    Food(
        name: "Patra",
        description:
            "Patra is also known as Aluvadi and is a tasty delicacy made with gram flour, ginger-chilli paste and a selection of spices.",
        imagePath: "lib/images/gujarati/Patra.jpg",
        price: 89,
        category: FoodCategory.gujarati,
        availableAddons: []),
    Food(
        name: "Thepla",
        description:
            "Faintly bitter and wonderfully spiced Methi Thepla are savory flatbreads that are delicious to enjoy as a delicious snack any time of the day.",
        imagePath: "lib/images/gujarati/Thepla.jpg",
        price: 99,
        category: FoodCategory.gujarati,
        availableAddons: []),
  ];


  //DELIVERY ADDRESS

  String _deliveryAddress = "Gujarat, India";

  // G E T T E R S
  List<Food> get menu => _menu;
  List<CartItem> get cart => _cart;
  String get deliveryAddress => _deliveryAddress;

  // O P E R A T I O N S

  // USERS CART
  final List<CartItem> _cart = [];

  // ADD TO CART
  void addToCart(Food food, List<Addon> selectedAddons) {
    //SEE IF THERE IS A CART ITEM ALREADY WITH SAME FOOD AND SELECTED ADDONS
    CartItem? cartItem = _cart.firstWhereOrNull((item) {
      // CHECK IF FOOD ITEMS ARE SAME
      bool isSameFood = item.food == food;

      // CHECK IF SELECTED ADDONS ARE THE SAME
      bool isSameAddon =
          const ListEquality().equals(item.selectedAddons, selectedAddons);
      return isSameFood && isSameAddon;
    });

    // IF ITEM ALREADY EXISTS INCRESE ITS COUNT
    if (cartItem != null) {
      cartItem.quantity++;
    }

    // OTHERWISE, ADD A NEW ITEM TO THE CART
    else {
      _cart.add(
        CartItem(
          food: food,
          selectedAddons: selectedAddons,
        ),
      );
    }
    notifyListeners();
  }

  // REMOVE FROM CART

  void removeFromCart(CartItem cartItem) {
    int cartIndex = _cart.indexOf(cartItem);

    if (cartIndex != -1) {
      if (_cart[cartIndex].quantity > 1) {
        _cart[cartIndex].quantity--;
      } else {
        _cart.removeAt(cartIndex);
      }
    }
    notifyListeners();
  }

  // GET TOTAL PRICE OF CART

  double getTotalPrice() {
    double total = 0.0;

    for (CartItem cartItem in _cart) {
      double itemTotal = cartItem.food.price;

      for (Addon addon in cartItem.selectedAddons) {
        itemTotal += addon.price;
      }
      total += itemTotal * cartItem.quantity;
    }
    return total;
  }

  // GET TOTAL NUMBERS OF ITEMS IN CART

  int getTotalItemCount() {
    int totalItemCount = 0;

    for (CartItem cartItem in _cart) {
      totalItemCount += cartItem.quantity;
    }
    return totalItemCount;
  }

  // CLEAR CART

  void clearCart() {
    _cart.clear();
    notifyListeners();
  }

  //UPDATE DELIVERY ADDRESS

  void updatedDeliveryAddress(String newAddress){
    _deliveryAddress = newAddress;
    notifyListeners();
  }

  // H E L P E R S

  // GENERATE A RECEIPT

  String displayCartReceipt() {
    final receipt = StringBuffer();
    receipt.writeln("Here is your Bill.",);
    receipt.writeln();

    receipt.writeln("--------------------------------------------");
    for (final cartItem in _cart) {
      receipt.writeln(
          "${cartItem.quantity} x ${cartItem.food.name} - ${_formatPrice(cartItem.food.price)}");
      if(cartItem.selectedAddons.isNotEmpty){
        receipt.writeln();
        receipt.writeln("Addons: \n\n${_formatAddons(cartItem.selectedAddons)}");
      }
      receipt.writeln();
    }
    receipt.writeln("--------------------------------------------");
    receipt.writeln();
    receipt.writeln("Total Items: ${getTotalItemCount()}");
    receipt.writeln("Total Price: ${_formatPrice(getTotalPrice())}");
    receipt.writeln();
    receipt.writeln("Delivering to: $deliveryAddress");

    return receipt.toString();
  }

  // FORMAT DOUBLE VALUE INTO MONEY

  String _formatPrice(double price) {
    return "₹${price.toStringAsFixed(2)}";
  }

  // FORMAT LIST OF ADDONS INTO A STRING SUMMARY

  String _formatAddons(List<Addon> addons) {
    return addons
        .map((addon) => "${addon.name} (${_formatPrice(addon.price)})")
        .join(", \n");
  }
}
