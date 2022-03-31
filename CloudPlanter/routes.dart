import 'package:myapp/pages/home.dart';
import 'package:myapp/pages/sign_in/sign_in.dart';
import 'package:myapp/pages/sign_up/sign_up.dart';

/// 静态路由
var staticRoutes = {
  "/sign-in": (context) => SignInPage(), // 登录
  "/sign-up": (context) => const SignUpPage(), // 注册
  "/home-page": (context) => const HomePage(), // 进入主界面
};
