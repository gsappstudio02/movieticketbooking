import 'package:bookmyshowclone/models/constants.dart';
import 'package:bookmyshowclone/screens/moviedetails.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class Newrelases extends StatefulWidget {
  const Newrelases({super.key});

  @override
  State<Newrelases> createState() => _NewrelasesState();
}

class _NewrelasesState extends State<Newrelases> {


  @override
  Widget build(BuildContext context) {
    double width_size= MediaQuery.of(context).size.width;
    return Container(
      width: width_size,
      height: 260,
      child: Padding(
        padding: const EdgeInsets.only(left: 10.0, right: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text('New Releases', style: TextStyle(color: darkColor, fontSize: textContent, fontFamily: primaryFont),),
                Spacer(),
                Text('View all', style: TextStyle(color: kPrimary, fontSize: 12, fontFamily: primaryFont, fontWeight: FontWeight.bold),),
              ],
            ),
            SizedBox(height: 10,),
            Expanded(
              child: ListView.builder(
                itemCount: movieData.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (_, index){
                  final movie=movieData[index];
                    return Padding(
                      padding: const EdgeInsets.only(right: 10.0),
                      child: GestureDetector(
                        onTap:(){
                          print(index);
                          Navigator.push(context, MaterialPageRoute(builder: (builder)=>MovieDetails(movieIndex: index,)));
                        },
                        child: Stack(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.network(
                                movie['imageUrl'],
                                height: 220,
                                width: 150,
                                fit: BoxFit.cover,
                              ),
                            ),
                            Container(
                              height: 220,
                              width: 150,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  gradient: LinearGradient(
                                      colors: [
                                        Colors.transparent,
                                        Colors.black.withOpacity(0.2),
                                        Colors.black.withOpacity(0.4),
                                        Colors.black.withOpacity(0.6),
                                        Colors.black,
                                      ],
                                      end: Alignment.bottomCenter,
                                      begin: Alignment.topCenter
                                  )
                              ),
                            ),
                            Positioned(
                              bottom: 44,
                              child: Padding(
                                padding: const EdgeInsets.only(left: 10.0),
                                child: SizedBox(
                                  width: 110,
                                  child: Text(movie['title'], style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: primaryFont,
                                      fontSize: 12
                                  ),
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              bottom: 20,
                              child: Padding(
                                padding: const EdgeInsets.only(left: 10.0),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    RatingBarIndicator(
                                      itemBuilder: (context, index) => Icon(
                                        Icons.star,
                                        color: Colors.amber,
                                      ),
                                      itemCount: 5,
                                      rating: movie['rating'],
                                      itemSize: 15,

                                    ),
                                    SizedBox(width: 26,),
                                    Text(movie['ratingCount'], style: TextStyle(color: Colors.white, fontSize: 12, fontFamily: primaryFont),)
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
