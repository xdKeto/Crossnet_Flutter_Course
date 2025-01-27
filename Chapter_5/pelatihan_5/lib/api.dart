import 'dart:async';
import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:pelatihan_5/class_api.dart';

String urlApi = "https://dummyjson.com/products";

Future<ResponseRequestAPI> connectApi(
    String url, String method, dynamic body) async {
  if (method == "post") {
    final response = await http.post(Uri.parse(urlApi + url), body: body);
    // print("URL : " + urlApi + url);
    if (response.statusCode == 200) {
      Map json = jsonDecode(response.body);
      ResponseRequestAPI responseRequest = ResponseRequestAPI(
          status: response.statusCode,
          message: json['message'],
          data: json['products']);
      return responseRequest;
    } else {
      Map json = jsonDecode(response.body);
      ResponseRequestAPI responseRequest = ResponseRequestAPI(
          status: response.statusCode,
          message: json['message'],
          data: json['products']);
      return responseRequest;
    }
  } else if (method == "get") {
    // print(urlApi + url);
    final response = await http.get(Uri.parse(urlApi + url));
    // print(response);
    if (response.statusCode == 200) {
      Map json = jsonDecode(response.body);
      ResponseRequestAPI responseRequest = ResponseRequestAPI(
          status: response.statusCode,
          message: json['message'],
          data: json['products']);
      return responseRequest;
    } else {
      Map json = jsonDecode(response.body);
      ResponseRequestAPI responseRequest = ResponseRequestAPI(
          status: response.statusCode,
          message: json['message'],
          data: json['data']);
      return responseRequest;
    }
  } else if (method == "put") {
    final response = await http.put(Uri.parse(urlApi + url), body: body);
    if (response.statusCode == 200) {
      Map json = jsonDecode(response.body);
      ResponseRequestAPI responseRequest = ResponseRequestAPI(
          status: response.statusCode,
          message: json['message'],
          data: json['data']);
      return responseRequest;
    } else {
      Map json = jsonDecode(response.body);
      ResponseRequestAPI responseRequest = ResponseRequestAPI(
          status: response.statusCode,
          message: json['message'],
          data: json['data']);
      return responseRequest;
    }
  } else {
    final response = await http.delete(Uri.parse(urlApi + url), body: body);
    if (response.statusCode == 200) {
      Map json = jsonDecode(response.body);
      ResponseRequestAPI responseRequest = ResponseRequestAPI(
          status: response.statusCode,
          message: json['message'],
          data: json['data']);
      return responseRequest;
    } else {
      Map json = jsonDecode(response.body);
      ResponseRequestAPI responseRequest = ResponseRequestAPI(
          status: response.statusCode,
          message: json['message'],
          data: json['data']);
      return responseRequest;
    }
  }
}