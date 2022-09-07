import 'package:country_picker/country_picker.dart';
import 'package:flutter/material.dart';


class CountryCodePickerWidget extends StatefulWidget {
  const CountryCodePickerWidget({Key? key}) : super(key: key);

  @override
  State<CountryCodePickerWidget> createState() => _CountryCodePickerWidgetState();
}

class _CountryCodePickerWidgetState extends State<CountryCodePickerWidget> {
  String countryCode = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.blueGrey,
        title: const Text(
          "Country Code Picker",
        ),
      ),
      body: Container(
        decoration: const BoxDecoration(
          color: Colors.blueGrey,
        ),
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 240),
          decoration: BoxDecoration(
            border: Border.all(color: Colors.black,),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text("+" "$countryCode", style: const TextStyle(
                fontSize: 40,
                color: Colors.white,
              ),),
              Center(
                child: TextButton(
                  onPressed: (){
                    showCountryPicker(
                        context: context,
                      countryListTheme: CountryListThemeData(
                        flagSize: 20,
                        textStyle: const TextStyle(fontSize: 20),
                        borderRadius: BorderRadius.circular(10),
                        inputDecoration: const InputDecoration(
                          hintText: "Start typing to search",
                          labelText: 'Search',
                        ),

                      ),
                        onSelect: (Country value ) {
                          print(value.countryCode.toString());
                          print(value.phoneCode.toString());

                          countryCode = value.phoneCode.toString();
                          setState(() {
                          });
                        });
                  },
                  child: const Text(
                    "Tap To Search Country Code ",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white
                    ),
                  ),


                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
