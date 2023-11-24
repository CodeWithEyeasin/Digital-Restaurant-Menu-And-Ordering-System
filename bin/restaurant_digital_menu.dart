import 'package:restaurant_digital_menu/restaurant_digital_menu.dart' as restaurant_digital_menu;

import 'BillingForOrderItem.dart';
import 'RestaurantMenuList.dart';

void main(List<String> arguments)
{
  print("   ABC Restaurant Coffee Menu\nPlease Select Your Order Sir/Mam\n");
  BillingForOdredItem bill=BillingForOdredItem();
  bill.restaurant_menu();
  bill.Bill();

}
