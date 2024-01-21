class Item {
  String? itemName;
  int? price;
  int? available;
  String? find;
  Item(String itemName, int price, int available) {
    this.price = price;
    this.itemName = itemName;
    this.available = available;
  }

  void printItemAndPrice() {
    print('Dish:$itemName perItemPrice:$price');
  }

  void reduceQuantityBy(int? quantity) {
    this.available = (this.available! - quantity!);
  }

  void addQuantityBy(int? quantity) {
    this.available = (this.available! + quantity!);
  }

  void printItemRemaining() {
    print('Dish:$itemName available $available');
  }

  serach(serach) {
    this.find = serach;
    if (itemName!.startsWith(serach)) {
      print('Dish:$itemName perItemPrice:$price');
    }
  }
}
