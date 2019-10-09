import 'dart:io';

void main() {
  mainFunction();
}

void mainFunction() async {
  fun1();
  String taks2data = await fun2();
  fun3(taks2data.toString());
}

void fun1() {
  String result = 'task 1 date';
  print('Task 1 complete');
}

Future fun2() async {
  Duration duration = Duration(seconds: 3);
  String result;

  await Future.delayed(duration, () {
    result = 'task 2 date';
    print('Task 2 complete');
  });

  return result;
}

void fun3(String taks2Data) {
  String result = 'task 3 date';
  print('Task 3 complete $taks2Data');
}
