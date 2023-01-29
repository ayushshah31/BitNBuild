import 'package:flutter/material.dart';

class DescriptionMedicine extends StatefulWidget {
  const DescriptionMedicine({Key? key}) : super(key: key);

  @override
  State<DescriptionMedicine> createState() => _DescriptionMedicineState();
}

class _DescriptionMedicineState extends State<DescriptionMedicine> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          foregroundColor: Colors.black,
          title: Text("Medicines"),
          automaticallyImplyLeading: false,
          leading: IconButton(
            icon: Icon(Icons.arrow_back_ios),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          centerTitle: true,
          backgroundColor: Colors.white,
          elevation: 0,
        ),
        body: Column(children: [
          Container(
            height: 60,
            width: 340,
            margin: const EdgeInsets.all(10),
            decoration: BoxDecoration(
                color: Color(0xFFEEF6FC),
                borderRadius: BorderRadius.circular(20)),
            child: Row(
              children: [
                SizedBox(width: 10),
                Icon(
                  Icons.search,
                  size: 28,
                  color: Color(0xFF8AA0BC),
                ),
                SizedBox(width: 5),
                Text(
                  'Search Medicines...',
                  style: TextStyle(color: Color(0xFF8AA0BC)),
                ),
                SizedBox(
                  width: 150,
                ),
                Image.asset('lib/images/Vector.png')
              ],
            ),
          ),
        ]));
  }
}
