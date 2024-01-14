import 'dart:io';

void main() {
  print('   WLECOME\nBOWLS ON FIRES');
  print('    MENU');

  List Menu = [
    {'item': 'chicken birynai', 'available': 60, 'perItemPrice': 200},
    {'item': 'nihari', 'available': 50, 'perItemPrice': 450},
    {'item': 'beef pulao', 'available': 55, 'perItemPrice': 300},
    {'item': 'roti', 'available': 100, 'perItemPrice': 20},
    {'item': 'cold drink', 'available': 25, 'perItemPrice': 180},
  ];
  for (var i = 0; i < Menu.length; i++) {
    var a = Menu[i]['item'];
    var b = Menu[i]['perItemPrice'];
    print('Dish:$a perItemPrice:$b');
  }
  print('YOUR ORDER');
  var Orders = [
    {stdin.readLineSync()!:int.parse(stdin.readLineSync()!)}
   // {'nihari': 50, 'roti': 105, 'cold drink': 10}
  ];

  for (var i = 0; i < Orders.length; i++) {
    num total = 0;
    num total1 = 0;
    for (var j = 0; j < Menu.length; j++) {
      var items = Menu[j];
      var itemName = items['item'];
      var order = Orders[i];
      var oderdItems = order[itemName];
      if (oderdItems != null) {
        var price = items['perItemPrice'];
        var available = items['available'];
        if (oderdItems < available) {
          total1 = price * oderdItems;
          total += total1;
          items['available'] = available - oderdItems;
          print('$itemName:$oderdItems\n$price X $oderdItems = $total1');
        } else {
          print('$itemName Out Of Stock');
        }
      }
    }
    print('TOTAL BILL = $total');
  }
}
