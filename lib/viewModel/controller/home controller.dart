import 'package:get/get.dart';
import '../../data/repository/home_repository/hone_repository.dart';
import '../../data/response/status.dart';
import '../../model/recipe_model.dart';

class HomeController extends GetxController {
  @override
  onInit() {
    userListApi();
    super.onInit();
  }

  final _api = HomeRepository();

  final rxRequestStatus = Status.LOADING.obs;

  final userList = RecipeModel().obs;

  RxString error = ''.obs;

  void setRxRequestStatus(Status _value) => rxRequestStatus.value = _value;

  void setUserList(RecipeModel _value) => userList.value = _value;

  void setError(String _value) => error.value = _value;

  void userListApi() {
    print(userList);
    //  setRxRequestStatus(Status.LOADING);

    _api.userListApi().then((value) {
      setRxRequestStatus(Status.COMPLETE);
      setUserList(value);
    }).onError((error, stackTrace) {
      setError(error.toString());
      setRxRequestStatus(Status.ERROR);
    });
  }

  void refreshApi() {
    setRxRequestStatus(Status.LOADING);

    _api.userListApi().then((value) {
      setRxRequestStatus(Status.COMPLETE);
      setUserList(value);
    }).onError((error, stackTrace) {
      setError(error.toString());
      setRxRequestStatus(Status.ERROR);
    });
  }

  void navigateToBottom(){
    Get.toNamed('/main_screen');
  }

// Future<RecipeModel?> getRecipeApi() async {
//   final response = await http.get(Uri.parse(AppUrl.url));
//   var data = jsonDecode(response.body.toString());
//   print(data);
//   if (response.statusCode == 200) {
//     return RecipeModel.fromJson(data);
//   }else{
//     throw InvalidUrlException('');
//   }
// }
}
