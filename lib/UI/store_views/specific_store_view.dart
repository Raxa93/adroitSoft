import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:video_example/Data/controller/store_provider.dart';
import 'package:video_example/UI/configuration/sizeconfig.dart';
import 'package:video_example/UI/store_views/change_status_view.dart';

class SpecificStoreView extends StatefulWidget {
  String storeName;
  String lastCheckIn;

  SpecificStoreView({Key? key, required this.storeName, required this.lastCheckIn}) : super(key: key);

  @override
  _SpecificStoreViewState createState() => _SpecificStoreViewState();
}

class _SpecificStoreViewState extends State<SpecificStoreView> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getAllList();
  }

  @override
  Widget build(BuildContext context) {
    // var storeVm = Provider.of<StoreController>(context,listen: false);
    SizeConfig().init(context);
    return Consumer<StoreController>(
      builder: (context, storeVm, _) {
        return Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.black,
            title: Text(widget.storeName),
          ),
          body: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Last check-In',
                      style: TextStyle(color: Colors.black, fontSize: 16, fontWeight: FontWeight.w600),
                    ),
                    Text(
                      widget.lastCheckIn,
                      style: const TextStyle(color: Colors.black, fontSize: 16),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                Expanded(
                  child: ListView.builder(
                      itemCount: storeVm.storeModelList.length,
                      itemBuilder: (context, index) {
                        return Card(
                          elevation: 1.0,
                          child: ListTile(
                            onTap: (){
                              Navigator.of(context).push(
                                  MaterialPageRoute(builder: (BuildContext context) =>  ChangeStatusView(index: index,)));
                            },
                            leading: storeVm.storeModelList[index].status == false
                                ? const Icon(Icons.cancel_outlined, color: Colors.red)
                                : const Icon(Icons.check_circle_outline, color: Colors.red),
                            title: Text(storeVm.storeModelList[index].operationName.toString()),
                          ),
                        );
                      }),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  void getAllList() async {
    await Provider.of<StoreController>(context, listen: false).getListData();
    Future.delayed(const Duration(seconds: 2));
  }
}
