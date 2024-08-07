import 'package:adv_mid_eaxm/API/Api.dart';
import 'package:adv_mid_eaxm/Modal/modal.dart';
import 'package:flutter/widgets.dart';

class ProductProvider extends ChangeNotifier
{
  ProductModal? productModal;
  bool isLoding=false;
  int Selectindex=0;

   Future<ProductModal?> productMap()
  async {

    final data =  await ApiHelper.apiHelper.FetchData();
    productModal=ProductModal.fromJson(data);

    return productModal;

  }
 void  selectProduct(int index)
 {
   Selectindex=index;
   notifyListeners();
 }


  ProductProvider()
  {
    productMap();
  }


}