import 'package:bookmyshowclone/models/constants.dart';
import 'package:flutter/material.dart';

class MovieSummary extends StatefulWidget {
  const MovieSummary({super.key, required this.summaryIndex});
  final int summaryIndex;
  @override
  State<MovieSummary> createState() => _MovieSummaryState();
}

class _MovieSummaryState extends State<MovieSummary> {
  @override
  Widget build(BuildContext context) {
    final summaryDetails= movieData[widget.summaryIndex];
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  height: 17,
                  decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(0.3),
                    borderRadius: BorderRadius.circular(2),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 5.0, right: 5, top: 2, bottom: 2),
                    child: Text(summaryDetails['screenType'], style: TextStyle(color: Colors.black, fontFamily: primaryFont, fontSize: 10),),
                  ),
                ),
                SizedBox(width: 8,),
                Container(
                  height: 17,
                  decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(0.3),
                    borderRadius: BorderRadius.circular(2),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 5.0, right: 5, top: 2, bottom: 2),
                    child: Text(summaryDetails['language'],style: TextStyle(color: Colors.black, fontFamily: primaryFont, fontSize: 10),),
                  ),
                ),
              ],
            ),
            SizedBox(height: 15,),
            Text(summaryDetails['metadata'], style: TextStyle(color: Colors.black, fontSize: 12, fontFamily: subtitleFonts),),
            SizedBox(height: 15,),
            Text(summaryDetails['about'], style: TextStyle(color: Colors.black, fontSize: 12, fontFamily: subtitleFonts),)
          ],
        ),
      ),
    );
  }
}
