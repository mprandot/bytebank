import 'package:bytebank/FormularioTransferencia.dart';
import 'package:flutter/material.dart';
import './Transferencia.dart';
import './ItemTransferencia.dart';

class ListaTransferencias extends StatefulWidget {
  final List<Transferencia> _transferencias = List();
  State<StatefulWidget> createState() {
   return ListaTransferenciaState();
  }
}

class ListaTransferenciaState extends State<ListaTransferencias>{

  void addTransferencia (transferencia) {
    if(transferencia != null) {
      setState(() {
        widget._transferencias.add(transferencia);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Transferências'),
      ),
      body: ListView.builder(
        itemCount: widget._transferencias.length,
        itemBuilder: (context, indice) {
          final transferencia = widget._transferencias[indice];
          return ItemTransferencia(transferencia);
        },
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          final Future<Transferencia> future = Navigator.push(context, MaterialPageRoute(builder: (context) {
            return FormularioTransferencia();
          }));
          future.then(addTransferencia);
        },
      ),
    );
  }
}
