import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

import '../DI/module.dart';
import '../domain/AppRepository.dart';


class UrlList extends StatefulWidget {
  Map<String, String> urls = {};
  UrlList(Map<String, String> urlsL) {
    this.urls=urlsL;
  }

  @override
  _UrlListState createState() {
    List<String> keyList = [];



    return _UrlListState(urls);
  }

}
class _UrlListState extends State<UrlList> {
  Map<String, String> urlsL={};
  List<String> keyListS = [];
  List<String> keyValue = [];
  int selectedIndex = -1;

  _UrlListState(Map<String, String> urls ) {
    this.urlsL=urls;
    urls.forEach((key, value) {
      keyListS.add(key);
      keyValue.add(value);
    });
  }

  @override
  Widget build(BuildContext context) {


    return Padding(
      padding: const EdgeInsets.only(top: 50, bottom:10, left:10, right:10),
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
                selectedIndex==-1?"Не выбрано": "Выбрано: ${keyListS[selectedIndex]}",
                style: TextStyle(fontSize: 20)),

            Expanded(child: ListView.builder(
              itemCount: keyListS.length,
              itemBuilder: _createListView,
            )),
            Expanded(
                flex:1,
                child: Image.network(keyValue[selectedIndex==-1?0:selectedIndex])
            )
          ]),
    );
  }

  Widget _createListView(BuildContext context, int index) {

    return GestureDetector(
      onTap: () {
        setState(() {
          // устанавливаем индекс выделенного элемента
          selectedIndex = index;
        });
      },
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 4),
        padding: EdgeInsets.symmetric(vertical: 8),
        color: index == selectedIndex ?
        Colors.green:
        Colors.black12,
        child: Text(keyListS[index], style: TextStyle(fontSize: 24)),
      ),
    );
  }
}