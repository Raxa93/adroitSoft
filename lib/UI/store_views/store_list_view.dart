// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:video_example/UI/constants/app_colors.dart';
import 'package:video_example/UI/store_views/specific_store_view.dart';

class StoreListView extends StatefulWidget {
  const StoreListView({Key? key}) : super(key: key);

  @override
  _StoreListViewState createState() => _StoreListViewState();
}

class _StoreListViewState extends State<StoreListView> {
  List<String> storeName = ['Ali Store', 'Zain Store', 'Husnain Store'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.kButtonBlackColor,
        title: const Text(
          'Select Store',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: ListView.builder(
          itemCount: 3,
          itemBuilder: (context, index) {
            return ListTile(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) =>
                        SpecificStoreView(storeName: storeName[index].toString(), lastCheckIn: '27-6-2022 21:43 ')));
              },
              title: Text(storeName[index].toString()),
              subtitle: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Last check-In',
                    style: TextStyle(color: Colors.black),
                  ),
                  const Text('27-6-2022 21:43 ')
                ],
              ),
            );
          }),
    );
  }
}
