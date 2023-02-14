import 'package:abedok_police_clearence_page/pages/dashboard_page.dart';
import 'package:flutter/material.dart';

class CountryScrollPage extends StatefulWidget {
  const CountryScrollPage({Key? key}) : super(key: key);

  @override
  State<CountryScrollPage> createState() => _CountryScrollPageState();
}

class _CountryScrollPageState extends State<CountryScrollPage> {
  List<Country> countries = [];

  String currentCountry = 'Bangladesh';

  @override
  void initState() {
    super.initState();
    countries = allCountries();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Stack(
        children: [
          Positioned(
            left: 0,
            right: 0,
            top: 0,
            bottom: 0,
            child: Container(
              height: 60,
              width: 200,
              child: Center(
                child: Container(
                  height: 50,
                  width: MediaQuery.of(context).size.width / 1.6,
                  decoration: BoxDecoration(
                   border: Border.symmetric(
                     horizontal: BorderSide(
                       color: Colors.grey.withOpacity(0.2),
                     )
                   )
                  ),
                ),
              ),
            ),
          ),
          Center(
            child: Container(
              width: 200,
              height: 500,
              child: ListWheelScrollView.useDelegate(
                itemExtent: 50,
                perspective: 0.001,
                diameterRatio: 1.6,
                physics: FixedExtentScrollPhysics(),
                squeeze: 1.0,
                useMagnifier: true,
                magnification: 1.3,
                onSelectedItemChanged: (index){
                  setState(() {
                    currentCountry = countries[index].names!;
                  });
                },
                childDelegate: ListWheelChildBuilderDelegate(
                  childCount: countries.length,
                  builder: (context, index){
                    return WheelTile(
                        currentCountry == countries[index].names
                            ? Colors.black
                            : Colors.black26,
                        countries[index].names!);
                  },
                ),
              ),
            ),
          ),
        ]
      ),
    );
  }
}
class Country {
  String? names;
  Country({
    this.names,
  });
  void setName(String getName) {
    names = getName;
  }
  String getName(){
    return names!;
  }
}
List<Country> allCountries(){
  List<Country> countries = [];
  Country countryModel = new Country();

  countryModel.setName('Bangladesh');
  countries.add(countryModel);
  countryModel = new Country();

  countryModel.setName('India');
  countries.add(countryModel);
  countryModel = new Country();

  countryModel.setName('USA');
  countries.add(countryModel);
  countryModel = new Country();

  countryModel.setName('London');
  countries.add(countryModel);
  countryModel = new Country();

  countryModel.setName('England');
  countries.add(countryModel);
  countryModel = new Country();

  countryModel.setName('Japan');
  countries.add(countryModel);
  countryModel = new Country();

  countryModel.setName('China');
  countries.add(countryModel);
  countryModel = new Country();

  countryModel.setName('Thailand');
  countries.add(countryModel);
  countryModel = new Country();

  countryModel.setName('Indonesia');
  countries.add(countryModel);
  countryModel = new Country();

  countryModel.setName('South Korea');
  countries.add(countryModel);
  countryModel = new Country();

  countryModel.setName('Philippines');
  countries.add(countryModel);
  countryModel = new Country();

  countryModel.setName('Singapore');
  countries.add(countryModel);
  countryModel = new Country();

  countryModel.setName('Vietnam');
  countries.add(countryModel);
  countryModel = new Country();

  countryModel.setName('Qatar');
  countries.add(countryModel);
  countryModel = new Country();

  countryModel.setName('Malaysia');
  countries.add(countryModel);
  countryModel = new Country();

  countryModel.setName('Hong Kong');
  countries.add(countryModel);
  countryModel = new Country();

  countryModel.setName('Saudi Arabia');
  countries.add(countryModel);
  countryModel = new Country();

  countryModel.setName('Iran');
  countries.add(countryModel);
  countryModel = new Country();

  countryModel.setName('Taiwan');
  countries.add(countryModel);
  countryModel = new Country();

  countryModel.setName('Cambodia');
  countries.add(countryModel);
  countryModel = new Country();

  countryModel.setName('Israel');
  countries.add(countryModel);
  countryModel = new Country();

  countryModel.setName('Afghanistan');
  countries.add(countryModel);
  countryModel = new Country();

  countryModel.setName('Myanmar');
  countries.add(countryModel);
  countryModel = new Country();

  countryModel.setName('Mongolia');
  countries.add(countryModel);
  countryModel = new Country();

  countryModel.setName('Laos');
  countries.add(countryModel);
  countryModel = new Country();

  countryModel.setName('Nepal');
  countries.add(countryModel);
  countryModel = new Country();

  countryModel.setName('Syria');
  countries.add(countryModel);
  countryModel = new Country();

  countryModel.setName('Sri Lanka');
  countries.add(countryModel);
  countryModel = new Country();

  countryModel.setName('Iraq');
  countries.add(countryModel);
  countryModel = new Country();

  countryModel.setName('North Korea');
  countries.add(countryModel);
  countryModel = new Country();

  countryModel.setName('Maldives');
  countries.add(countryModel);
  countryModel = new Country();

  countryModel.setName('Lebanon');
  countries.add(countryModel);
  countryModel = new Country();

  countryModel.setName('Armenia');
  countries.add(countryModel);
  countryModel = new Country();

  countryModel.setName('Brunei');
  countries.add(countryModel);
  countryModel = new Country();

  countryModel.setName('Jordan');
  countries.add(countryModel);
  countryModel = new Country();

  countryModel.setName('Yemen');
  countries.add(countryModel);
  countryModel = new Country();

  countryModel.setName('Uzbekistan');
  countries.add(countryModel);
  countryModel = new Country();

  countryModel.setName('Palestine');
  countries.add(countryModel);
  countryModel = new Country();

  countryModel.setName('Macao');
  countries.add(countryModel);
  countryModel = new Country();

  countryModel.setName('Bhutan');
  countries.add(countryModel);
  countryModel = new Country();

  countryModel.setName('Oman');
  countries.add(countryModel);
  countryModel = new Country();

  countryModel.setName('Kuwait');
  countries.add(countryModel);
  countryModel = new Country();

  countryModel.setName('Bahrain');
  countries.add(countryModel);
  countryModel = new Country();

  countryModel.setName('Turkmenistan');
  countries.add(countryModel);
  countryModel = new Country();

  countryModel.setName('Tajikistan');
  countries.add(countryModel);
  countryModel = new Country();



  return countries;
}
class WheelTile extends StatelessWidget {
  final String countries;
  final Color selectedColor;
  const WheelTile(this.selectedColor, this.countries,
      {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text(
          countries,
          style: TextStyle(
            fontSize: 16,
            color: selectedColor,
          ),
        ),
      ),
    );
  }
}
