import 'package:http/http.dart' as http;
import 'dart:convert';

class NetworkHelper {
  final String url;

  NetworkHelper(this.url);

  Future getData() async {
    http.Response res = await http.get(url);

    if (res.statusCode == 200) {
      String data = res.body;
      return jsonDecode(data);
    } else {
      print(res.statusCode);
    }
//
//    if (response.statusCode == 200) {
//      var data = response.body;
//      var decodedData = jsonDecode(data); //"status": "Success"
//      String postResult = decodedData['status'];
//      if (postResult == "Success") {
//        http.Response getResponse = await http.get(url);
//
//        if (getResponse.statusCode == 200) {
//          var getData = getResponse.body;
//          var getDecodedData = jsonDecode(getData);
//          double value = getDecodedData['value'];
//        }
//      }
//    }
  }
}
