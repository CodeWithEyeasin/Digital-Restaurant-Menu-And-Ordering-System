import 'RestaurantMenuList.dart';

class BillingForOdredItem extends RestaurantMenuList
{
  void Bill()
  {
    var now=DateTime.now();
    print("\n\n          ABC Restaurant\n         Signature Branch\nTongi College Gate,Gazipur Dhaka,BD\n"
        "-----------------------------------\n"
        "         Table Number :$TableNumberSelect\n  $now \n"
        "Oty Item Name            Price\n"
        "-----------------------------------");
    if(Espresso>0)
    {
      print("$Espresso Espresso               $EspressoOrderPrice taka");
    }
    if(Americano>0)
    {
      print("$Americano Americano              $AmericanoOrderPrice taka");
    }
    if(Cappuccino>0)
    {
      print("$Cappuccino Cappuccino             $CappuccinoOrderPrice taka");
    }
    if(Hot_Chocolate>0)
    {
      print("$Hot_Chocolate Hot_Chocolate          $HotChocolatePrice taka");
    }
    print("-----------------------------------");
    TotalPrice=EspressoOrderPrice+AmericanoOrderPrice+CappuccinoOrderPrice+HotChocolateOrderPrice;
    print("Ticket Total             $TotalPrice taka");
    Tax=TotalPrice*5/100;
    TotalPrice=Tax+TotalPrice;
    print("Include 5% tax            $Tax taka");
    print("-----------------------------------");
    print("Net Total                 $TotalPrice taka");
    print("        Thanks For Coming");

  }
}