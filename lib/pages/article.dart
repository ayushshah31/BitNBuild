import 'dart:collection';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:http/http.dart';

class FindArticle extends StatefulWidget {
  const FindArticle({Key? key}) : super(key: key);

  @override
  State<FindArticle> createState() => _FindArticleState();
}

class _FindArticleState extends State<FindArticle> {
  late String medicine;
  dynamic options;
  late var url ;
  late var response;
  var data;
  bool isLoading = true;
  void fetch() async{
    url = Uri.parse('https://newsapi.org/v2/top-headlines?country=in&category=health&apiKey=5f73f9e3da4342419f8bb20100bb2e2f');
    response = await get(url);
    print(response.statusCode);
    print(response.body);
    setState(() {
      data = jsonDecode(response.body);
      isLoading = false;
    });
    print(data['articles']);
  }

  @override
  void initState(){
    // TODO: implement initState
    super.initState();
    fetch();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
      ),
      body: Container(
        height: !isLoading?700:50,
        child: !isLoading? ListView.builder(
        itemCount: 15,
        itemBuilder: (context,i){
          return Container(
            height: 150,
            child: Card(
              // color: Colors.blue,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
              margin: EdgeInsets.all(5),
                child: Container(
                  height: 170,
                  width: 330,
                  decoration: BoxDecoration(
                    color: Color(0xFFDCEDF9),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        flex: 1,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 15, top: 15),
                              child: Text(
                                'Title: ${data['articles'][i]['title']}',
                                style: TextStyle(
                                    color: Color(0xFF0E1012),
                                    fontSize: 12,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w600),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                left: 15,
                              ),
                              child: Text(
                                'Source: ${data['articles'][i]['source']['name']}k',
                                style: TextStyle(
                                    color: Color(0xFF4A545E),
                                    fontSize: 10,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w300),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Padding(
                          padding: const EdgeInsets.only(top: 15),
                          child: Container(
                            height: 100,
                            width: 100,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                                image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: NetworkImage(data['articles'][i]['urlToImage']))),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
            ),
          );
        }
        ): Center(child: CircularProgressIndicator(color: Colors.purpleAccent,backgroundColor: Colors.redAccent,)),
      ));
  }
}
