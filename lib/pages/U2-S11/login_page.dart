import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:practice_app/pages/U2-S11/login_provider.dart';
import 'package:practice_app/routes/routes.dart';
import 'package:provider/provider.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _isVisible = true;

  void _visiblePassword() {
    _isVisible = !_isVisible;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    final loginProvider = Provider.of<LoginProvider>(context);
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
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Lottie.network(
                    'https://assets9.lottiefiles.com/packages/lf20_ucbyrun5.json',
                  ),
                  Form(
                    key: loginProvider.formKey,
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
                          onChanged: (value) => loginProvider.email = value,
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
                                _isVisible
                                    ? Icons.visibility
                                    : Icons.visibility_off,
                                color: Colors.grey,
                              ),
                            ),
                          ),
                          onChanged: (value) => loginProvider.password = value,
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
                          onPressed: loginProvider.isLoading
                              ? null
                              : () async {
                                  FocusScope.of(context).unfocus();
                                  if (!loginProvider.isValidForm()) return;
                                  loginProvider.isLoading = true;
                                  await Future.delayed(
                                    const Duration(seconds: 2),
                                  );

                                  loginProvider.isLoading = false;
                                  // ignore: use_build_context_synchronously
                                  Navigator.pushReplacementNamed(
                                    context,
                                    MyRoutes.homeS11,
                                  );
                                },
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                          disabledColor: Colors.green,
                          color: Colors.green,
                          elevation: 1,
                          child: (loginProvider.isLoading)
                              ? const CircularProgressIndicator(
                                  color: Colors.white,
                                )
                              : const Text(
                                  'Ingresar',
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
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
