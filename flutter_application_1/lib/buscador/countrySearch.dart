// ignore_for_file: prefer_const_constructors, prefer_is_empty, avoid_init_to_null

import 'package:flutter/material.dart';
import 'package:flutter_application_1/services/country_service.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../services/models/country.dart';

class CountrySearchDelegate extends SearchDelegate {
  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(icon: Icon(Icons.clear), onPressed: () => this.query = '')
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
        icon: Icon(Icons.arrow_back_ios),
        // ignore: unnecessary_this
        onPressed: () {
          var result = null;
          return this.close(context, result);
        });
  }

  @override
  Widget buildResults(BuildContext context) {
    if (query.trim().length == 0) {
      return Text('No hay valor en el query');
    }

    // ignore: unnecessary_new
    final countryService = new CountryService();
    //query!
    return FutureBuilder(
      future: countryService.getCountryByName(query),
      builder: (_, AsyncSnapshot snapshot) {
        if (snapshot.hasData) {
          //creamos la lista :')
          return _showCountries(snapshot.data);
        } else {
          return Center(
            child: CircularProgressIndicator(
              strokeWidth: 4,
            ),
          );
        }
        ;
      },
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    return ListTile(
      title: Text('Buscados'),
    );
  }

  Widget _showCountries(List<Country> countries) {
    return ListView.builder(
      itemCount: countries.length,
      itemBuilder: (context, i) {
        final pais = countries[i];
        return ListTile(
          leading: (pais.flag != null)
              ? SvgPicture.network(
                  pais.flag,
                  width: 45,
                )
              : Text(''),
          title: Text(pais.name),
          subtitle: Text(pais.capital),
          trailing: Text(pais.alpha3Code),
          onTap: () {
            // ignore: unnecessary_this
            this.close(context, pais);
          },
        );
      },
    );
  }
}
