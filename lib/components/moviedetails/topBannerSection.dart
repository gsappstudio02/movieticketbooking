import 'package:bookmyshowclone/models/constants.dart';
import 'package:flutter/material.dart';

class TopBannerSection extends StatefulWidget {
  const TopBannerSection({super.key, required this.movieIndex1});
  final int movieIndex1;
  @override
  State<TopBannerSection> createState() => _TopBannerSectionState();
}

class _TopBannerSectionState extends State<TopBannerSection> {
  @override
  Widget build(BuildContext context) {
    double width_size=MediaQuery.of(context).size.width;
    final movidetails= movieData[widget.movieIndex1];
    return Container(
      width: width_size,
      alignment: Alignment.center,
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Image.network(movidetails['bigPicture'], width: width_size-40, height: 200, fit: BoxFit.cover,),
          ),
          Positioned(
            bottom: 0,
              child: Container(
            width: width_size-40,
            height: 30,
            decoration: BoxDecoration(
                color: darkColor,
                borderRadius: BorderRadius.only(bottomLeft: Radius.circular(8), bottomRight: Radius.circular(8))
            ),
                alignment: Alignment.center,
                child: Text('In cinemas', style: TextStyle(color: Colors.white, fontFamily: primaryFont, fontSize: 10),),
          ),
          ),
          Positioned(
              top: 100,
              right: (width_size/2)-70,
              child: Container(
            height: 20,
            width: 100,
            decoration: BoxDecoration(
              color: Colors.black.withOpacity(0.8),
              borderRadius: BorderRadius.circular(50)
            ),
                alignment: Alignment.center,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.play_arrow_rounded, color: Colors.white,size: 20,),
                    Text('Trailer', style: TextStyle(color: Colors.white, fontSize: 12, fontFamily: primaryFont),),
                  ],
                ),
          )
          )
        ],
      ),
    );
  }
}
