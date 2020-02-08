
List<int> _list_numbers = List();

bool _notExist(int number){
  return true ? !_list_numbers.contains(number) : false;
}

bool _verifyNumber(int number){
  if (_notExist(number) && (number >= -1000 || number <= 1000) ){
    return true;
  }
  return false;
}

void showNumbers(){
  for (var number in _list_numbers){
    print(number);
  }
}

List<int> insertList(int number){
  if (_verifyNumber(number)){
    _list_numbers.add(number);
  }
  _list_numbers.sort();
  return _list_numbers;
}