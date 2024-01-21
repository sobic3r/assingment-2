import 'dart:io';

import 'Order.dart';
import 'UserOnBoarding.dart';
import 'item.dart';

User? loggedInUser = null;
UserOnBoarding userOnBoarding = new UserOnBoarding();
List<Order> orders = [];
List<Item> menu = [
  new Item('chicken biryani', 200, 60),
  new Item('nihari', 450, 50),
  new Item('beef pulao', 300, 55),
  new Item('roti', 20, 100),
  new Item('cold drink', 180, 25),
];

void main() {
  print(' WELCOME TO\nBOWLS ON FIRE');
  
  print('    MENU');

  for (var item in menu) {
    item.printItemAndPrice();
  }

  askForOrder();
}

Order? generateOrder() {
  while (loggedInUser == null) {
    loggedInUser = userOnBoarding.initiateUserOnBoarding();
  }
  print("Item to order");
  var itemName = stdin.readLineSync()!;
  if (itemName == '') {
    return null;
  }
  print("Quantity to order");
  var quantity = stdin.readLineSync()!;
  Order newOrder = new Order(itemName, int.parse(quantity));

  return newOrder;
}

Item? getOriginalItemByOrderedItem(String? orderdItem) {
  for (int i = 0; i < menu.length; i++) {
    if (menu[i].itemName == orderdItem) {
      return menu[i];
    }
  }
  return null;
}

// searchfilter(var items, String searchitems) {
//   var filtereditems = items
//       .where((Item) => Item.toLowerCase().contains(searchitems.toLowerCase()))
//       .toList();
//   return filtereditems;
// }

void askForOrder() {
  print('   YOUR ORDER \nplease leave product as empty if order is done');

  Order? order = new Order('', 0);
  int bill = 0;
  do {
    order = generateOrder();
    if (order != null) {
      Item? itemOrdered = getOriginalItemByOrderedItem(order.itemName);
      if (isQuantityValid(itemOrdered!, order)) {
        itemOrdered.reduceQuantityBy(order.quantity);
        order.originalPrice = itemOrdered.price;
        bill += itemOrdered.price! * order.quantity!;
        orders.add(order);
        itemOrdered.printItemRemaining();
        print(
            "Is your order confirm press n for edit and y for further process");
        String? choiceToEdit = stdin.readLineSync();
        if (choiceToEdit != null) {
          if (choiceToEdit == 'y') {
            updateOrder(order);
          }
        }
      }
    }
  } while (order != null);

  orders.forEach((order) {
    order.printIndividiualOrder();
  });
  print("Bill PKR ${bill}");
}

Order? updateOrder(Order order) {
  
  print("Add new quantity to order");
  var quantity = stdin.readLineSync()!;
  if (quantity != null) {
    Item? itemOrdered = getOriginalItemByOrderedItem(order.itemName);
    if (quantity == 0) {
      orders.remove(order);
      itemOrdered!.addQuantityBy(order.quantity);
    } else {
      if (int.parse(quantity) < (order.quantity as int)) {
        int remainingItem = order.quantity! - (int.parse(quantity));
        itemOrdered!.addQuantityBy(remainingItem);
        order.quantity = int.parse(quantity);
      } else {
        if (isQuantityValid(itemOrdered!, order)) {
          itemOrdered!.addQuantityBy(order.quantity);
          order.quantity = int.parse(quantity);
          itemOrdered.reduceQuantityBy(order.quantity);
        }
      }
    }

    itemOrdered.printItemRemaining();
  }
}

bool isQuantityValid(Item itemOrdered, Order order) {
  if (itemOrdered == null) {
    print("no such item named ${order.itemName} present");
    return false;
  } else if (itemOrdered.available! < order.quantity!.toInt()) {
    print(
        "${itemOrdered.itemName} is out of stock only ${itemOrdered.available} available");
    return false;
  }
  return true;
}
