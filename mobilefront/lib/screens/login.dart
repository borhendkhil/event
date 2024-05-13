import 'dart:io';

import 'package:far7etna/screens/signup.dart';
import 'package:flutter/material.dart';

import '../components/guestButton.dart';
import '../components/loginImage.dart';
import '../components/reusableButton.dart';
import '../components/reusableTextfield.dart';

class loginPage extends StatefulWidget {
  const loginPage({Key? key}) : super(key: key);
  //static const String routeName = '/login';
  // static Route route() {
  //   return MaterialPageRoute(
  //     builder: (_) => loginPage(),
  //     settings: RouteSettings(name: routeName),
  //   );
  // }

  @override
  State<loginPage> createState() => _loginPageState();
}

class _loginPageState extends State<loginPage> {
  // static final _formKey = new GlobalKey<FormState>();
  // Key _k1 = new GlobalKey();
  // Key _k2 = new GlobalKey();
  // late FocusNode myFocusNode;

  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  // @override
  // void initState() {
  //   super.initState();

  //   myFocusNode = FocusNode();
  // }

  @override
  void dispose() {
    // TODO: implement dispose
    // myFocusNode.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      LoginImage(),
      Scaffold(
        backgroundColor: Colors.transparent,
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(20, 120, 20, 0),
            child: Column(
              children: [
                logoWidget('assets/logo.png'),
                const SizedBox(
                  height: 30,
                ),
                reusableTextField(
                  'Email',
                  Icons.alternate_email,
                  false,
                  _emailController,
                ),
                const SizedBox(
                  height: 20,
                ),
                reusableTextField(
                    'Password', Icons.lock_outline, true, _passwordController),
                const SizedBox(
                  height: 5,
                ),
                forgetPassword(context),
                firebaseButton(
                  context,
                  'Log in',
                  () async {
                    // if (_emailController.text.isEmpty ||
                    //     _passwordController.text.isEmpty) {
                    //   ScaffoldMessenger.of(context).showSnackBar(snack);
                    //   return;
                    // }

                    // context
                    //     .read<AuthenticationService>()
                    //     .signIn(
                    //         email: _emailController.text,
                    //         password: _passwordController.text)
                    //     .then((value) {
                    //   Navigator.push(
                    //     context,
                    //     MaterialPageRoute(
                    //         builder: (context) => const Wrapper()),
                    //   );
                    //   _emailController.text = "";
                    //   _passwordController.text = "";
                    // }).onError((error, stackTrace) {
                    //   print("Error ${error.toString()}");
                    //   _emailController.text = "";
                    //   _passwordController.text = "";
                    // });
                  },
                ),
                GuestButton(
                  context,
                  'Guest',
                  () {
                    // context
                    //     .read<AuthenticationService>()
                    //     .signInAnonymously()
                    //     .then((value) {
                    //   Navigator.push(
                    //     context,
                    //     MaterialPageRoute(builder: (context) => GuestScreen()),
                    //   );
                    // });
                  },
                ),
                signUpOption(context),
              ],
            ),
          ),
        ),
      ),
    ]);
  }

  final snack = SnackBar(
    content: const Text('Please enter your credentials!'),
    backgroundColor: Colors.red,
    action: SnackBarAction(
      label: 'dismiss',
      onPressed: () {
        return;
      },
    ),
  );
}

// class Wrapper extends StatelessWidget {
//   const Wrapper({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     final firebaseUser = context.watch<User?>();

//     if (firebaseUser!.email!.contains('fashion')) {
//       return SettingsScreen();
//     }

//     return HomeScreen();
//   }
// }
Row signUpOption(BuildContext context) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      const Text("Don't have account?",
          style: TextStyle(color: Colors.white70)),
      GestureDetector(
        onTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => RegisterPage()));
        },
        child: const Text(
          " Sign Up",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
      )
    ],
  );
}
