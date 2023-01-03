import 'dart:convert';

// import 'package:http/http.dart' as http;
import 'package:provider_learn/model.dart';
import 'package:http/http.dart' as http;
// ignore: unused_import
import 'package:provider_learn/models/getapi.dart';

class DataChahye {
  Future<List<Get>> getdata() async {
    // inintalization ma empty list pass krraha hun//
    List<Get> listformdata = [];
    try {
      var request = http.Request(
          'GET', Uri.parse('https://jsonplaceholder.typicode.com/posts'));

      http.StreamedResponse response = await request.send();

      if (response.statusCode == 200) {
        //raw data ma api qala data ako sve kia//
        var myData = await response.stream.bytesToString();

        //phir usko decode kia list ko form ma q k data list ko form ma ha// deceode bhi zarori ha data khin encode hi na ho
        List<dynamic> data = jsonDecode(myData);

        data.forEach((element) {
          //now we convert our data model in model//
          Get model = Get.fromJson(element);
          //now we add our model in data type that we define in datatype in upper listformdata//
          listformdata.add(model);
        });
      } else {
        print(response.reasonPhrase);
      }
    } catch (e) {
      print("Exception throw data $e");
    }
    return listformdata;
  }
}
