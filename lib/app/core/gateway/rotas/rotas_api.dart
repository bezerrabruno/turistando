class RotasApi {
  static String rotaCPF(String cep) {
    return 'https://viacep.com.br/ws/$cep/json/';
  }
}
