import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:video_example/Data/controller/store_provider.dart';
import 'package:video_example/Data/model/store_model.dart';

class ChangeStatusView extends StatefulWidget {
  int index;
   ChangeStatusView({Key? key,required this.index}) : super(key: key);

  @override
  _ChangeStatusViewState createState() => _ChangeStatusViewState();
}

class _ChangeStatusViewState extends State<ChangeStatusView> {
  @override
  Widget build(BuildContext context) {
    var storeVm = Provider.of<StoreController>(context,listen: false);
    return Center(
      child: ElevatedButton(onPressed: (){

        storeVm.changeStatus(widget.index);
      }, child: Text('Change status')),
    );
  }
}
