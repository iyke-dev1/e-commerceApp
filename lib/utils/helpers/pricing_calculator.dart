class MyPricingCalculator{

  /// -- collects price based on tax and shipping
  static double calculateTotalPrice(double productPrice, String location){
    double taxRate = getTaxRateForLocation(location);
    double taxAmount = productPrice * taxRate;


    double shippingCost = getShippingCost(location);

    double totalPrice = productPrice + taxAmount + shippingCost;
    return totalPrice;
  }

  /// --- Calculate shipping cost
  static String calculateShippingCost(double productPrice, String location){
    double shippingCost = getShippingCost(location);
    return shippingCost.toStringAsFixed(2);
  }

 /// --- Calculate tax
  static String calculateTax(double productPrice, String location){
    double taxRate = getTaxRateForLocation(location);
    double taxAmount = productPrice * taxRate;
    return taxAmount.toStringAsFixed(2);
  }

  static double getTaxRateForLocation(String location){
    // Lookup the tax rate for the given location from a tax rate database or api
    // return the approximate tax rate
    return 0.10; // Example Shipping cost of $5
  }

  static double getShippingCost(String location){
    // Lookup the tax rate for the given location from a tax rate database or api
    // return the approximate tax rate
    return 5.00; // Example Shipping cost of $5
  }



  /// sum all cart values and return the total amount
  // static double calculateCartTotalAmount(cartModel cart){
  //   return cart.items.map((e)=> e.price).fold(0, (previousPrice, currentPrice) => previousPrice + (currentPrice ?? 0));
  // }
}