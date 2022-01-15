import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sports_map/showDrivingRouteSearchPageByLocation.dart';

class ClickedDialog extends Dialog{

  String title;
  String content;
  double startLocationLon;
  double startLocationLat;
  double endLocationLat;
  double endLocationLon;
  String identifier;

  ClickedDialog({this.title = "", this.content = "",this.startLocationLon,this.startLocationLat,this.endLocationLat,this.endLocationLon,this.identifier = ""});

  @override
  Widget build(BuildContext context) {
    return Material(
        type:MaterialType.transparency,
        child:Center(
          child: Container(
            height: 300,
            width: 300,
            color: Colors.white,
            child: Column(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.all(5),
                  child: Stack(
                    children: <Widget>[
                      Align(
                        alignment:Alignment.center,
                        child: Text("详细信息"),
                      ),
                      Align(
                        alignment: Alignment.centerRight,
                        child: InkWell(
                          child: Icon(Icons.close),
                          onTap: (){
                            Navigator.pop(context);
                          },
                        ),
                      )
                    ],
                  ),
                ),
                Divider(),
                Expanded(
                  flex: 4,
                  child: Column(
                    children: [
                      Container(padding: EdgeInsets.all(3),child: Text("${this.title}\n"),),
                      Expanded(child: Container(padding: EdgeInsets.all(3),child: Text("简介：\n        ${this.content}\n",textAlign: TextAlign.left,),)),
                      Container(padding: EdgeInsets.all(3),child: Text("状态:${this.identifier}\n"),),
                    ],
                  ),
                  // Container(
                  //   padding: EdgeInsets.all(10),
                  //   width: double.infinity,
                  //   child: Text("简介：${this.content}\n",textAlign: TextAlign.left),
                  // ),
                  ),
                Expanded(
                    flex: 1,
                    child: Container(
                        padding: EdgeInsets.all(10),
                        child: RaisedButton(
                          color: Colors.blue,
                          highlightColor: Colors.blue[700],
                          colorBrightness: Brightness.dark,
                          splashColor: Colors.grey,
                          child: Text("导航去此处"),
                          shape:
                          RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
                          onPressed: () {
                            Navigator.push(context, new MaterialPageRoute(builder: (context) => ShowDrivingRouteSearchPageByLocation(endLocationLat: endLocationLat,endLocationLon: endLocationLon,)));
                          },
                        )
                    ))
              ],
            ),
          ),
        )
    );
  }
}