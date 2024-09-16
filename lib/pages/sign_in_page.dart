import 'package:csinetagan/cummons/info.dart';
import 'package:csinetagan/sources/auth_source.dart';
import 'package:csinetagan/widgets/button_primary.dart';
import 'package:csinetagan/widgets/input_widget.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  final edtEmail = TextEditingController();
  final edtPassword = TextEditingController();

  masukAkun() {
    if (edtEmail.text == '') return Info.error('email anda masih kosong!');
    if (edtPassword.text == '') return Info.error('masukan password anda!');

    Info.netral('Loading...');
    AuthSource.signIn(
      edtEmail.text,
      edtPassword.text,
    ).then(
      (message) {
        if (message != 'success') return Info.error(message);
        Info.success('Success Masuk');
        Future.delayed(const Duration(milliseconds: 1500), () {
          Navigator.pushReplacementNamed(context, '/home-page');
        });
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 0),
        children: [
          const Gap(60),
          Image.asset(
            'assets/logo_inetagan.png',
            height: 80,
          ),
          const Gap(70),
          buildHeader(),
          const Gap(23),
          const Text(
            'Email',
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w600,
              color: Color(0xff50C2C9),
            ),
          ),
          const Gap(12),
          InputWidget(
            icon: 'assets/ic_service_on.png',
            hint: 'tulis email anda',
            editingController: edtEmail,
          ),
          const Gap(20),
          const Text(
            'Password',
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w600,
              color: Color(0xff50C2C9),
            ),
          ),
          const Gap(12),
          InputWidget(
            icon: 'assets/ic_password.png',
            hint: 'tulis password anda',
            editingController: edtPassword,
          ),
          const Gap(12),
          const Gap(40),
          ButtonPrimary(
            text: 'Login',
            onTap: masukAkun,
          ),
          const Gap(35),
        ],
      ),
    );
  }
}

Widget buildHeader() {
  return const Column(
    children: [
      Text(
        'Masuk Akun',
        style: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.w700,
          color: Color(0xff50C2C9),
        ),
      ),
      Gap(6),
      Text(
        'Tambahkan Detail Anda untuk Login',
        style: TextStyle(
          fontSize: 13,
          fontWeight: FontWeight.w400,
          color: Color(0xff6D6C6C),
        ),
      ),
    ],
  );
}
