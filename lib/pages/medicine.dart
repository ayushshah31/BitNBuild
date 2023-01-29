import 'package:flutter/material.dart';

class FindMedicine extends StatefulWidget {
  const FindMedicine({Key? key}) : super(key: key);

  @override
  State<FindMedicine> createState() => _FindMedicineState();
}

class _FindMedicineState extends State<FindMedicine> {

  dynamic options;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    // options = {
    //   method: 'GET',
    //   url: 'https://drug-info-and-price-history.p.rapidapi.com/1/druginfo',
    //   params: {drug: `${medicine}`},
    //   headers: {
    //     'X-RapidAPI-Key': 'edfd4b0645mshc4b607cd2864adfp1aa82ajsn0394745ced1c',
    //     'X-RapidAPI-Host': 'drug-info-and-price-history.p.rapidapi.com'
    //   }
    // };
  }
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
