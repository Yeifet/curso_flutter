import 'package:flutter/material.dart';

void main() {
  runApp(MiApp());
}

class MiApp extends StatelessWidget {
  const MiApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'MY App',
      home: Inicio(),
    );
  }
}

class Inicio extends StatefulWidget {
  const Inicio({super.key});

  @override
  _InicioState createState() => _InicioState();
}

class _InicioState extends State<Inicio> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: cuerpo(),
    );
  }
}

Widget cuerpo() {
  return Container(
    decoration: const BoxDecoration(
        image: DecorationImage(
            image: NetworkImage(
                'https://i.pinimg.com/originals/03/3a/58/033a58da100018eaf58d2c70876bcaca.jpg'),
            fit: BoxFit.cover)),
    child: Center(
      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        nombre(),
        campoUsuario(),
        campoContrasena(),
        botonEntrar()
      ]),
    ),
  );
}

Widget nombre() {
  return const Text(
    'Ingresar',
    style: TextStyle(
        color: Colors.white, fontSize: 35.0, fontWeight: FontWeight.bold),
  );
}

Widget campoUsuario() {
  return Container(
    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
    child: const TextField(
      decoration: InputDecoration(
          hintText: 'Usuario', fillColor: Colors.white, filled: true),
    ),
  );
}

Widget campoContrasena() {
  return Container(
    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
    child: const TextField(
      obscureText: true,
      decoration: InputDecoration(
          hintText: 'Password', fillColor: Colors.white, filled: true),
    ),
  );
}

Widget botonEntrar() {
  return TextButton(
      onPressed: () {
        print('presionaste el botón');
      },
      style: TextButton.styleFrom(
          backgroundColor: Colors.purple.shade800,
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15)),
      child: const Text(
        'Enter',
        style: TextStyle(color: Colors.white, fontSize: 16),
      ));
}
