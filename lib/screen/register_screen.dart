import 'package:flutter/material.dart';
import 'package:orderflow2/widgets/custom_text_field.dart';
import 'package:orderflow2/widgets/red_button.dart';

class RegisterScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              // Contenedor superior con fondo hamburguesa y logo centrado
              Container(
                width: MediaQuery.of(context).size.width,
                height: 334,
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
                      Center(
                        child: Image.asset(
                          'assets/logo.png',
                          width: 200,
                          height: 100,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              // El resto del contenido con padding
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16.0,
                  vertical: 16.0,
                ),
                child: Column(
                  children: [
                    const SizedBox(height: 20),
                    // Texto de bienvenida
                    const Text(
                      '¡Bienvenido a OrderFlow!',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 40),
                    // Campos del formulario directamente aquí
                    CustomTextField(label: 'Correo electrónico'),
                    const SizedBox(height: 20),
                    CustomTextField(label: 'Contraseña'),
                    const SizedBox(height: 20),
                    CustomTextField(label: 'Confirmar contraseña'),
                    const SizedBox(height: 30),
                    RedButton(
                      text: 'Registrarse',
                      onPressed: () {
                        print('Usuario registrado');
                      },
                    ),
                    const SizedBox(height: 20),
                    GestureDetector(
                      onTap: () {
                        print('Olvidaste tu contraseña');
                      },
                      child: const Text(
                        '¿Olvidaste tu contraseña?',
                        style: TextStyle(color: Colors.black, fontSize: 16),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
