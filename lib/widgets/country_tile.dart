import 'package:flutter/material.dart';
import 'package:restapiwithbloc/models/country_model.dart';

class CountryTile extends StatelessWidget {
  final CountryModel country;

  const CountryTile({super.key, required this.country});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4.0,
      shadowColor: Colors.black,
      color: Colors.grey[100],
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 8.0, left: 8.0),
            child: Row(
              children: [
                Image.network(
                  country.flag,
                  width: 100,
                  height: 80,
                  fit: BoxFit.cover,
                ),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    country.name,
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 4),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    const Text(
                      'Official Name: ',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Expanded(
                      child: Text(
                        country.official,
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.normal,
                          overflow: TextOverflow.ellipsis,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 4),
                Row(
                  children: [
                    const Text(
                      'Capital: ',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Expanded(
                      child: Text(
                        country.capital,
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.normal,
                          overflow: TextOverflow.ellipsis,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 4),
                Row(
                  children: [
                    const Text(
                      'Region: ',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    Expanded(
                      child: Text(
                        country.region,
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.normal,
                          overflow: TextOverflow.ellipsis,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 4),
                Row(
                  children: [
                    const Text(
                      'Capital: ',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    Expanded(
                      child: Text(
                        country.capital,
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.normal,
                          overflow: TextOverflow.ellipsis,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ],
                ),
                // const SizedBox(height: 4),
                // Row(
                //   children: [
                //     const Text(
                //       'Region: ',
                //       style: TextStyle(
                //         fontSize: 16,
                //         fontWeight: FontWeight.bold,
                //       ),
                //     ),

                //     Expanded(
                //       child: Text(
                //         country.region,
                //         style: const TextStyle(
                //           fontSize: 16,
                //           fontWeight: FontWeight.normal,
                //           overflow: TextOverflow.ellipsis,
                //           color: Colors.black,
                //         ),
                //       ),
                //     ),
                //   ],
                // ),
                // const SizedBox(height: 4),
                // Row(
                //   children: [
                //     const Text(
                //       'Capital: ',
                //       style: TextStyle(
                //         fontSize: 16,
                //         fontWeight: FontWeight.bold,
                //       ),
                //     ),
                //     Expanded(
                //       child: Text(
                //         country.capital,
                //         style: const TextStyle(
                //           fontSize: 16,
                //           fontWeight: FontWeight.normal,
                //           overflow: TextOverflow.ellipsis,
                //           color: Colors.black,
                //         ),
                //       ),
                //     ),
                //   ],
                // ),
                // const SizedBox(height: 4),
                // Row(
                //   children: [
                //     const Text(
                //       'Region: ',
                //       style: TextStyle(
                //         fontSize: 16,
                //         fontWeight: FontWeight.bold,
                //       ),
                //     ),
                //     Expanded(
                //       child: Text(
                //         country.region,
                //         style: const TextStyle(
                //           fontSize: 16,
                //           fontWeight: FontWeight.normal,
                //           overflow: TextOverflow.ellipsis,
                //           color: Colors.black,
                //         ),
                //       ),
                //     ),
                //   ],
                // ),
                // const SizedBox(height: 4),
                // Row(
                //   children: [
                //     const Text(
                //       'Region: ',
                //       style: TextStyle(
                //         fontSize: 16,
                //         fontWeight: FontWeight.bold,
                //       ),
                //     ),

                //     Expanded(
                //       child: Text(
                //         country.region,
                //         style: const TextStyle(
                //           fontSize: 16,
                //           fontWeight: FontWeight.normal,
                //           overflow: TextOverflow.ellipsis,
                //           color: Colors.black,
                //         ),
                //       ),
                //     ),
                //   ],
                // ),
                const SizedBox(height: 4),
                Row(
                  children: [
                    const Text(
                      'Currencies: ',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Expanded(
                      child: Text(
                        country.currencies,
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.normal,
                          overflow: TextOverflow.ellipsis,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
