import 'package:basic_intigration_with_bloc/constants/api_endpoint.dart';
import 'package:basic_intigration_with_bloc/main.dart';
import 'package:basic_intigration_with_bloc/utils/lobic/sendotp/sedotp_state.dart';
import 'package:bloc/bloc.dart';
import 'package:basic_intigration_with_bloc/utils/api/api_base.dart';
import 'package:flutter/material.dart';


class SendOtpCubit extends Cubit<SendOtpState> {
  final ApiBase _apiBase = ApiBase();

  SendOtpCubit() : super(SendCubitInitial());

  void sendOtp({required BuildContext context, required String number}) async {
    var payload = {"phoneNumber": number, "groupId": 1703228300417};

    emit(SendCubitLodding());
    try {
      await _apiBase.post(apiEndpoints.sendotp, payload, (data) {
        emit(SendCubitLodded());
        
      }, (error) {
        emit(SendCubitError());
      });
    } catch (e) {
      emit(SendCubitError());
    }
  }
}
