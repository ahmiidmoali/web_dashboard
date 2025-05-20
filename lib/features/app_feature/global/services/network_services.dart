import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart' as http;
import 'package:path/path.dart';

import '../functions/fetch_remote_data.dart';

abstract class NetworkServices {
  Future<dynamic> postCheckSuccess({required String link, required Map body});
  Future<dynamic> postGetData({required String link, required Map body});
  Future<dynamic> postHomeData({required String link, required Map body});
  Future<dynamic> postRequestWithOneImage(url, data, File? image,
      [String? namerequest]);
}

class NetworkServicesImp extends NetworkServices {
  @override
  Future<dynamic> postCheckSuccess(
      {required String link, required Map body}) async {
    final response = await http.post(Uri.parse(link), body: body);

    try {
      if (response.statusCode == 200) {
        final data = jsonDecode(response.body);

        if (data["status"] == "success") {
          return RequestResult.success;
        } else if (data["status"] == "failure") {
          return RequestResult.failure;
        }
        return RequestResult.failure;
      } else {
        throw Exception(
            'API request failed with status code ${response.statusCode}');
      }
    } catch (e) {
      return RequestResult.exception;
    }
  }

  @override
  Future<dynamic> postGetData({required String link, required Map body}) async {
    final response = await http.post(Uri.parse(link), body: body);
    print(response.body);

    try {
      if (response.statusCode == 200) {
        Map responsebody = jsonDecode(response.body);
        print("-------------------------------------");
        print("data : $responsebody");
        if (responsebody['status'] == "success") {
          if (responsebody['data'] == null) {
            return [];
          } else {
            return responsebody['data'];
          }
        } else {
          return [];
        }
      } else {
        throw Exception(
            'API request failed with status code ${response.statusCode}');
      }
    } catch (e) {
      throw Exception(
          'API request failed with status code ${response.statusCode}');
    }
  }

  @override
  Future<Map<dynamic, dynamic>> postHomeData(
      {required String link, required Map body}) async {
    final response = await http.post(Uri.parse(link), body: body);

    if (response.statusCode == 200) {
      Map responsebody = jsonDecode(response.body);
      print("-------------------------------------");
      print("data : $responsebody");
      if (responsebody['status'] == "success") {
        return responsebody;
      } else {
        return {};
        // throw Exception('API request failed: {data[message]}');
      }
    } else {
      throw Exception(
          'API request failed with status code ${response.statusCode}');
    }
  }

  @override
  Future<dynamic> postRequestWithOneImage(url, data, File? image,
      [String? namerequest]) async {
    namerequest ??= "imagename";

    var uri = Uri.parse(url);
    var request = http.MultipartRequest("POST", uri);
    // request.headers.addAll(_myheaders);

    if (image != null) {
      var length = await image.length();
      var stream = http.ByteStream(image.openRead());
      stream.cast();
      var multipartFile = http.MultipartFile(namerequest, stream, length,
          filename: basename(image.path));
      request.files.add(multipartFile);
    }

    try {
      // add Data to request
      data.forEach((key, value) {
        request.fields[key] = value;
      });
      // add Data to request
      // Send Request
      var myrequest = await request.send();
      // For get Response Body
      var response = await http.Response.fromStream(myrequest);
      if (response.statusCode == 200) {
        final data = jsonDecode(response.body);

        if (data["status"] == "success") {
          return RequestResult.success;
        } else if (data["status"] == "failure") {
          return RequestResult.failure;
        }
        return RequestResult.failure;
      } else {
        throw Exception(
            'API request failed with status code ${response.statusCode}');
      }
    } catch (e) {
      throw Exception('API request failed with status code $e');
    }
  }
}
