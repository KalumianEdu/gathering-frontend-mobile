import 'dart:io';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

String baseUrl = "";

Future<void> login(String email, String password) async {
  var client = http.Client();
  String url = baseUrl + "";
  var response = await client.post(
    Uri.http(url),
    body: {"email": email, "password": password},
  );
  
}
