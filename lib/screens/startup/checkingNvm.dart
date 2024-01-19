import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter/material.dart';
import 'package:node_manager/process/nvm.dart';

class CheckingNVM extends StatefulWidget {
  const CheckingNVM({super.key});

  @override
  State<CheckingNVM> createState() => _CheckingNVMState();
}

class _CheckingNVMState extends State<CheckingNVM> {
  String captionState = "Checking NVM";
  NVM nvm = NVM();
  bool haveNVM = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    nvm.checkingNVM().then((value){
      setState(() {
        haveNVM = !value.isError;
        if(haveNVM){
          captionState = "NVM already with version : ${value.message}";
        }else{
          captionState = "NVM not found, Please install NVM first";
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const ProgressRing(),
        Text(captionState)
      ],
    );
  }
}