import 'package:bookmyshowclone/components/homepage/bestEvents.dart';
import 'package:bookmyshowclone/components/homepage/newRelases.dart';
import 'package:bookmyshowclone/components/homepage/premierMovies.dart';
import 'package:bookmyshowclone/components/homepage/topCarousel.dart';
import 'package:bookmyshowclone/models/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:iconsax/iconsax.dart';

class HomePageScreen extends StatefulWidget {
  const HomePageScreen({super.key});

  @override
  State<HomePageScreen> createState() => _HomePageScreenState();
}

class _HomePageScreenState extends State<HomePageScreen> {

  @override
  void initState() {
    super.initState();
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        statusBarColor: Colors.white, // Same as app bar
        statusBarIconBrightness: Brightness.light, // Adjust for visibility
      ),
    );
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        elevation: 0,
        title: Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("It's All Starts Here", style: TextStyle(color: darkColor, fontFamily: primaryFont, fontSize: textContent),),
                Text('Mumbai', style: TextStyle(color: darkColor, fontFamily: subtitleFonts, fontSize: 12, fontWeight: FontWeight.w600)),
              ],
            ),
            Spacer(),
            Icon(Iconsax.search_normal, color: kPrimary,),
            SizedBox(width: 12,),
            Icon(Iconsax.scan_barcode, color: kPrimary,),
            SizedBox(width: 15,),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            TopCarouselSection(),
            SizedBox(height: 8,),
            Newrelases(),
            SizedBox(height: 8,),
            BestEvents(),
            SizedBox(height: 8,),
            Premiermovies(),
            SizedBox(height: 8,),
          ],
        ),
      ),
    );
  }
}
