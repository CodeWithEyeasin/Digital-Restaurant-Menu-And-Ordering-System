import 'dart:io';

class RestaurantMenuList
{
  late double EspressoPrice=110,AmericanoPrice=150,CappuccinoPrice=190,HotChocolatePrice=190,TotalPrice,Tax;
  double EspressoOrderPrice=0,AmericanoOrderPrice=0,CappuccinoOrderPrice=0,HotChocolateOrderPrice=0;
  late int Espresso=0,Americano=0,Cappuccino=0,Hot_Chocolate=0,choose,TableNumberSelect;
  bool orderingFinished = false,TableNumberNotselect=false;
  void restaurant_menu ()
  {
    while(!orderingFinished)
      {
        print("1.Espresso------------------> $EspressoPrice");
        print("2.Americano-----------------> $AmericanoPrice");
        print("3.Cappuccino----------------> $CappuccinoPrice");
        print("4.Hot Chocolate-------------> $HotChocolatePrice");
        print("5.Order Done\n");
        print("Choose Item :");
      choose=int.parse(stdin.readLineSync()!);
      switch(choose)
          {
        case 1:Espresso++;
        EspressoOrderPrice=Espresso*EspressoPrice;
          break;
        case 2:Americano++;
        AmericanoOrderPrice=Americano*AmericanoPrice;
          break;
        case 3:Cappuccino++;
        CappuccinoOrderPrice=Cappuccino*CappuccinoPrice;
          break;
        case 4:Hot_Chocolate++;
        HotChocolateOrderPrice=Hot_Chocolate*HotChocolatePrice;
          break;
        case 5:TableNumber();
          break;
        default:
          print("Please Enter The Right Value\n");
          sleep(Duration(seconds: 3));

          }

      }
  }

  void TableNumber()
  {
    print("Please Enter Your Table Number :\n 1.Table :12      2.Table :25\n 3.Table :45      4.Table :50");
    choose=int.parse(stdin.readLineSync()!);
    while(!TableNumberNotselect)
    {
      switch(choose)
      {
        case 1: TableNumberSelect=12;
                print("Table :$TableNumberSelect\n");
                done();
                TableNumberNotselect=true;

        break;
        case 2: TableNumberSelect=25;
                print("Table :$TableNumberSelect\n");
                done();
                TableNumberNotselect=true;
        break;
        case 3: TableNumberSelect=45;
                print("Table :$TableNumberSelect\n");
                done();
                TableNumberNotselect=true;
        break;
        case 4: TableNumberSelect=50;
                print("Table :$TableNumberSelect\n");
                done();
                TableNumberNotselect=true;
        break;
        default:
          print("Please Enter The Right Table");
      }
    }
  }

  void done()
  {
    if(Espresso>0)
      {
        print("You ordered $Espresso piece of Espresso which costs -------> $EspressoOrderPrice taka");
      }
    if(Americano>0)
      {
        print("You ordered $Americano piece of Americano which costs ------> $AmericanoOrderPrice taka");
      }
    if(Cappuccino>0)
    {
      print("You ordered $Cappuccino piece of Cappuccino which costs -----> $CappuccinoOrderPrice taka");
    }
    if(Hot_Chocolate>0)
    {
      print("You ordered $Hot_Chocolate piece of Hot_Chocolate which costs --> $HotChocolatePrice taka");
    }
    if(Espresso>0||Americano>0||Cappuccino>0||Hot_Chocolate>0)
      {
        print("\nSir/Mam Your Order is Done Please wait 5 second for bill");
        sleep(Duration(seconds: 5));
      }
    if(Espresso==0 && Americano==0 && Cappuccino==0 && Hot_Chocolate==0 )
      {
        print("Please order first then click \"Order Done\"");
        sleep(Duration(seconds: 3));
        restaurant_menu();
      }
    else
      {
        orderingFinished=true;
      }
  }

}