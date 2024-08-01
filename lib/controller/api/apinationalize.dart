import 'dart:convert';
import 'dart:developer';

import 'package:http/http.dart' as http;
class Apinationalize{
  static Future<dynamic> apinationalize()async{
    try{
      log("............151.......");
      var url ="https://api.nationalize.io?name=nathaniel";
      Uri uri=Uri.parse(url);
      var response = await http.get(uri);
      // log("${response.body}");
      // log("''''''''message''''''''");
      if(response.statusCode==200){
        var data =jsonDecode(response.body);
        log("${data['country'][2]['probability']}");
        //log("===========11111========");
        return data;
      }else{
        log("......Worng Response");
      }
    }catch(e){
      log("error :$e");
    }
    return "failed";
    }
}