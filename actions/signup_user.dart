// Custom Action: signup_user.dart

import 'package:supabase_flutter/supabase_flutter.dart';

Future<String?> signupUser(String email, String password) async {
  try {
    final response = await Supabase.instance.client.auth.signUp(
      email: email,
      password: password,
    );

    // إذا تم التسجيل بنجاح، نعيد الـ ID
    return response.user?.id;
  } catch (error) {
    return 'فشل إنشاء الحساب: ${error.toString()}';
  }
}
