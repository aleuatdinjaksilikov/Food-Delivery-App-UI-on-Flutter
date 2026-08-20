import 'package:food_delivery_app_ui/core/models/user_model.dart';

class AuthTokens {
  final String accessToken;
  final String refreshToken;
  final User user;

  AuthTokens({required this.accessToken, required this.refreshToken, required this.user});
}