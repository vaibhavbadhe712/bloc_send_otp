import 'package:basic_intigration_with_bloc/utils/lobic/sendotp/sendotp_cubit%20.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:basic_intigration_with_bloc/utils/lobic/sendotp/sedotp_state.dart';

class PhoneNumberScreen extends StatefulWidget {
  const PhoneNumberScreen({Key? key}) : super(key: key);

  @override
  State<PhoneNumberScreen> createState() => _PhoneNumberScreenState();
}

class _PhoneNumberScreenState extends State<PhoneNumberScreen> {
  final formKey = GlobalKey<FormState>();
  final phoneNumberController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocListener<SendOtpCubit, SendOtpState>(
      listener: (context, state) {
        if (state is SendCubitSuccess) {
          // Handle success state
          // Example: Navigate to next screen
        } else if (state is SendCubitError) {
          // Handle error state
          // Example: Show snackbar with error message
        }
      },
      child: SafeArea(
        child: Scaffold(
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Your UI elements go here
                Form(
                  key: formKey,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  child: TextFormField(
                    controller: phoneNumberController,
                    decoration: InputDecoration(
                      hintText: 'Enter Phone Number',
                    ),
                    keyboardType: TextInputType.number,
                    inputFormatters: [
                      LengthLimitingTextInputFormatter(10),
                      FilteringTextInputFormatter.digitsOnly,
                    ],
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter a valid phone number';
                      }
                      if (value.length != 10) {
                        return 'Please enter a 10-digit phone number';
                      }
                      return null;
                    },
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    if (formKey.currentState!.validate()) {
                      final phoneNumber = phoneNumberController.text.trim();
                      if (phoneNumber.isNotEmpty) {
                        // Call sendOtp method from cubit
                        context.read<SendOtpCubit>().sendOtp(
                              context: context,
                              number: phoneNumber,
                            );
                        // Clear focus
                        FocusScope.of(context).unfocus();
                      }
                    }
                  },
                  child: Text('Send OTP'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
