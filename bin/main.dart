import 'dart:io';
import 'package:exercicio_um/base.dart' as base;

void main(List<String> arguments) {

  var totalNumbersEntered = int.parse(stdin.readLineSync());

  if(totalNumbersEntered >= 1 || totalNumbersEntered <= 1000){

    for (var i = 0; i < totalNumbersEntered; i++){
      var number = int.parse(stdin.readLineSync());
      base.insertList(number);
    }

  }

  base.showNumbers();

}
