import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class StackWidget extends StatefulWidget {
  List<Widget> defaultWidgets;
  List<Widget> dynamicLoadingWidgets;

  @override
  StackWidgetState createState()=>StackWidgetState();

  StackWidget(Key key,@required this.defaultWidgets,@required this.dynamicLoadingWidgets):super(key:key);
}

class StackWidgetState extends State<StackWidget>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Stack(
        alignment: AlignmentDirectional.center,
        children: widget.defaultWidgets + widget.dynamicLoadingWidgets);
  }

  @override
  void initState(){
    super.initState();
  }

  void refresh(){
    setState(() {
      print("刷新成功！");
    });
  }
}
