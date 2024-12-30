import 'package:flutter/material.dart';
import 'package:turistando/app/core/utils/app_state_enum.dart';
import 'package:turistando/app/modules/home/logic/models/cep_model.dart';
import 'package:turistando/app/modules/home/logic/usecases/get_cep_info_usecase.dart';

class HomeController extends ChangeNotifier {
  final GetCepInfoUsecase getCepInfoUsecase;

  HomeController(this.getCepInfoUsecase);

  final TextEditingController controllerText = TextEditingController();
  final List<String> randomList = <String>[
    '05164020',
    '23915503',
    '72911009',
    '48288970',
    '01311000',
  ];

  int randomCep = 0;

  /// AppState
  AppState _state = AppState.initial;
  AppState get state => _state;
  set state(AppState newcep) {
    _state = newcep;

    notifyListeners();
  }

  /// CepModel
  CepModel _cep = CepModel();
  CepModel get cep => _cep;
  set cep(CepModel newCep) {
    _cep = newCep;

    notifyListeners();
  }

  void searchCepRandom() {
    if (randomCep <= 4) {
      controllerText.text = randomList[randomCep];
    } else {
      randomCep = 0;
      controllerText.text = randomList[randomCep];
    }

    randomCep++;
  }

  void validateCep() {
    if (controllerText.text.contains(RegExp(r'[0-9]'))) {
      searchCep();
    } else {
      state = AppState.failure;
    }
  }

  Future<void> searchCep() async {
    state = AppState.loading;

    final result = await getCepInfoUsecase(controllerText.text);

    controllerText.text = '';

    result.fold(
      (S) async {
        await Future.delayed(const Duration(seconds: 1));

        cep = S;
        state = AppState.success;
      },
      (F) async {
        await Future.delayed(const Duration(seconds: 2));

        state = AppState.failure;
      },
    );
  }
}
