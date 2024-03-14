import 'package:flutter/material.dart';

class TextFieldsState {
  final TextEditingController firstNameController = TextEditingController();
  final TextEditingController lastNameController = TextEditingController();
  final TextEditingController middleNameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController phoneNumberController = TextEditingController();
  final TextEditingController fatherNameController = TextEditingController();
  final TextEditingController fatherPhoneNumberController =
      TextEditingController();
  final TextEditingController motherPhoneNumberController =
      TextEditingController();
  final TextEditingController emergencyContactnameController =
      TextEditingController();
  final TextEditingController emergencyContactnumberController =
      TextEditingController();
  final TextEditingController motherNameController = TextEditingController();
  final TextEditingController locationController = TextEditingController();
  final TextEditingController phonenumberController = TextEditingController();
  final TextEditingController emailcontroller = TextEditingController();
  final TextEditingController whatsappController = TextEditingController();
  
  // Singleton
  static final TextFieldsState _instance = TextFieldsState._internal();

  factory TextFieldsState() {
    return _instance;
  }

  TextFieldsState._internal();
  void resetControllers() {
    firstNameController.clear();
    lastNameController.clear();
    middleNameController.clear();
    emailController.clear();
    phoneNumberController.clear();
    fatherNameController.clear();
    fatherPhoneNumberController.clear();
    motherPhoneNumberController.clear();
    emergencyContactnameController.clear();
    motherNameController.clear();
    locationController.clear();
    phonenumberController.clear();
    whatsappController.clear();
    emailcontroller.clear();
    
  }
}
