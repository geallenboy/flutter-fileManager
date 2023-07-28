import 'package:flutter/material.dart';
import 'package:shirin_meva_demo_ui/assets/colors/colors.dart';
import 'package:shirin_meva_demo_ui/assets/constants/icons.dart';
import 'package:shirin_meva_demo_ui/features/auth/presentations/widgets/and_widget.dart';
import 'package:shirin_meva_demo_ui/features/auth/presentations/widgets/back_and_logo_widget.dart';
import 'package:shirin_meva_demo_ui/features/auth/presentations/widgets/big_text.dart';
import 'package:shirin_meva_demo_ui/features/auth/presentations/widgets/checkbox_widget.dart';
import 'package:shirin_meva_demo_ui/features/auth/presentations/widgets/logIn_button_widget.dart';
import 'package:shirin_meva_demo_ui/features/auth/presentations/widgets/logout_button_widget.dart';
import 'package:shirin_meva_demo_ui/features/auth/presentations/widgets/registr_widget.dart';
import 'package:shirin_meva_demo_ui/features/auth/presentations/widgets/row_text_widget.dart';
import 'package:shirin_meva_demo_ui/features/auth/presentations/widgets/small_text_widget.dart';
import 'package:shirin_meva_demo_ui/features/auth/presentations/widgets/tab_bar_widget.dart';
import 'package:shirin_meva_demo_ui/features/auth/presentations/widgets/white_container_widgtes.dart';

class AuthPage extends StatefulWidget {
  const AuthPage({Key? key}) : super(key: key);

  @override
  State<AuthPage> createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage>
    with SingleTickerProviderStateMixin {
  static const routeName = '/login-screen';

  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  late TabController tabController;

  @override
  void initState() {
    tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    tabController.dispose();
  }

  bool? isCheck = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: green1,
      body: Container(
        decoration: BoxDecoration(
          color: green1,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            //bottom logo
            Expanded(
              flex: 2,
              child: BackAndIconWidget(
                  image1: AppIcons.back_icon, image2: AppIcons.logo_auth),
            ),
            Expanded(
              flex: 7,
              child: MainContainerWidgets(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    BoldText(text: 'Кириш'),
                    TabBarWidgets(tabController: tabController),
                    SmalText(text: 'Телефон рақамингиз'),
                    AppTextFiled(
                      textEditingController: emailController,
                      hintText: 'Email',
                      icon: AppIcons.call_icon,
                      isObscure: true,
                    ),
                    RowTextWidget(
                        text1: "Паролингиз", text2: "Паролни унутдингизми?"),
                    AppTextFiled(
                      textEditingController: passwordController,
                      hintText: 'Password',
                      icon: AppIcons.key_icon,
                      isObscure: false,
                    ),
                    CheckBoxWidget(isSelected: false),
                    LogInButton(),
                    SizedBox(height: 10),
                    AndWidget(),
                    SigUpButtonWidget(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
