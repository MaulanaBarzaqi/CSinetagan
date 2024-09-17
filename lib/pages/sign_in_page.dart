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
          const Gap(200),
          Image.asset(
            'assets/logo_inetagan.png',
            height: 71,
            width: 171,
          ),
          const Gap(30),
          const Text(
            "Masuk akun",
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w700,
              color: Color(0xff50C2C9),
            ),
          ),
          const Gap(30),
          const Text(
            'Email',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
              color: Color(0xff50C2C9),
            ),
          ),
          const Gap(12),
          InputWidget(
            icon: 'assets/ic_message.png',
            hint: 'tulis email anda',
            editingController: edtEmail,
          ),
          const Gap(20),
          const Text(
            'Password',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
              color: Color(0xff50C2C9),
            ),
          ),
          const Gap(12),
          InputWidget(
            icon: 'assets/ic_key.png',
            hint: 'tulis password anda',
            editingController: edtPassword,
            obsecure: true,
          ),
          const Gap(30),
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
