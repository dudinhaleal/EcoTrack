import 'package:flutter/material.dart';
import 'login_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("EcoTrack"),
        backgroundColor: Colors.deepPurple,

        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),

      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Olá, Ronaldo 👋",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 20),

              Row(
                children: [
                  Expanded(child: card("12", "Coletas")),
                  SizedBox(width: 10),
                  Expanded(child: card("340", "Pontos")),
                ],
              ),

              SizedBox(height: 10),

              Row(
                children: [
                  Expanded(child: card("67kg", "CO₂")),
                  SizedBox(width: 10),
                  Expanded(child: card("75%", "Meta")),
                ],
              ),

              SizedBox(height: 20),

              Text("Ações", style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 10),

              botao("Registrar coleta"),
              botao("Ver histórico"),

              SizedBox(height: 20),

              Text("Recentes", style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 10),

              atividade("Plástico reciclado", "+20 pts"),
              atividade("Papel descartado", "+10 pts"),
              atividade("Vidro reciclado", "+15 pts"),

              SizedBox(height: 30),
            ],
          ),
        ),
      ),

      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.deepPurple,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Perfil"),
        ],
      ),
    );
  }

  Widget card(String valor, String texto) {
    return Card(
      child: Container(
        padding: EdgeInsets.all(12),
        child: Column(
          children: [
            Text(
              valor,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Text(texto),
          ],
        ),
      ),
    );
  }

  Widget botao(String texto) {
    return Card(
      child: ListTile(
        title: Text(texto),
        trailing: Icon(Icons.arrow_forward_ios, size: 16),
      ),
    );
  }

  Widget atividade(String titulo, String pontos) {
    return ListTile(
      leading: Icon(Icons.circle, size: 10, color: Colors.deepPurple),
      title: Text(titulo),
      trailing: Text(pontos),
    );
  }
}
