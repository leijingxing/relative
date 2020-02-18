import 'package:flutter/material.dart';
import 'package:relative/Call.dart';
import 'package:relative/data.dart';

class Relative extends StatefulWidget {
  @override
  _RelativeState createState() => _RelativeState();
}

class _RelativeState extends State<Relative> {
  List list = new List<String>();
  String str = '';
  String chenghu = '';

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "亲戚称呼计算器",
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
      body:  Container(
          padding: EdgeInsets.all(10),
          child: Column(
            children: <Widget>[
              Container(
                height: MediaQuery.of(context).size.height * 0.1,
                child: Text(
                  "我\n" + "${list.toString()}",
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.1,
                child: Text("称呼:\n" + "$chenghu"),
              ),
              RaisedButton(
                child: Text(
                  "清除",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                color: Colors.greenAccent,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                onPressed: () {
                  setState(() {
                    list.clear();
                    chenghu = '';
                    str = '';
                  });
                },
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.5,
                child: GridView.count(
                  crossAxisCount: 5,
                  padding: EdgeInsets.all(5),
                  crossAxisSpacing: 1,
                  mainAxisSpacing: 1,
                  children: List.generate(data.length, (index) {
                    return InkWell(
                      child: Card(
                        child: Container(
                          alignment: Alignment.center,
                          child: Text(
                            data[index]['relative'],
                            style: TextStyle(
                                fontSize: 20,
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      onTap: () {
                        list.add("的" + data[index]['relative']);
                        str = str + data[index]['id'];

                        for (int i = 0; i < call.length; i++) {
                          if (str.endsWith(call[i]['id'])) {
                            print(str);
                            print(call[i]['id']);
                            chenghu = call[i]['relative'];
                          }
                        }

                        if(chenghu == '') {
                          chenghu = '男的叫帅哥，女的叫美女';
                        }

                        setState(() {});
                      },
                    );
                  }),
                ),
                decoration: BoxDecoration(
                  color: Colors.greenAccent,
                ),
              ),
            ],
          ),
        ),
     );
  }
}
