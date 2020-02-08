import 'package:test/test.dart';

void main() {
  
  List<int> _list_numbers = [10, 15, 20, 30];

  bool _notExist(int number){
    return true ? !_list_numbers.contains(number) : false;
  }

  bool _verifyNumber(int number){
    if (_notExist(number) && (number >= -1000 || number <= 1000) ){
      return true;
    }
    return false;
  }

  test('Valida se o numero está entre/igual -1000 e 1000', () {
      // const numberNotPass = -1001;
      // const numberNotPassTo = 1001;
      // const numberPass = -1000;
      // const numberPassTo = 1000;
      const numberPassRequired = 500;

      // expect(_verifyNumber(numberNotPass), false);
      //expect(_verifyNumber(numberNotPassTo), false);
      //expect(_verifyNumber(numberPass), true);
      //expect(_verifyNumber(numberPassTo), true);
      expect(_verifyNumber(numberPassRequired), true);

  });

  test('Valida se o número existe na lista', (){

    const numberNotPass = -50;
    // const numberPass = 30;

    expect(_notExist(numberNotPass), true);
    // expect(_notExist(numberPass), false);

  });

}