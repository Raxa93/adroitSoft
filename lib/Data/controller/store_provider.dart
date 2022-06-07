import 'package:flutter/cupertino.dart';
import 'package:video_example/Data/model/store_model.dart';

class StoreController extends ChangeNotifier {
  List<StoreModel> storeModelList = [];
  List quotationList = [];
  bool showPassword = false;

  setShowPassword(){
    showPassword = !showPassword;
    notifyListeners();
  }

  changeStatus (int index){
    print('This is name ${storeModelList[index].operationName} i will change status ${storeModelList[index].status}');
    storeModelList[index].status = true;
    print('This is name ${storeModelList[index].operationName} status after change is ${storeModelList[index].status}');
    notifyListeners();
  }

  Future getListData() async {
    storeModelList.clear();
    quotationList.clear();
    quotationList.add(["shop Facia", false]);
    quotationList.add(["Display Picture", false]);
    quotationList.add(["Stock Taking", false]);
    quotationList.add(["Expiry Status", false]);
    quotationList.add(["ShopKeeper Remarks", false]);

    storeModelList = quotationList
        .asMap()
        .map((index, quotation) => MapEntry(
            index,
            StoreModel(
              quotation[0],
              quotation[1],
            )))
        .values
        .toList();

    for (int i = 0; i < storeModelList.length; i++) {
      print(storeModelList[i].status);
    }
  }
// setshopFaciaStatus(bool value) {
//    shopFacia.status = value;
//    notifyListeners();
// }

}
