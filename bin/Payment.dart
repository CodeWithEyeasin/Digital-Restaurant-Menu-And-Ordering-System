import 'dart:io';

import 'BillingForOrderItem.dart';

class Payment extends BillingForOdredItem
{
  late int passkey,PhoneNumber;
  late int _bKashpassword, _bKashNumber,_NagadPassword,_NagadNumber;
  //this is for bKash Payment
  void setbKashpassword(int password)
  {
    _bKashpassword=password;
  }
  void setbKashnumber(int phone)
  {
    _bKashNumber=phone;
  }
//this is for Nagad Payment
 void setNagadPassword(int password)
 {
   _NagadPassword=password;
 }
 void setNagadNumber(int phone)
 {
   _NagadNumber=phone;
 }

  void payment()
  {

    while(!PaymentOptionNotSelect)
    {
      print("\nPlease Select Any Payment Option\n     1.bKash      2.Nagad");
      print("-----------------------------------");
      print("Payment Option: ");
      choose=int.parse(stdin.readLineSync()!);
      switch(choose)
          {
        case 1:bKash();
          break;
        case 2:Nagad();
          break;
        default:
          print("Please Enter The Right Payment Option");
          }
    }

  }
  void bKash()
  {
   while(!LoopBreak)
     {
       print("Enter Your bKash Number :");
       PhoneNumber=int.parse(stdin.readLineSync()!);
       print("Enter Your bKash Password :");
       passkey=int.parse(stdin.readLineSync()!);
       if(PhoneNumber==_bKashNumber)
       {
         if(passkey==_bKashpassword)
         {
           print("-----------------------------------");
           print("★ Payment Successfully From bKash ★");
           PaymentOptionNotSelect=true;
           LoopBreak=true;
         }
         else
         {
           print("-----------------------------------");
           print("     Wrong Password Please\n  Enter The Right bKash Password");
           print("-----------------------------------\n");
         }
       }
       else
       {
         print("-----------------------------------");
         print("     Wrong bKash Number Please\n   Enter The Write bKash Number");
         print("-----------------------------------\n");
       }
     }
  }

  void Nagad()
  {
    while(!LoopBreak)
      {
        print("Enter Your Nagad Number :");
        PhoneNumber=int.parse(stdin.readLineSync()!);
        print("Enter Your Nagad Password :");
        passkey=int.parse(stdin.readLineSync()!);
        if(PhoneNumber==_NagadNumber)
        {
          if(passkey==_NagadPassword)
          {
            print("-----------------------------------");
            print("★ Payment Successfully From Nagad ★");
            PaymentOptionNotSelect=true;
            LoopBreak=true;
          }
          else
          {
            print("-----------------------------------");
            print("     Wrong Password Please\n Enter The Right Nagad Password");
            print("-----------------------------------\n");
          }
        }
        else
        {
          print("-----------------------------------");
          print("    Wrong bKash Number Please\n  Enter The Write Nagad Number");
          print("-----------------------------------\n");
        }
      }
  }

}