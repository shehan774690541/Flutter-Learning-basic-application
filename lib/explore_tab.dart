import 'package:flutter/material.dart';

class ExploreTab extends StatefulWidget{
  @override
  _ExploreTabState createState() => _ExploreTabState();
}

class _ExploreTabState extends State<ExploreTab> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Builder(
          builder: (context) => TextButton(
            onPressed: () {
              showDialogMessage(context); // Call showDialogMessage instead
            },
            child: const Text("Click Btn"),
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.black12),
            ),
          ),
        ),
      ),
    );
  }

  void showDialogMessage(BuildContext context) {
    showDialog<String>(
      context: context,
      builder: (BuildContext contxt) => AlertDialog(
        title: const Text('Alert Dialog Title'),
        content: const Text('Alert Dialog message description'),
        actions: <Widget>[
          TextButton(
            onPressed: () => Navigator.pop(context, 'Cancel'),
            child: const Text('Cancel'),
          ),
          TextButton(
            onPressed: () => Navigator.pop(context, 'OK'),
            child: const Text('OK'),
          ),
        ],
      ),
    );
  }
}


