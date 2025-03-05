import 'package:coffe_shop_app/src/themes/light_theme.dart';
import 'package:flutter/material.dart';

class SearchWidget extends StatelessWidget {
  const SearchWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Row(
        children: <Widget>[
          Expanded(
            child: Container(
              height: 64,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: LightTheme.darkGrey,
                borderRadius: BorderRadius.all(Radius.circular(15)),
              ),
              child: TextField(
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                  fontWeight: FontWeight.w200,
                ),
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "Search Coffee",
                  hintStyle: TextStyle(
                    fontSize: 16,
                    color: LightTheme.textLightColor,
                    fontWeight: FontWeight.w200,
                  ),
                  contentPadding: EdgeInsets.symmetric(
                    vertical: 20,
                    horizontal: 20,
                  ),
                  prefixIcon: Padding(
                    padding: EdgeInsets.only(left: 20, right: 15),
                    child: Icon(Icons.search, color: Colors.white),
                  ),
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
              padding: EdgeInsets.all(20.0),
              child: Icon(Icons.settings),
            ),
          ),
        ],
      ),
    );
  }
}
