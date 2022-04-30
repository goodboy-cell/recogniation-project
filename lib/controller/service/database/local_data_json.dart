import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import '../../../model/detailsModel.dart';


List nameImage =[

  'lib/shared/local json/classification.json',


];

class DetailsDataServes {
  Future<String> getJson({@required String path}) {
    return rootBundle.loadString(path);
  }

  Future<List<List<DetailsModel>>> detailsDataPlant() async {
    List<DetailsModel> detailsModel = [];
    List<List<DetailsModel>> details = [];

    var data;

    for(int i=0;i<nameImage.length;i++){
      detailsModel = [];
      data = await json.decode(await getJson(path: nameImage[i]));
      for (final res in data) {
        if (res != null) {
          detailsModel.add(DetailsModel.fromJson(res));
        }
      }
      details.add(detailsModel);
    }

    return details;
  }

  Future<List<DetailsModel>> detailsData(int index) async {
    List<DetailsModel> detailsModel = [];


    var data;
    data = json.decode(await getJson(path: nameImage[index]));
    for (final res in data) {
      if (res != null) {
        detailsModel.add(DetailsModel.fromJson(res));
      }
    }

    return detailsModel;
  }

}
