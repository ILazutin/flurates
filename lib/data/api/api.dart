import 'package:http/http.dart' as http;
import 'package:flurates/data/api/rate_dto.dart';
import 'dart:convert';

class Api {
  static const String _URL = 'https://www.cbr-xml-daily.ru/daily_json.js';

  Future<List<RateDto>> getRates() async {

    try {
      final response = await http.get(_URL);

      if (response.statusCode == 200) {
        var body = json.decode(response.body);
        var rates = Map<String, dynamic>.from(body['Valute']);

        var rateList = rates.keys.toList().map((key) {
          return RateDto(
              code: key,
              name: rates[key]['Name'],
              date: body['Date'],
              value: rates[key]['Value'] / rates[key]['Nominal'],
              previous: rates[key]['Previous'] / rates[key]['Nominal']
          );
        }).toList();

        return rateList;

      } else {
        var decoded = json.decode(response.body);
        throw Exception(decoded['message']);
      }
    } catch(e) {
      return null;
    }
  }

}
