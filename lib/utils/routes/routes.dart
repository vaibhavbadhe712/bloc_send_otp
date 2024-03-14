// import 'package:go_router/go_router.dart';
// import 'package:salesman_app/presentation/group_screen/group_screen.dart';
// import 'package:salesman_app/presentation/home_screen/home_screen.dart';
// import 'package:salesman_app/presentation/order_screen/order_screen.dart';
// import 'package:salesman_app/presentation/shoping_cart_screen/shoping_cart_screen.dart';
// import 'package:salesman_app/presentation/verify_otp_screen/verify_otp_screen.dart';

// import '../../presentation/send_otp_screen/send_otp_screen.dart';
// import '../preferences/local_preferences.dart';

// class Routes {
//   static String initalRoute = '/';
//   static String sendOtp = '/sendOtp-screen';
//   static String otpScreen = '/Otp-screen';
//   static String groupScreen = '/group-screen';
//   static String homeScreen = '/home-screen';
//   static String orderScreen = '/order-screen';
//   static String shopingCart = "/shoping-cart";

//   GoRouter get router => _goRouter;

//   late final GoRouter _goRouter = GoRouter(
//     initialLocation: _determineInitialLocation(),
//     routes: [
//       GoRoute(
//         path: sendOtp,
//         builder: (context, state) => const SendOtpScreen(),
//       ),
//       GoRoute(
//           path: otpScreen,
//           builder: (context, state) {
//             var item = state.extra as Map<String, dynamic>;
//             String phoneNumber = item['phoneNumber'];
//             return OtpScreen(
//               phoneNumber: phoneNumber,
//             );
//           }),
//       GoRoute(
//         path: groupScreen,
//         builder: (context, state) => const GroupScreen(),
//       ),
//       GoRoute(
//         path: homeScreen,
//         builder: (context, state) => const HomeScreen(),
//       ),
//       GoRoute(
//         path: orderScreen,
//         builder: (context, state) => const OrderScreen(
//           index: 0,
//         ),
//       ),
//       GoRoute(
//         path: shopingCart,
//         builder: (context, state) {
//           var item = state.extra as Map<String, dynamic>;
//           int cartId = item['cartId'];
//           int productcode = item['productcode'];
//           print("routes..............${cartId}${productcode}");
//           return ShopingCart(
//             cartId: cartId,
//           );
//         },
//       ),
//     ],
//   );

//   String _determineInitialLocation() {
//     final token = LocalStorageUtils.instance.getString('refreshToken');
//     if (token != null && token.isNotEmpty) {
//       return Routes.groupScreen;
//     }
//     return Routes.sendOtp;
//   }
// }
