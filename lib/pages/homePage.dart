import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100, // Color de fondo claro
      body: Column(
        children: [
          // Sección del clima
          Expanded(
            flex: 3,
            child: Container(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 40), // Espacio superior
                  Text(
                    'MI UBICACIÓN - LA PAZ',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.black, // Cambiado a negro para visibilidad
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Spacer(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Row(
                            children: [
                              Icon(Icons.wb_sunny,
                                  size: 40, color: Colors.yellow),
                              Icon(Icons.cloud,
                                  size: 40, color: Colors.grey),
                            ],
                          ),
                          SizedBox(height: 10),
                          Text(
                            'Parcialmente nublado',
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.black, // Cambiado a negro
                            ),
                          ),
                        ],
                      ),
                      Text(
                        '11°',
                        style: TextStyle(
                          fontSize: 80,
                          color: Colors.black, // Cambiado a negro
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  Text(
                    'Máx. 18° - Mín 4°',
                    style: TextStyle(color: Colors.black), // Cambiado a negro
                  ),
                  SizedBox(height: 10),
                ],
              ),
            ),
          ),
          // Pronóstico semanal
          Expanded(
            flex: 1,
            child: Container(
              color: Colors.blue.shade200,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  _buildWeatherDay('Lun', '19°', Icons.cloud),
                  _buildWeatherDay('Mar', '21°', Icons.wb_sunny),
                  _buildWeatherDay('Mié', '20°', Icons.cloud),
                  _buildWeatherDay('Jue', '18°', Icons.cloud),
                  _buildWeatherDay('Vie', '18°', Icons.wb_sunny),
                ],
              ),
            ),
          ),
          // Advertencia de helada
          Expanded(
            flex: 1,
            child: Container(
              color: Colors.red.shade400,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'SE ACERCA UNA HELADA',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'el 8 de Octubre de 2024',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Más información',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home, color: Colors.green.shade700),
            label: '', // Sin texto
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_today, color: Colors.green.shade700),
            label: '', // Sin texto
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.agriculture, color: Colors.green.shade700),
            label: '', // Sin texto
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.restaurant, color: Colors.green.shade700),
            label: '', // Sin texto
          ),
        ],
      ),
    );
  }

  // Widget para cada día del pronóstico
  Widget _buildWeatherDay(String day, String temp, IconData icon) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          day,
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
        Icon(icon, size: 30),
        Text(temp),
      ],
    );
  }
}
