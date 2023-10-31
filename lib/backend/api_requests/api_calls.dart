import 'dart:convert';
import 'dart:typed_data';

import '../../flutter_flow/flutter_flow_util.dart';

import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class GetPredictionCall {
  static Future<ApiCallResponse> call({
    int? age = 48,
    int? sex = 1,
    int? cp = 4,
    int? bp = 122,
    int? chol = 230,
    int? fbs = 1,
    int? ekg = 2,
    int? maxhr = 142,
    int? exang = 0,
    double? stdep = 0,
    int? slopest = 1,
    int? numves = 0,
    int? thal = 3,
  }) {
    final body = '''
{
  "Age": ${age},
  "Sex": ${sex},
  "CP": ${cp},
  "BP": ${bp},
  "Cholesterol": ${chol},
  "FBS": ${fbs},
  "EKG": ${ekg},
  "MaxHR": ${maxhr},
  "Exang": ${exang},
  "STdep": ${stdep},
  "SlopeST": ${slopest},
  "NumVessel": ${numves},
  "Thallium": ${thal}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'GetPrediction',
      apiUrl:
          'https://heart-disease-prediction-seng.onrender.com/heart_disease_prediction',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: body,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list);
  } catch (_) {
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar) {
  jsonVar ??= {};
  try {
    return json.encode(jsonVar);
  } catch (_) {
    return '{}';
  }
}
