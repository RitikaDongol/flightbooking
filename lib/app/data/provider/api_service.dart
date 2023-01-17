import 'dart:io';

import 'package:albetro/app/core/p.dart';
import 'package:http/http.dart' as http;

import 'dart:convert';

import '../../core/utils/responses.dart';

class ApiProvider {
  final String _airLabBaseUrl = "https://airlabs.co/api/v9/";
  final String _airLabKey = "d0391387-adfd-48b1-81b7-e8d47af21c87";
  HttpClient client = HttpClient();

  Future<dynamic> getCity(
    String city,
  ) async {
    Responses responseJson;
    try {
      print(
          'flightx ${_airLabBaseUrl + 'suggest?q=' + city + '&api_key=' + _airLabKey}');
      final response = await http.get(
        Uri.parse(
            _airLabBaseUrl + 'suggest?q=' + city + '&api_key=' + _airLabKey),
        headers: {"Content-Type": "application/x-www-form-urlencoded"},
      );

      if (response.statusCode == 200) {
        responseJson = Responses(
            statusCode: '200',
            data: jsonDecode(response.body),
            message: 'success');
      } else {
        responseJson = Responses(
            statusCode: response.statusCode.toString(),
            message: jsonDecode(response.body));
      }
    } on SocketException {
      responseJson = Responses(
          message: "No Internet connection, try again",
          statusCode: "502",
          data: "502");
    }
    return responseJson;
  }

  Future<dynamic> getFlight() async {
    Responses responseJson;
    String depIata = P.dashboard.flyingFrom!.iata_code!;
    String arrIata = P.dashboard.flyingTo!.iata_code!;
    try {
      final response = await http.get(
        Uri.parse(_airLabBaseUrl +
            'schedules?dep_iata=' +
            depIata +
            '&arr_iata=' +
            arrIata +
            '&api_key=' +
            _airLabKey),
        headers: {"Content-Type": "application/x-www-form-urlencoded"},
      );

      if (response.statusCode == 200) {
        responseJson = Responses(
            statusCode: '200',
            data: jsonDecode(response.body),
            message: 'success');
      } else {
        responseJson = Responses(
            statusCode: response.statusCode.toString(),
            message: jsonDecode(response.body));
      }
    } on SocketException {
      responseJson = Responses(
          message: "No Internet connection, try again",
          statusCode: "502",
          data: "502");
    }
    return responseJson;
  }

  Future<dynamic> getAirline(iata) async {
    Responses responseJson;

    try {
      final response = await http.get(
        Uri.parse(_airLabBaseUrl +
            'airlines?iata_code=' +
            iata +
            '&api_key=' +
            _airLabKey),
        headers: {"Content-Type": "application/x-www-form-urlencoded"},
      );

      if (response.statusCode == 200) {
        responseJson = Responses(
            statusCode: '200',
            data: jsonDecode(response.body),
            message: 'success');
      } else {
        responseJson = Responses(
            statusCode: response.statusCode.toString(),
            message: jsonDecode(response.body));
      }
    } on SocketException {
      responseJson = Responses(
          message: "No Internet connection, try again",
          statusCode: "502",
          data: "502");
    }
    return responseJson;
  }
}
