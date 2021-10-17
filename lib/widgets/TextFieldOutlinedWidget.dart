import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

// ignore: must_be_immutable
class TextFieldOutlinedWidget extends StatefulWidget {
  TextFieldOutlinedWidget({
    Key key,
    this.context,
    this.labelText,
    this.controller,
    this.focusNode,
    this.input,
    this.maxLines,
    this.enabled,
    this.hintText,
    this.borderRadius,
    this.onChanged,
    this.autovalidateMode,
    this.onSaved,
    this.validator,
    this.validated,
    this.maxChar = 8,
    this.collapse = false,
    this.textCapitalization = false,
    this.mobileInputFormatter = false
  }) : super(key: key);

  final BuildContext context;
  final String labelText;
  final TextEditingController controller;
  final FocusNode focusNode;
  final TextInputType input;
  final int maxLines;
  final bool enabled;
  final String hintText;
  final BorderRadius borderRadius;
  final ValueChanged<String> onChanged;
  final AutovalidateMode autovalidateMode;
  final FormFieldSetter<String> onSaved;
  final FormFieldValidator<String> validator;
  final bool validated;
  final int maxChar;
  final bool mobileInputFormatter;
  bool collapse = false;
  bool textCapitalization = false;

  @override
  TextFieldOutlinedWidgetState createState() => TextFieldOutlinedWidgetState();
}

class TextFieldOutlinedWidgetState extends State<TextFieldOutlinedWidget> {
  bool validated = true;
  validate(bool value){
    setState(() => validated = value);
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
      textCapitalization: TextCapitalization.none,
      focusNode: widget.focusNode,
      autovalidateMode: widget.autovalidateMode,
      onSaved: widget.onSaved,
      keyboardType: widget.input,
      onChanged: widget.onChanged,
      validator: widget.validator,
      maxLines: widget.maxLines,
      enabled: widget.enabled,
      maxLength: widget.maxChar,
      decoration:  new InputDecoration(
          counterText: '',
          border: new OutlineInputBorder(
              borderSide: new BorderSide(color: Theme.of(context).primaryColorDark)),
          errorStyle: TextStyle(height: 0),
          labelText: widget.labelText,
          /*labelStyle: !validated
               Theme.of(context).textTheme.caption!.copyWith(color: AppConstants.theme!.errorColor)
              : Theme.of(context).textTheme.caption,*/
          hintText:'Select ' + widget.labelText
      ),
    );
  }
}


