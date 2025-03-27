import 'package:coffe_shop_app/src/themes/light_theme.dart';
import 'package:flutter/material.dart';

class SearchWidget extends StatelessWidget {
  const SearchWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Expanded(
          child: Container(
            decoration: BoxDecoration(
              color: LightTheme.darkGrey,
              borderRadius: BorderRadius.all(Radius.circular(15)),
              boxShadow: [
                BoxShadow(
                  color: Colors.black87,
                  blurRadius: 100,
                  spreadRadius: 1,
                ),
              ],
            ),
            child: TextFormField(
              style: TextStyle(
                fontSize: 16,
                color: Colors.white,
                fontWeight: FontWeight.w200,
              ),
              decoration: InputDecoration(
                hintText: "Search Coffee",
                hintStyle: TextStyle(
                  fontSize: 16,
                  color: LightTheme.textLightColor,
                  fontWeight: FontWeight.w400,
                ),
                prefixIcon: Padding(
                  padding: EdgeInsets.only(left: 5),
                  child: Icon(Icons.search, color: Colors.white),
                ),
                border: UnderlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                ),
                contentPadding: EdgeInsets.all(17),
              ),
            ),
          ),
        ),
        SizedBox(width: 15),
        MaterialButton(
          onPressed: () {},
          minWidth: 0,
          padding: EdgeInsets.zero,
          elevation: 0,
          color: LightTheme.primaryColor,
          textColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          child: Padding(
            padding: EdgeInsets.all(17.0),
            child: Icon(Icons.settings),
          ),
        ),
      ],
    );
  }
}
