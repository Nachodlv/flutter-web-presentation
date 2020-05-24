import 'package:flutter/material.dart';
import 'package:hello_world/slides/slides-presets/slide-two-sides.dart';

class FormValidationSlide extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
     return SlideTwoSides(
      title: "Form Validation",
      paragraphs: [
        "The Form widget acts as a container for grouping and validating multiple form fields.",
        "Validate the input by providing a validator() function to the TextFormField. If the user’s input isn’t valid, the validator function returns a String containing an error message. If there are no errors, the validator must return null",
        "When the user attempts to submit the form, check if the form is valid. If it is, display a success message. If it isn’t (the text field has no content) display the error message"
      ],
      code: """
      final _formKey = GlobalKey<FormState>();

      Form(
        key: _formKey,
        child: Column(
          children: <Widget>[
            TextFormField(
              validator: (value) {
                if (value.isEmpty) {
                  return 'Please enter some text';
                }
                return null;
              },
            ),
            RaisedButton(
              onPressed: () {
                if (_formKey.currentState.validate()) {
                  Scaffold.of(context)
                      .showSnackBar(SnackBar(content: Text('Processing Data')));
                }
              },
              child: Text('Submit'),
            ),
          ],
        ),
    );
      """,
    );
  }

}