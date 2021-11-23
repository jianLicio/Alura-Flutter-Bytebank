import 'package:bytebank/models/contact.dart';
import 'package:flutter/material.dart';

class ContactForm extends StatefulWidget {
  @override
  State<ContactForm> createState() => _contactFormState();
}

class _contactFormState extends State<ContactForm> {
  final TextEditingController _nomeController = TextEditingController();

  final TextEditingController _contaController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Novo Contato'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(children: <Widget>[
          TextField(
            controller: _nomeController,
            decoration: InputDecoration(
              labelText: 'NOME COMPLETO',
            ),
            style: TextStyle(fontSize: 16.0),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 16),
            child: TextField(
              controller: _contaController,
              decoration: InputDecoration(
                labelText: 'CONTA',
              ),
              style: TextStyle(fontSize: 16.0),
              keyboardType: TextInputType.number,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 30),
            child: SizedBox(
              width: double.maxFinite,
              child: RaisedButton(
                child: Text('Salvar'),
                onPressed: () {
                  final String nome = _nomeController.text;
                  final int conta = int.tryParse(_contaController.text);
                  final Contact newContact = Contact(0, nome, conta);
                  Navigator.pop(context, newContact);
                },
              ),
            ),
          )
        ]),
      ),
    );
  }
}
