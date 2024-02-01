import 'package:get/get.dart';
import 'package:getx_mvvm/data/repository/home/home_repository.dart';
import 'package:getx_mvvm/data/response/status.dart';
import 'package:getx_mvvm/model/home/user_list_model.dart';

class HomeController extends GetxController {
  final _api = HomeRepository();

  final rxRequestStatus = Status.LOADING.obs;
  final userList = UserListModel().obs;
  RxString error = ''.obs;

  void setRxRequestStatus(Status requestValue) =>
      rxRequestStatus.value = requestValue;
  void setUserList(UserListModel listValue) => userList.value = listValue;
  void setError(String errorValue) => error.value = errorValue;

  void userListApi() {
    _api.userListApi().then((value) {
      setRxRequestStatus(Status.COMPLETED);
      setUserList(value);
    }).onError((error, stackTrace) {
      setError(error.toString());

      setRxRequestStatus(Status.ERROR);
    });
  }
}
