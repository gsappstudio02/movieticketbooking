import 'package:bookmyshowclone/components/seatselections/seatListing.dart';
import 'package:bookmyshowclone/models/constants.dart';
import 'package:flutter/material.dart';

class Seatselections extends StatefulWidget {
  const Seatselections({super.key});

  @override
  State<Seatselections> createState() => _SeatselectionsState();
}

class _SeatselectionsState extends State<Seatselections> {
  @override
  Widget build(BuildContext context) {
    final movidetails=movieData[0];
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Container(
          width: MediaQuery.of(context).size.width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(movidetails['title'], style: TextStyle(color: darkColor, fontSize: textContent, fontFamily: primaryFont),),
              Text('Cinepolis Mumbai Maharashtra', style: TextStyle(color: darkColor, fontSize: 12, fontFamily: subtitleFonts),),
            ],
          ),
        ),
      ),
      backgroundColor: Colors.white,
      body: SeatsListings(),
    );
  }
}
