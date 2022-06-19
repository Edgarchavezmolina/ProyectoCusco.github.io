import 'package:flutter/material.dart';
import 'package:flutter_application_1/buscador/countrySearch.dart';

class Search extends StatefulWidget {
  @override
  _SearchState createState() => _SearchState();
}

class _SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      margin: EdgeInsets.symmetric(horizontal: 20.0),
      padding: EdgeInsets.symmetric(horizontal: 20.0),
      height: 54,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
                offset: Offset(0, 10),
                blurRadius: 50,
                color: Colors.black.withOpacity(0.23))
          ]),
      child: Row(
        children: <Widget>[
          Expanded(
            child: TextField(
                onTap: () async {
                  final pais = await showSearch(
                      context: context, delegate: CountrySearchDelegate());
                },
                decoration: InputDecoration(
                    hintText: "Search",
                    hintStyle: TextStyle(color: Colors.black.withOpacity(0.5)),
                    enabledBorder: InputBorder.none,
                    focusedBorder: InputBorder.none,
                    suffixIcon: Icon(Icons.search_sharp))),
          ),
        ],
      ),
    );
  }
}
