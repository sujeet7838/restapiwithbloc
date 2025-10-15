import 'package:flutter/material.dart';
import 'package:restapiwithbloc/models/allcountrylist_model.dart';

class AllCountryDetailsPage extends StatelessWidget {
    final ContryListModel country;

  const AllCountryDetailsPage({super.key, required  this.country});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
       title: Text(country.name, style: const TextStyle(color: Colors.white),),
        centerTitle: true,
        elevation: 0,
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(25),
              bottomRight: Radius.circular(25),
            ),
          ),
        ),
  
      ),
      body: Padding( 
        padding: const EdgeInsets.all(16.0),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                country.official,
                style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
           
            ],
          ),
        ),
      ),
    );
  }
}