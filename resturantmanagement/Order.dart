class Order {
  String? itemName;
  int? quantity;
  int? originalPrice;
  Order(String itemName, int quantity) {
    this.itemName = itemName;
    this.quantity = quantity;
  }

  void printIndividiualOrder() {
    print(
        "Item : $itemName Quantity : $quantity Original price : $originalPrice total : (${quantity! * originalPrice!})");
  }
}
