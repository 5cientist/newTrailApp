import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class FormPage extends StatelessWidget {
  static const routeName = '/formpage';
  final GlobalKey<FormState> _formKey = new GlobalKey<FormState>();
  Map formData = {
    'housename': null,
    'price': null,
    'bedroom': null,
    'bathroom': null,
    'description': null,
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              Form(
                key: _formKey,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextFormField(
                        decoration: InputDecoration(
                          hintText: 'House name',
                        ),
                        onSaved: (val) {
                          formData['housename'] = val;
                        },
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextFormField(
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          hintText: 'Price',
                        ),
                        onSaved: (val) {
                          formData['price'] = val;
                        },
                        validator: (val) {
                          if (val.length > 2) {
                            return "greater than 2";
                          }
                        },
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextFormField(
                        keyboardType: TextInputType.number,
                        inputFormatters: [
                          WhitelistingTextInputFormatter.digitsOnly
                        ],
                        decoration: InputDecoration(
                          hintText: 'No of bedroom',
                        ),
                        onSaved: (val) {
                          formData['bedroom'] = val;
                        },
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextFormField(
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          hintText: 'no of bathroom',
                        ),
                        onSaved: (val) {
                          formData['bathroom'] = val;
                        },
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextFormField(
                        keyboardType: TextInputType.multiline,
                        maxLines: 3,
                        decoration: InputDecoration(
                          hintText: 'description',
                        ),
                        onSaved: (val) {
                          formData['description'] = val;
                        },
                      ),
                    ),
                    RaisedButton(
                      color: Colors.red,
                      textColor: Colors.white,
                      onPressed: () {
                        if (!_formKey.currentState.validate()) {
                          return;
                        }

                        _formKey.currentState.save();
                        print(formData);
                      },
                      child: Text('Countine'),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
