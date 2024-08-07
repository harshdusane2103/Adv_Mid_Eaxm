import 'dart:convert';

import 'package:http/http.dart';
import 'package:http/http.dart' as http;

class ApiHelper
{
  static ApiHelper apiHelper= ApiHelper._();
  ApiHelper._();
  Future<Map> FetchData()
  async {
    String data="https://fakestoreapi.com/products?_gl=1*19868bv*_ga*MTc2OTQ1NzkxNC4xNzE4Nzg2Mzk5*_ga_ZCYG64C7PL*MTcyMzAxNTg2Mi44LjEuMTcyMzAxNTg2My4wLjAuMA..";
    Uri url=Uri.parse(data);
    Response response= await http.get(url);
    if(response.statusCode==200)
      {
        final json=response.body;
        Map data=jsonDecode(json);

        return data;
      }
     else
       {
         return{};

       }
  }

}