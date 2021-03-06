import 'package:flutter/material.dart';
import 'package:payflow/shared/models/boleto_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

class InsertBoletoControler {
  final formKey = GlobalKey<FormState>();
  BoletoModel model = BoletoModel();

  String? validateName(String? value) {
    return value?.isEmpty ?? true
        ? 'O nome do boleto não pode ser vazio'
        : null;
  }

  String? validateVencimento(String? value) {
    return value?.isEmpty ?? true
        ? 'A data de validade não pode ser vazio'
        : null;
  }

  String? validateValor(double? value) {
    return value == 0 ? 'Insira um valor maior que R\$0,00' : null;
  }

  String? validateCodigo(String? value) {
    return value?.isEmpty ?? true
        ? "O código do boleto não pode ser vazio"
        : null;
  }

  void onChange({
    String? name,
    String? dueDate,
    double? value,
    String? barcode,
  }) {
    model = model.copyWith(
      name: name,
      dueDate: dueDate,
      value: value,
      barcode: barcode,
    );
  }

  Future<void> saveBoleto() async {
    try {
      final instance = await SharedPreferences.getInstance();
      final boletos = instance.getStringList('boletos') ?? <String>[];
      boletos.add(model.toJson());
      await instance.setStringList('boletos', boletos);
      return;
    } catch (e) {
      print(e);
    }
  }

  Future<void> cadastrarBoleto() async {
    final form = formKey.currentState;
    if (form!.validate()) {
      return saveBoleto();
    }
  }
}
