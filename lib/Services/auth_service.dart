// berisi request yang diperlukan mengenai autentifikasi
import 'dart:convert';

import 'package:bank_sha/Models/signUp_Form_Model.dart';
import 'package:bank_sha/Models/user_model.dart';
import 'package:bank_sha/Services/sign_in_form_model.dart';
import 'package:bank_sha/Shared/shared_values.dart';
import 'package:http/http.dart' as http;

class AuthService {
  Future<bool> checkEmail(String email) async {
    try {
      final res = await http.post(
        Uri.parse(
          '$baseUrl/is-email-exist',
        ),
        body: {
          'email': email,
        },
      );

      if (res.statusCode == 200) {
        return jsonDecode(res.body)['is_email_exist'];
      } else {
        return jsonDecode(res.body)['error'];
      }
    } catch (e) {
      rethrow;
    }
  }

  Future<UserModel> register(SignupFormModel data) async {
    try {
      final res = await http.post(
        Uri.parse('$baseUrl/register'),
        body: data.toJson(),
      );
      if (res.statusCode == 200) {
        UserModel user = UserModel.fromJson(jsonDecode(res.body));
        user = user.copyWith(password: data.password);

        return user;
      } else {
        throw jsonDecode(res.body)['message'];
      }
    } catch (e) {
      rethrow;
    }
  }

  Future<UserModel> login(SignInFormModel data) async {
    try {
      final res = await http.post(
        Uri.parse('$baseUrl/login'),
        headers: {
          'Content-Type': 'application/json',
        },
        body: jsonEncode(data.tojson()),
      );

      print(res.body);
      if (res.statusCode == 200) {
        UserModel user = UserModel.fromJson(jsonDecode(res.body));
        user = user.copyWith(email: data.email, password: data.password);

        return user;
      } else {
        throw jsonDecode(res.body)['message'];
      }
    } catch (e) {
      rethrow;
    }
  }
}
