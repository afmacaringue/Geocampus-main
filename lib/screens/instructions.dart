import 'package:flutter/material.dart';

class Instructions extends StatelessWidget {
  const Instructions({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: ListView(children: const [
          Text(
            'Instructions',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 12,
          ),
          Text(
            '1 - Click on the hamburger menu icon at the topright corner of the screen to view categories of points of interest in the campus added to the application.',
            style: TextStyle(fontSize: 15, fontWeight: FontWeight.normal),
            textAlign: TextAlign.justify,
          ),
          SizedBox(
            height: 12,
          ),
          Text(
            '2 - Click on any marker icon to get the more information about the marker\'s point location',
            style: TextStyle(fontSize: 15, fontWeight: FontWeight.normal),
            textAlign: TextAlign.justify,
          ),
          SizedBox(
            height: 12,
          ),
          Text(
            '3 - Notice the search icon on the top right corner of the screen. Click it and search for a place in the campus by its name, in case it\'s retrieved then click it to see it\'s location on a map',
            textAlign: TextAlign.justify,
            style: TextStyle(fontSize: 15, fontWeight: FontWeight.normal),
          ),
          SizedBox(
            height: 8,
          ),
          Text(
            'As of September 2022 the added and searchable places are the following: CIUEM - ICT center, Mazula Central Library, Print4u copy shop, Faculty of Letters and Social Sciences, Faculty of Sciences, Faculty of Agronomy, Faculty of Economy, Faculty of Education, BCI bank, BIM bank, DMI - Department of Math and Computer Science, Department of Physics, Department of Chemistry, DCB - Department of Biologogical Sciences, Pedagogical Complex, Pedagogical Complex II, Student Center, CIUEM parking site, Department of Physics parking site, Mazula Central Library parking site, African Studies Center, Sino-Mozambique Cultural Center, Academic Registry Center, Mozambique History Archive, Sports Pavillion, Languages Center, University Clinic, Xerox Copy Shop',
            textAlign: TextAlign.justify,
            style: TextStyle(fontSize: 12, fontStyle: FontStyle.italic),
          )
        ]),
      ),
    );
  }
}
