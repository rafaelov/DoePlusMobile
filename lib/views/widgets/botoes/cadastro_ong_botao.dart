// ignore: file_names
import 'package:doeplus/styles/tema/default_theme.dart';
import 'package:doeplus/views/cadastro_ong_view.dart';
import 'package:flutter/material.dart';

class CadastroOngBotao extends StatefulWidget {
  const CadastroOngBotao({Key? key}) : super(key: key);

  @override
  State<CadastroOngBotao> createState() => _CadastroOngBotaoState();
}

class _CadastroOngBotaoState extends State<CadastroOngBotao> {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 5),
        child: Material(
          elevation: 5.0,
          borderRadius: BorderRadius.circular(20),
          color: DefaultTheme.getColor(),
          child: MaterialButton(
            minWidth: MediaQuery.of(context).size.width,
            padding: const EdgeInsets.fromLTRB(15, 12, 15, 12),
            onPressed: () {
              globalOngKey = GlobalKey();
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const CadastroOngView()));
            },
            child: const Text("Instituição",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontFamily: 'HammersmithOne',
                    color: Colors.white,
                    fontSize: 25)),
          ),
        ));
  }
}
