
import 'package:basic_intigration_with_bloc/presentation/otpscreen.dart';
import 'package:basic_intigration_with_bloc/presentation/splashscreen.dart';
import 'package:go_router/go_router.dart';

class Routes {
  static const String splachScreen = "/splash-screen";
  static const String otpScreen = "/home-screen";
  // static const String personalInformation = "/personalInformation-screen";
  // static const String studentRegistration = '/studentRegistration';
  // static const String courseDetails = '/courseDetails';
  // static const String familyDetails = '/familyDetails';
  // static const String contactDetails = '/contactDetails';
  // static const String profileScreen = '/profileScreen';
  // static const String documentScreen = '/documentScreen';
  GoRouter get router => _goRouter;

  late final GoRouter _goRouter =
      GoRouter(initialLocation: splachScreen, routes: [
    GoRoute(
      path: splachScreen,
      builder: (context, state) => const PhoneNumberScreen(),
    ),
    GoRoute(
      path: otpScreen,
      builder: (context, state) => const OtpScreen(),
    ),
    // GoRoute(
    //   path: personalInformation,
    //   builder: (context, state) => PersonalInformation(),
    // ),
    // GoRoute(
    //   path: studentRegistration,
    //   builder: (context, state) => const StudentRegistration(),
    // ),
    // GoRoute(
    //   path: courseDetails,
    //   builder: (context, state) => const CourseDetails(),
    // ),
    // GoRoute(
    //   path: familyDetails,
    //   builder: (context, state) => const FamilyDetails(),
    // ),
    // GoRoute(
    //   path: contactDetails,
    //   builder: (context, state) => const ContactDetails(),
    // ),
    // GoRoute(
    //   path: documentScreen,
    //   builder: (context, state) => const DocumentScreen(),
    // ),
  ]);
}
