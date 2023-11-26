import 'package:restaurant_digital_menu/restaurant_digital_menu.dart' as restaurant_digital_menu;

import 'BillingForOrderItem.dart';
import 'Payment.dart';
import 'RestaurantMenuList.dart';

void main(List<String> arguments)
{
  print("   ABC Restaurant Coffee Menu\nPlease Select Your Order Sir/Mam\n");
  Payment select = Payment();
  select.restaurant_menu();
  select.Bill();
  select.setbKashnumber(12345);
  select.setbKashpassword(1212);
  select.setNagadNumber(56789);
  select.setNagadPassword(4545);
  select.payment();

}
