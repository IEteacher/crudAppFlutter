import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: Scaffold(
        body: cuerpo(),
      ),
    );
  }
}

Widget cuerpo() {
  return Container(
    decoration: const BoxDecoration(
        image: DecorationImage(
            image: NetworkImage(
                "https://img.freepik.com/premium-vector/circle-high-technology-with-circuit-line-blue-background-illustrator-digital-abstract_268461-189.jpg?w=826"),
            fit: BoxFit.cover)),
    child: Center(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[texto(), user_txt(), pass_txt(), btn_enter()],
    )),
  );
}

Widget texto() {
  return Text(
    "Login",
    style: TextStyle(color: Colors.white, fontSize: 30),
  );
}

Widget user_txt() {
  return Container(
    padding: EdgeInsets.symmetric(vertical: 5, horizontal: 15),
    child: TextField(
      decoration: InputDecoration(
          hintText: "Usuario", fillColor: Colors.white, filled: true),
    ),
  );
}

Widget pass_txt() {
  return Container(
    padding: EdgeInsets.symmetric(vertical: 5, horizontal: 15),
    child: TextField(
      obscureText: true,
      decoration: InputDecoration(
          hintText: "Contraseña", fillColor: Colors.white, filled: true),
    ),
  );
}

Widget btn_enter() {
  return ElevatedButton(
      onPressed: () {
        print("Bienvenid@ :)");
      },
      child: Text("Ingresar"));
}
