import 'package:supabase_flutter/supabase_flutter.dart';

Future<String?> loginUser(String email, String password) async {
  try {
    final response = await Supabase.instance.client.auth.signInWithPassword(
      email: email,
      password: password,
    );

    // إذا تم تسجيل الدخول بنجاح، نعيد الـ ID
    return response.user?.id;
  } catch (error) {
    // نعيد رسالة الخطأ لعرضها في التطبيق
    return 'فشل تسجيل الدخول: ${error.toString()}';
  }
}

