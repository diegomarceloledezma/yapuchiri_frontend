import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Contenedor superior
          Positioned(
            top: 0,
            left: -20,
            right: -20,
            child: Container(
              height: 90, // Ajusta la altura según sea necesario
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.green.shade700, Colors.green.shade400],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(100),
                  bottomRight: Radius.circular(100),
                ),
              ),
            ),
          ),
          // Contenedor inferior (invertido)
          Positioned(
            bottom: 0,
            left: -20,
            right: -20,
            child: Container(
              height: 90, // Ajusta la altura según sea necesario
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.green.shade700, Colors.green.shade400],
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                ),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(100),
                  topRight: Radius.circular(100),
                ),
              ),
            ),
          ),
          // Contenido de la página de login
          Center(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                        height:
                            150), // Espacio para evitar el solapamiento con el contenedor superior
                    Text(
                      'INICIAR SESIÓN',
                      style: TextStyle(
                        fontSize: 35,
                        fontWeight: FontWeight.bold,
                        color: Colors.green.shade700,
                      ),
                    ),
                    SizedBox(height: 40),
                    TextField(
                      decoration: InputDecoration(
                        labelText: 'Correo o número',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        labelText: 'Contraseña',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Checkbox(value: false, onChanged: (value) {}),
                            Text('Recordar usuario'),
                          ],
                        ),
                        TextButton(
                          onPressed: () {},
                          child: Text('¿Olvidaste tu contraseña?'),
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.green.shade700,
                        padding:
                            EdgeInsets.symmetric(horizontal: 40, vertical: 17),
                        minimumSize: Size(200,
                            50), // Fija el tamaño del botón (ajusta según tu diseño)
                      ),
                      child: Text(
                        'Iniciar sesión',
                        style: TextStyle(
                          color: Colors.white, // Color blanco para el texto
                          fontSize: 20, // Tamaño de la letra más grande
                          fontFamily: 'Raleway', // Cambia la tipografía
                          fontWeight: FontWeight.bold, // Negrita
                        ),
                        textAlign: TextAlign
                            .center, // Asegura que el texto esté centrado
                      ),
                    ),

                    SizedBox(height: 20),
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.green.shade700,
                        padding:
                            EdgeInsets.symmetric(horizontal: 40, vertical: 17),
                        minimumSize: Size(200,
                            50), // Fija el tamaño del botón (ajusta según tu diseño)
                      ),
                      child: Text(
                        'Crear Cuenta',
                        style: TextStyle(
                          color: Colors.white, // Color blanco para el texto
                          fontSize: 20, // Tamaño de la letra más grande
                          fontFamily: 'Raleway', // Cambia la tipografía
                          fontWeight: FontWeight.bold, // Negrita
                        ),
                        textAlign: TextAlign
                            .center, // Asegura que el texto esté centrado
                      ),
                    ),

                    SizedBox(
                        height:
                            100), // Espacio para evitar el solapamiento con el contenedor inferior
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
