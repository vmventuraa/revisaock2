import 'package:flutter/material.dart';
import 'package:revisaock2/domain/animal.dart';
import 'package:revisaock2/screens/animals/animal.controller.dart';
import 'package:revisaock2/util/snippets.dart';

class AnimalCreateScreen extends StatefulWidget {
  const AnimalCreateScreen({super.key});

  @override
  State<AnimalCreateScreen> createState() => _AnimalCreateScreenState();
}


class _AnimalCreateScreenState extends State<AnimalCreateScreen> {

   final TextEditingController _nomeController = TextEditingController();
  final TextEditingController _raceController = TextEditingController();
  final TextEditingController _ageController = TextEditingController();
  late AnimalController _controller;


 @override
  void initState() {
    _controller = AnimalController();
    super.initState();
  }
 _onPressed(){
    final animal = Animal(
      name: _nomeController.text,
      race: _raceController.text,
      age: _ageController.text
    );



  }



 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Cadastro de Animais"),
      ),
      body:  Column(
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.only(bottom: 20),
                  child: Text(
                    "Nome",
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
          TextFormField(
              controller: _nomeController,
              decoration: inputDecoration(label: "Informe o nome"),
            ),
           const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.only(bottom: 20),
                  child: Text(
                    "Raça",
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
          TextFormField(
              controller: _raceController,
              decoration: inputDecoration(label: "Informe a raça"),
            ),
           const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.only(bottom: 20),
                  child: Text(
                    "Idade",
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
          TextFormField(
              controller: _ageController,
              decoration: inputDecoration(label: "Informe a idade"),
            ),
            ElevatedButton(onPressed: _onPressed, child: const Text("Cadastrar")),
          
        ],
      ),
    );
  }
}
