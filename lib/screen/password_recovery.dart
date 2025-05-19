import 'package:flutter/material.dart';
import 'package:orderflow2/widgets/custom_text_field.dart';
import 'package:orderflow2/widgets/red_button.dart';

class PasswordRecovery extends StatefulWidget {
  @override
  State<PasswordRecovery> createState() => _PasswordRecoveryState();
}

class _PasswordRecoveryState extends State<PasswordRecovery> {
  final FocusNode emailFocus = FocusNode();

  @override
  void dispose() {
    emailFocus.dispose();
    super.dispose();
  }

  void _onSendEmail() {
    print('Enviar correo de recuperación');
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
                    'Cambiar contraseña',
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
                    textInputAction: TextInputAction.done,
                    onSubmitted: (_) {
                      _onSendEmail();
                    },
                  ),
                  const SizedBox(height: 30),
                  RedButton(text: 'Enviar correo', onPressed: _onSendEmail),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
