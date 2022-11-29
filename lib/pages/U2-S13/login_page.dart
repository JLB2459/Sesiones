import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import 'package:practice_app/pages/U2-S13/login_provider.dart';
import 'package:practice_app/routes/routes.dart';
import 'package:practice_app/services/service_auth.dart';
import 'package:provider/provider.dart';

class LoginPageS13 extends StatefulWidget {
  const LoginPageS13({super.key});

  @override
  State<LoginPageS13> createState() => _LoginPageS13State();
}

class _LoginPageS13State extends State<LoginPageS13> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: GestureDetector(
          onTap: () {
            final FocusScopeNode focus = FocusScope.of(context);
            if (!focus.hasPrimaryFocus && focus.hasFocus) {
              FocusManager.instance.primaryFocus!.unfocus();
            }
          },
          child: SingleChildScrollView(
              child: Column(
            children: [
              Lottie.network(
                'https://assets9.lottiefiles.com/packages/lf20_ucbyrun5.json',
                width: 300,
              ),
              ChangeNotifierProvider(
                create: (context) => LoginProvider2(),
                child: const _LoginForm(),
              ),
              TextButton(
                onPressed: () {
                  Navigator.pushReplacementNamed(context, MyRoutes.register);
                },
                child: const Text(
                  'Registrarse ahora',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          )),
        ),
      ),
    );
  }
}

class _LoginForm extends StatefulWidget {
  const _LoginForm({super.key});

  @override
  State<_LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<_LoginForm> {
  bool _isVisible = true;

  void _visiblePassword() {
    _isVisible = !_isVisible;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    final loginProvider2 = Provider.of<LoginProvider2>(context);
    return SizedBox(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Form(
          key: loginProvider2.formKey,
          child: Column(
            children: [
              TextFormField(
                style: const TextStyle(
                  color: Colors.black,
                ),
                autocorrect: false,
                keyboardType: TextInputType.emailAddress,
                decoration: _buildDecoration(
                  hintText: 'flutter@dev.com',
                  prefixIcon: const Icon(
                    Icons.email_outlined,
                    color: Colors.grey,
                  ),
                ),
                onChanged: (value) => loginProvider2.email = value,
                validator: (value) {
                  String pattern =
                      r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
                  RegExp regExp = RegExp(pattern);
                  return regExp.hasMatch(value ?? '')
                      ? null
                      : 'Correo no válido';
                },
              ),
              const SizedBox(
                height: 10,
              ),
              TextFormField(
                style: const TextStyle(color: Colors.black),
                autocorrect: false,
                obscureText: _isVisible,
                keyboardType: TextInputType.text,
                decoration: _buildDecoration(
                  hintText: '******',
                  prefixIcon: const Icon(
                    Icons.key_outlined,
                    color: Colors.grey,
                  ),
                  suffixIcon: InkWell(
                    onTap: _visiblePassword,
                    child: Icon(
                      _isVisible ? Icons.visibility : Icons.visibility_off,
                      color: Colors.grey,
                    ),
                  ),
                ),
                onChanged: (value) => loginProvider2.password = value,
                validator: (value) {
                  return (value != null && value.length >= 8)
                      ? null
                      : 'La contraseña debe tener más de 8 caracteres';
                },
              ),
              const SizedBox(
                height: 20,
              ),
              MaterialButton(
                height: 50,
                minWidth: 200,
                onPressed: loginProvider2.isLoading
                    ? null
                    : () async {
                        FocusScope.of(context).unfocus();
                        final authService = Provider.of<AuthService>(
                          context,
                          listen: false,
                        );
                        final String? errorMessage = await authService.login(
                          loginProvider2.email,
                          loginProvider2.password,
                        );

                        if (errorMessage == null) {
                          // ignore: use_build_context_synchronously
                          Navigator.pushReplacementNamed(
                            context,
                            MyRoutes.homeS11,
                          );
                        } else {
                          loginProvider2.isLoading = false;
                        }
                      },
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                disabledColor: Colors.green,
                color: Colors.green,
                elevation: 1,
                child: (loginProvider2.isLoading)
                    ? const CircularProgressIndicator(
                        color: Colors.white,
                      )
                    : const Text(
                        'Iniciar sesión',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  InputDecoration _buildDecoration({
    final String? hintText,
    final Widget? prefixIcon,
    final Widget? suffixIcon,
  }) {
    return InputDecoration(
      enabledBorder: OutlineInputBorder(
        borderSide: const BorderSide(
          width: 2,
          color: Colors.green,
        ),
        borderRadius: BorderRadius.circular(15),
      ),
      errorBorder: OutlineInputBorder(
        borderSide: const BorderSide(
          width: 2,
          color: Colors.green,
        ),
        borderRadius: BorderRadius.circular(15),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: const BorderSide(
          width: 2,
          color: Colors.green,
        ),
        borderRadius: BorderRadius.circular(15),
      ),
      border: OutlineInputBorder(
        borderSide: const BorderSide(
          width: 2,
          color: Colors.green,
        ),
        borderRadius: BorderRadius.circular(15),
      ),
      filled: true,
      fillColor: const Color.fromARGB(255, 236, 236, 236),
      hintText: //'flutter@dev.com',
          hintText,
      hintStyle: const TextStyle(
        color: Colors.grey,
      ),
      prefixIcon: //const Icon(Icons.email_outlined),
          prefixIcon,
      suffixIcon: suffixIcon,
      prefixIconColor: Colors.grey,
      contentPadding: const EdgeInsets.all(15),
    );
  }
}
