import 'package:recipe/model/recipe_model.dart';

import '../../../res/app_url/app_url.dart';
import '../../network/network_api_services.dart';

class HomeRepository {
  final _apiService = NetworkApiServices();

  Future<RecipeModel> userListApi() async {
    dynamic response = await _apiService.getApi(AppUrl.url);
    return RecipeModel.fromJson(response);
  }
}
