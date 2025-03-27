import 'package:flutter/material.dart';

void main() {
  runApp(CactusApp());
}

class CactusApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cactus',
      theme: ThemeData(
        primarySwatch: Colors.green,
        scaffoldBackgroundColor: Colors.white,
        textTheme: TextTheme(
          bodyLarge: TextStyle(color: Colors.black),
          bodyMedium: TextStyle(color: Colors.black87),
        ),
      ),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Bienvenidos a Cactus')),
      body: ListView(
        children: [
          CategoryTile(title: 'Oficios Varios', subcategories: ['Jardinería', 'Mensajería', 'Mecánico', 'Fontanero', 'Electricista']),
          CategoryTile(title: 'Educadores', subcategories: ['Docentes', 'Profesionales', 'No Profesionales']),
          CategoryTile(title: 'Cuidado Personal', subcategories: ['Niñeras', 'Cuidadores de Adultos']),
          CategoryTile(title: 'Consultoría', subcategories: ['Finanzas', 'Legal', 'Administración']),
          CategoryTile(title: 'Construcción', subcategories: ['Albañilería', 'Plomería', 'Electricidad']),
          CategoryTile(title: 'Gastronomía', subcategories: ['Chef', 'Mesero', 'Panadero', 'Repostero', 'Pastelero']),
          CategoryTile(title: 'Salud', subcategories: ['Médico General', 'Odontólogo', 'Fisioterapeuta']),
          CategoryTile(title: 'Ingeniería', subcategories: ['Civil', 'Industrial', 'Sistemas']),
        ],
      ),
    );
  }
}

class CategoryTile extends StatelessWidget {
  final String title;
  final List<String> subcategories;

  CategoryTile({required this.title, required this.subcategories});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(10),
      child: ExpansionTile(
        title: Text(title, style: TextStyle(fontWeight: FontWeight.bold, color: Colors.green)),
        children: subcategories
            .map((sub) => ListTile(
          title: Text(sub),
          subtitle: Text('Tarifa: \$20,000 por hora | \$70,000 jornada completa'),
        ))
            .toList(),
      ),
    );
  }
}

class RegisterScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Registro de Usuario')),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(decoration: InputDecoration(labelText: 'Nombre Completo')),
            TextField(decoration: InputDecoration(labelText: 'Cédula')),
            TextField(decoration: InputDecoration(labelText: 'Correo Electrónico')),
            TextField(decoration: InputDecoration(labelText: 'Celular')),
            TextField(decoration: InputDecoration(labelText: 'Dirección Exacta')),
            DropdownButtonFormField(
              decoration: InputDecoration(labelText: 'Método de Pago'),
              items: ['Débito', 'Crédito', 'Transferencia (Nequi, Daviplata, PSE)']
                  .map((e) => DropdownMenuItem(value: e, child: Text(e)))
                  .toList(),
              onChanged: (value) {},
            ),
            ElevatedButton(onPressed: () {}, child: Text('Registrarse')),
          ],
        ),
      ),
    );
  }
}

class ServiceProviderRegister extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Registro de Prestador de Servicio')),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(decoration: InputDecoration(labelText: 'Nombre Completo')),
            TextField(decoration: InputDecoration(labelText: 'Cédula')),
            TextField(decoration: InputDecoration(labelText: 'Especialidad / Profesión')),
            TextField(decoration: InputDecoration(labelText: 'Años de Experiencia')),
            ElevatedButton(onPressed: () {}, child: Text('Registrarse')),
          ],
        ),
      ),
    );
  }
}
