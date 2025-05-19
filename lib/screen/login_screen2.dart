import 'package:flutter/material.dart';
import 'package:orderflow2/widgets/custom_text_field.dart';
import 'package:orderflow2/widgets/red_button.dart';

class LoginScreen2 extends StatefulWidget {
  @override
  State<LoginScreen2> createState() => _LoginScreen2State();
}

class _LoginScreen2State extends State<LoginScreen2> {
  final FocusNode emailFocus = FocusNode();
  final FocusNode passwordFocus = FocusNode();

  @override
  void dispose() {
    emailFocus.dispose();
    passwordFocus.dispose();
    super.dispose();
  }

  void _onLogin() {
    print('Iniciar sesión');
  }

  @override
  Widget build(BuildContext context) {
    final double statusBarHeight = MediaQuery.of(context).padding.top;

    return Scaffold(
      backgroundColor: Colors.white,
      extendBodyBehindAppBar: true,
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Contenedor superior con fondo hamburguesa
            Container(
              width: MediaQuery.of(context).size.width,
              height: 334 + statusBarHeight,
              decoration: ShapeDecoration(
                gradient: LinearGradient(
                  begin: Alignment(0.50, -0.00),
                  end: Alignment(0.50, 1.00),
                  colors: [Colors.black, Colors.black.withAlpha(0)],
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(40),
                    bottomRight: Radius.circular(40),
                  ),
                ),
              ),
              child: ClipRRect(
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(40),
                  bottomRight: Radius.circular(40),
                ),
                child: Stack(
                  fit: StackFit.expand,
                  children: [
                    Image.asset(
                      'assets/burger_background.jpg',
                      fit: BoxFit.cover,
                    ),
                    Container(color: Colors.black.withOpacity(0.55)),
                    Padding(
                      padding: EdgeInsets.only(top: statusBarHeight),
                      child: Center(
                        child: Image.asset(
                          'assets/logo.png',
                          width: 200,
                          height: 100,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 16.0,
                vertical: 16.0,
              ),
              child: Column(
                children: [
                  const SizedBox(height: 20),
                  const Text(
                    '¡Bienvenido a OrderFlow!',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 40),
                  CustomTextField(
                    label: 'Correo electrónico',
                    focusNode: emailFocus,
                    textInputAction: TextInputAction.next,
                    onSubmitted: (_) {
                      FocusScope.of(context).requestFocus(passwordFocus);
                    },
                  ),
                  const SizedBox(height: 20),
                  CustomTextField(
                    label: 'Contraseña',
                    obscureText: true,
                    focusNode: passwordFocus,
                    textInputAction: TextInputAction.done,
                    onSubmitted: (_) {
                      _onLogin();
                    },
                  ),
                  const SizedBox(height: 30),
                  RedButton(text: 'Iniciar sesión', onPressed: _onLogin),
                  const SizedBox(height: 20),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, 'password');
                    },
                    child: const Text(
                      '¿Olvidaste tu contraseña?',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
