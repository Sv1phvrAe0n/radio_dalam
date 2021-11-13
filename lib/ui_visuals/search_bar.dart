import 'package:flutter/material.dart';
import 'package:radio/ui_visuals/text_styles.dart';

class SearchWidget extends StatefulWidget {
  final String text;
  // final ValueChanged<String> onChanged;
  final String hintText;

  const SearchWidget({
    required this.text,
    // required this.onChanged,
    required this.hintText,
  });

  @override
  _SearchWidgetState createState() => _SearchWidgetState();
}

class _SearchWidgetState extends State<SearchWidget> {
  final controller = TextEditingController();


  @override
  Widget build(BuildContext context) {
    final styleActive = Genre_country;
    final styleHint = search;
    final style = widget.text.isEmpty ? styleHint : styleActive;

    return Container(
      height: 35,
      margin: const EdgeInsets.fromLTRB(5, 10, 5, 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Color(0xff151B29),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: TextField(
        textAlign: TextAlign.left,
        // maxLength: 40,
        controller: controller,
        decoration: InputDecoration(
          icon: Icon(Icons.search, color: style.color),
          suffixIcon: widget.text.isNotEmpty
              ? GestureDetector(
            child: Icon(Icons.close, color: style.color),
            onTap: () {
              controller.clear();
              // widget.onChanged('');
              FocusScope.of(context).requestFocus(FocusNode());
            },
          )
              : null,
          hintText: widget.hintText,
          hintStyle: style,
          border: InputBorder.none,
        ),
        style: style,
        // onChanged: widget.onChanged,
      ),
    );
  }
}