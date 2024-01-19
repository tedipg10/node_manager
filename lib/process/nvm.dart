import 'dart:io';

class NVM {
  Future<Result> checkingNVM() async{
    ProcessResult result = await Process.run('nvm',['-v']);
    return Result(isError: result.exitCode != 0, message: result.stdout.toString());
  }

  Future<Result> instalingNVM() async{  
    ProcessResult result = await Process.run('nvm',['-v']);
    return Result(isError: result.exitCode != 0, message: result.stdout.toString());
  }
}

class Result{
  final bool isError;
  final String message;

  Result({required this.isError, required this.message});
}