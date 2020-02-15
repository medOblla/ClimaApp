import 'package:clima/utilities/imports.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class NetworkHelper{

final String url ;

NetworkHelper(this.url);

Future getData() async {
  http.Response response = await http.get(url);

  switch (response.statusCode) {
    case 200:
      var data = response.body;
      return jsonDecode(data);
      break;
  }
}

}
