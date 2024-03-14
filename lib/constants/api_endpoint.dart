
import 'package:basic_intigration_with_bloc/model/api_base_model.dart';

class ApiEndPoints {
  ApiBaseModel? apiBaseModel;

  ApiEndPoints({this.apiBaseModel}) {
    if (apiBaseModel == null) {}
  }

  late String baseUrl = apiBaseModel?.commerceUrl ?? "";
  late String authBaseUrl = apiBaseModel?.authUrl ?? "";
  late String gatewayBaseUrl = apiBaseModel?.gatewayUrl ?? "";
  late String memberBaseUrl = apiBaseModel?.memberUrl ?? "";
  late String paymentBaseUrl = apiBaseModel?.paymentUrl ?? "";
  late String imageUploadBaseUrl = apiBaseModel?.imageUploadUrl ?? "";
  late String imageResizeBaseUrl = apiBaseModel?.imageResizeUrl ?? "";
  late String version = apiBaseModel?.version ?? "";
  late int groupId = apiBaseModel?.groupId ?? 1707391460137;

  // User Registration
  late String registrationUser =
      "$gatewayBaseUrl/academic-service/studentAdmission/data/save";
      late String sendotp="https://gxppcdmn7h.execute-api.ap-south-1.amazonaws.com/authgw/sendOtp";
  late String getReligion = "$gatewayBaseUrl/academic-service/religion/all";
  late String memberSave = "$gatewayBaseUrl/authgw/user/link/save";
  late String filterByCourseId =
      "https://rt0vu6tjkl.execute-api.ap-south-1.amazonaws.com/academic-service/classes/getAllUsingLink/getByGroupId/";
  // late String getCoursesByGroupId = 
}
