import 'package:flutter/material.dart';
import 'package:turistando/app/modules/home/logic/models/cep_model.dart';

class CepCard extends StatelessWidget {
  final CepModel cep;
  final Function() reset;

  const CepCard({
    super.key,
    required this.cep,
    required this.reset,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      width: 320,
      margin: const EdgeInsets.symmetric(vertical: 16),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Theme.of(context).primaryColor,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Center(
                child: Text(
                  'Info',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                ),
              ),
              IconButton(
                onPressed: reset,
                icon: const Icon(
                  Icons.delete_forever,
                  color: Colors.white,
                ),
              )
            ],
          ),
          const Divider(
            color: Colors.white,
          ),
          Text(
            'cep: ${cep.cep ?? ''}',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
              color: Colors.white,
            ),
          ),
          Text(
            'logradouro: ${cep.logradouro ?? ''}',
            style: TextStyle(
              fontSize: 16,
              color: Colors.white,
            ),
          ),
          Text(
            'complemento: ${cep.complemento ?? ''}',
            style: TextStyle(
              fontSize: 16,
              color: Colors.white,
            ),
          ),
          Text(
            'bairro: ${cep.bairro ?? ''}',
            style: TextStyle(
              fontSize: 16,
              color: Colors.white,
            ),
          ),
          Text(
            'localidade: ${cep.localidade ?? ''}',
            style: TextStyle(
              fontSize: 16,
              color: Colors.white,
            ),
          ),
          Text(
            'uf: ${cep.uf ?? ''}',
            style: TextStyle(
              fontSize: 16,
              color: Colors.white,
            ),
          ),
          Text(
            'ibge: ${cep.ibge ?? ''}',
            style: TextStyle(
              fontSize: 16,
              color: Colors.white,
            ),
          ),
          Text(
            'gia: ${cep.gia ?? ''}',
            style: TextStyle(
              fontSize: 16,
              color: Colors.white,
            ),
          ),
          Text(
            'ddd: ${cep.ddd ?? ''}',
            style: TextStyle(
              fontSize: 16,
              color: Colors.white,
            ),
          ),
          Text(
            'siafi: ${cep.siafi ?? ''}',
            style: TextStyle(
              fontSize: 16,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
