import 'dart:convert';
import 'package:http/http.dart';
import '../ModelClass/EBookModel.dart';
import 'api_client.dart';

class EbookApi {
  ApiClient apiClient = ApiClient();
  Future<List<EBookModel>> getEbook() async {
    String trendingpath =
        'https://all-books-api.p.rapidapi.com/getBooks';
    var body = {
    };
    Response response = await apiClient.invokeAPI(trendingpath, 'GET',body);

    return EBookModel.listFromJson(jsonDecode(response.body));
  }
}