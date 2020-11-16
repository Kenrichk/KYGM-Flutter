import 'package:flutter/material.dart';

class EditClientInfo extends StatefulWidget {
  final Function editClient;
  EditClientInfo(this.editClient);
  @override
  _EditClientInfoState createState() => _EditClientInfoState();
}

//use an if function to make this a dual purpose add or edit
class _EditClientInfoState extends State<EditClientInfo> {
  //create controllers for the textfields
  final firstNameCon = TextEditingController();
  final midNameCon = TextEditingController();
  final lastNameCon = TextEditingController();
  final ageCon = TextEditingController();
  final dobCon = TextEditingController();
  final addressCon = TextEditingController();
  final cityCon = TextEditingController();
  final stateCon = TextEditingController();
  final zipCon = TextEditingController();
  final ssidCon = TextEditingController();
  final phoneNumCon = TextEditingController();
  // make it an image selector
  //final firstNameCon = TextEditingController();
  void submitData() {
    final entFirstNameCon = firstNameCon.text;
    final entMidNameCon = midNameCon.text;
    final entLastNameCon = lastNameCon.text;
    final entAgeCon = ageCon.text;
    final entDobCon = dobCon.text;
    final entAddressCon = addressCon.text;
    final entCityCon = cityCon.text;
    final entStateCon = stateCon.text;
    final entZipCon = zipCon.text;
    final entSsidCon = ssidCon.text;
    final entPhoneNumCon = phoneNumCon.text;
    if (entFirstNameCon.isEmpty ||
        entMidNameCon.isEmpty ||
        entLastNameCon.isEmpty ||
        entAgeCon.isEmpty ||
        entDobCon.isEmpty ||
        entAddressCon.isEmpty ||
        entCityCon.isEmpty ||
        entStateCon.isEmpty ||
        entZipCon.isEmpty ||
        entSsidCon.isEmpty ||
        entPhoneNumCon.isEmpty) {
      return;
    } else {
      widget.editClient(
        entFirstNameCon,
        entLastNameCon,
      );
      Navigator.of(context).pop();
    }
    @override
    Widget build(BuildContext context) {
      return Card(
        elevation: 5,
        child: Container(
          padding: EdgeInsets.all(5),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              //imageField on top
            ],
          ),
        ),
      );
    }
  }
}
