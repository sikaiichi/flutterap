import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final appTitle = 'Flutter Form Demo';
    return MaterialApp(
      
      home: Scaffold(
        appBar : AppBar(
          title: Text(appTitle),),
          body: MyCustomForm(),
      ),
      
    );
  }
}

class MyCustomForm extends StatefulWidget {
  const MyCustomForm({ Key? key }) : super(key: key);

  @override
  _MyCustomFormState createState() => _MyCustomFormState();
}

class _MyCustomFormState extends State<MyCustomForm> {
  final _formKey =GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextFormField(
            decoration: const InputDecoration(
              icon: Icon(Icons.person),
              hintText: "Enter your name",
              labelText: 'Name'
            ),
            validator: (value) {  
              if (value!.isEmpty) {  
                return 'Please enter some text';  
              }  
              return null;  
            },  
          ),
          TextFormField(
            decoration: const InputDecoration(
              icon: Icon(Icons.person),
              hintText: "Enter a phone number",
              labelText: 'Phone'
            ),
            validator: (value) {  
              if (value!.isEmpty) {  
                return 'Please enter some text';  
              }  
              return null;  
            },
          ),
          TextFormField(
            decoration: const InputDecoration(
              icon: Icon(Icons.person),
              hintText: "Enter your date of birth",
              labelText: 'Dob'
            ),
            validator: (value) {  
              if (value!.isEmpty) {  
                return 'Please enter some text';  
              }  
              return null;  
            },
          ),
          Container(  
              padding: const EdgeInsets.only(left: 150.0, top: 40.0),  
              child: new RaisedButton(  
                child: const Text('Submit'),  
                onPressed: () {  
                  // It returns true if the form is valid, otherwise returns false  
                  if (_formKey.currentState!.validate()) {  
                    // If the form is valid, display a Snackbar.  
                    Scaffold.of(context)  
                        .showSnackBar(SnackBar(content: Text('Data is in processing.')));  
                  }  
                },  
              )),  
        ],  
      ),  
    );  
  }  
}  