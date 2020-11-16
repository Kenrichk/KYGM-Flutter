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
  final firstNameCon = TextEditingController(),
      midNameCon = TextEditingController(),
      lastNameCon = TextEditingController(),
      ageCon = TextEditingController(),
      dobCon = TextEditingController(),
      addressCon = TextEditingController(),
      cityCon = TextEditingController(),
      stateCon = TextEditingController(),
      zipCon = TextEditingController(),
      ssidCon = TextEditingController(),
      phoneNumCon = TextEditingController();
  // make an image selector
  //final firstNameCon = ImageEditingController();
  void submitData() {
    final entFirstNameCon = firstNameCon.text,
        entMidNameCon = midNameCon.text,
        entLastNameCon = lastNameCon.text,
        entAgeCon = ageCon.text,
        entDobCon = dobCon.text,
        entAddressCon = addressCon.text,
        entCityCon = cityCon.text,
        entStateCon = stateCon.text,
        entZipCon = zipCon.text,
        entSsidCon = ssidCon.text,
        entPhoneNumCon = phoneNumCon.text;
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
            //give them initial values if editing
            TextField(
              controller: firstNameCon,
              decoration: InputDecoration(labelText: 'First Name'),
              onSubmitted: (_) => submitData(),
            ),
            TextField(
              controller: midNameCon,
              decoration: InputDecoration(labelText: 'Middle Name'),
              onSubmitted: (_) => submitData(),
            ),
            TextField(
              controller: lastNameCon,
              decoration: InputDecoration(labelText: 'Last Name'),
              onSubmitted: (_) => submitData(),
            ),
            TextField(
              controller: ageCon,
              decoration: InputDecoration(labelText: 'Age'),
              keyboardType: TextInputType.number,
              onSubmitted: (_) => submitData(),
            ),
            TextField(
              controller: dobCon,
              decoration: InputDecoration(labelText: 'DoB'),
              keyboardType: TextInputType.datetime,
              onSubmitted: (_) => submitData(),
            ),
            TextField(
              controller: addressCon,
              decoration: InputDecoration(labelText: 'Address'),
              keyboardType: TextInputType.streetAddress,
              onSubmitted: (_) => submitData(),
            ),
            TextField(
              controller: cityCon,
              decoration: InputDecoration(labelText: 'City'),
              onSubmitted: (_) => submitData(),
            ),
            TextField(
              controller: stateCon,
              decoration: InputDecoration(labelText: 'State'),
              onSubmitted: (_) => submitData(),
            ),
            TextField(
              controller: zipCon,
              decoration: InputDecoration(labelText: 'Zip'),
              onSubmitted: (_) => submitData(),
            ),
            TextField(
              controller: ssidCon,
              decoration: InputDecoration(labelText: 'SSID'),
              keyboardType: TextInputType.number,
              onSubmitted: (_) => submitData(),
            ),
            TextField(
              controller: lastNameCon,
              decoration: InputDecoration(labelText: 'Last Name'),
              keyboardType: TextInputType.phone,
              onSubmitted: (_) => submitData(),
            ),
          ],
        ),
      ),
    );
  }
}
