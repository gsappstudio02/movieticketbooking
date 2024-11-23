import 'package:bookmyshowclone/models/constants.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class RatingBarDetails extends StatefulWidget {
  const RatingBarDetails({super.key, required this.ratingIndex});
  final int ratingIndex;
  @override
  State<RatingBarDetails> createState() => _RatingBarDetailsState();
}

class _RatingBarDetailsState extends State<RatingBarDetails> {
  @override
  Widget build(BuildContext context) {
    double width_size= MediaQuery.of(context).size.width;
    final ratingDetails= movieData[widget.ratingIndex];
    String ratingAcquired= ratingDetails['rating'].toString();
    String voteCount= ratingDetails['ratingCount'];
    return Container(
      width: width_size-40,
      height: 48,
      decoration: BoxDecoration(
        color: Colors.grey.withOpacity(0.2),
        borderRadius: BorderRadius.circular(6)

      ),
      child: Row(
        children: [
          SizedBox(width: 10,),
          Icon(Icons.star_rate_rounded, color: kPrimary, size: 30,),
          SizedBox(width: 2,),
          Text(ratingAcquired+"/5 ", style: TextStyle(color: Colors.black, fontFamily: primaryFont, fontSize: textSubTitle),),
          Text("("+voteCount+" votes)", style: TextStyle(color: Colors.black, fontFamily: primaryFont, fontSize: 10),),
          Spacer(),
          Container(
            height: 20,
            width: 60,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(4),
              border: Border.all(color: kPrimary)
            ),
            child: Text('Rate now', style: TextStyle(color: kPrimary, fontSize: 10, fontFamily: primaryFont),),
          ),
          SizedBox(width: 10,),
        ],
      ),
    );
  }
}
