import 'package:flutter/material.dart';

class SearchWidget extends StatefulWidget {
  final String text;
  final ValueChanged<String> onChanged;
  final String hintText;

  const SearchWidget({
    Key key,
    @required this.text,
    @required this.onChanged,
    @required this.hintText,
  }) : super(key: key);

  @override
  _SearchWidgetState createState() => _SearchWidgetState();
}

class _SearchWidgetState extends State<SearchWidget> {
  final controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final styleActive = TextStyle(color: Color(0xfffaa307));
    final styleHint = TextStyle(fontSize: 15, color: Color(0xfffaa307).withOpacity(0.5));
    final style = widget.text.isEmpty ? styleHint : styleActive;

    return Container(
      height: 35,
      margin: const EdgeInsets.fromLTRB(5, 10, 5, 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Color(0xff2F1C2D),
        border: Border.all(color: Color(0xfffaa307).withOpacity(0.6)),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: TextField(
        textAlignVertical: TextAlignVertical.center,
        controller: controller,
        decoration: InputDecoration(
          icon: Icon(Icons.search, color: style.color),
          suffixIcon: widget.text.isNotEmpty
              ? GestureDetector(
            child: Icon(Icons.close, color: style.color),
            onTap: () {
              controller.clear();
              widget.onChanged('');
              FocusScope.of(context).requestFocus(FocusNode());
            },
          )
              : null,
          hintText: widget.hintText,
          hintStyle: style,
          border: InputBorder.none,
        ),
        style: style,
        onChanged: widget.onChanged,
      ),
    );
  }
}