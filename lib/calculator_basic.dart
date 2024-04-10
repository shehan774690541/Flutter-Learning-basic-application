import 'package:flutter/material.dart';

class CalculatorBasic extends StatelessWidget {
  String userInput = " empty";
  String result = "0";

  List<String> buttonList = [
    'AC', '(', ')', '/',
    '7', '8', '9', '*',
    '4', '5', '6', '+',
    '1', '2', '3', '-',
    'C', '0', '.', '=',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0x00000000),
      body: Column(
        children: [
          SizedBox(
            // height: MediaQuery.of(context).size.height / 3,
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.all(0),
                  alignment: Alignment.centerRight,
                  child: Text(
                    userInput,
                    style: TextStyle(
                      fontSize: 32,
                      color: Colors.white,
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(0),
                  alignment: Alignment.centerRight,
                  child: Text(
                    result,
                    style: TextStyle(
                      fontSize: 48,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Divider(
            color: Colors.white,
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.all(17),
              child: GridView.builder(
                itemCount: buttonList.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 4,
                  crossAxisSpacing: 12,
                  mainAxisSpacing: 5,
                ),
                itemBuilder: (BuildContext context, int index) {
                  return CoustomButton(buttonList[index]);
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}


Widget CoustomButton(String text){
  return InkWell(
    splashColor: Color(0xFF1d2630),
    onTap: () {
      HandleButton(text);
    },
    child: Ink(
      decoration: BoxDecoration(
        color: getBgColor(text),
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.white.withOpacity(0.1),
            blurRadius: 4,
            spreadRadius: 0.5,
            offset: Offset(-3, -3)
          )
        ],
      ),
      child: Center(
        child: Text(text,
        style: TextStyle(
          color: getColor(text),
          fontSize: 30,
          fontWeight: FontWeight.bold
        ),
        ),
      ),
    ),
  );
}

getColor(String text){
  if (text == "(" || text == ")" || text == "+" || text == "-" || text == "*" || text == "/" || text == "C" ){
    return Color.fromARGB(255, 252, 100, 100);
  }
  return Colors.white;
}

getBgColor(String text){
  if (text == "AC"){
    return Color.fromARGB(255, 252, 100, 100);
  }
  if (text == "="){
    return Color.fromARGB(255, 104, 204, 100);
  }
  return Color(0xFF1d2630);
}

HandleButton(String text){

}