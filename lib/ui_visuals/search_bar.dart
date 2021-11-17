import 'package:flutter/material.dart';
import 'package:radio/ui_visuals/text_styles.dart';

class SearchWidget extends StatefulWidget {
  final String text;
  final ValueChanged<String> onChanged;
  final String hintText;

  const SearchWidget({
    required this.text,
    required this.onChanged,
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
      child: TextField(
        cursorColor: Color(0xff9CA1AB),
        textAlignVertical: TextAlignVertical.center,
        textAlign: TextAlign.left,
        controller: controller,
        decoration: InputDecoration(
            prefixIcon: Icon(Icons.search, color: style.color),
            suffixIcon: widget.text.isNotEmpty
                ? GestureDetector(
                  child: Icon(Icons.close, color: style.color),
                  onTap: () {
                    controller.clear();
                    widget.onChanged('');
                    FocusScope.of(context).requestFocus(FocusNode());
                  },
                  ) : null,
            hintText: widget.hintText,
            hintStyle: style,
            filled: true,
            fillColor: Color(0xff1E2431),
          contentPadding: EdgeInsets.symmetric(horizontal: 5),
          border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(10)
          ),
        ),
        style: style,
        onChanged: widget.onChanged,
      ),
    );
  }
}