import 'package:bookmyshowclone/models/constants.dart';
import 'package:flutter/material.dart';

class Premiermovies extends StatefulWidget {
  const Premiermovies({super.key});

  @override
  State<Premiermovies> createState() => _PremiermoviesState();
}

class _PremiermoviesState extends State<Premiermovies> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 240,
      child: Padding(
        padding: const EdgeInsets.only(left: 10.0, right: 10),
        child: Column(
          children: [
            Row(
              children: [
                Text('Premier Movies', style: TextStyle(color: darkColor, fontSize: textContent, fontFamily: primaryFont),),
                Spacer(),
                Text('View all', style: TextStyle(color: kPrimary, fontSize: 12, fontFamily: primaryFont, fontWeight: FontWeight.bold),),
              ],
            ),
            SizedBox(height: 10,),
            Expanded(
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 5,
                  itemBuilder: (_, index){
                  final premeirMovies= premierMovieData[index];
                  return Padding(
                    padding: const EdgeInsets.only(right: 10.0),
                    child: Stack(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.network(
                            premeirMovies['imageUrl'],
                            height: 220,
                            width: 140,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Positioned(

                          child: Container(
                            height: 26,
                            alignment: Alignment.center,
                            width: 90,
                            decoration: BoxDecoration(
                              color: kPrimary,
                              borderRadius: BorderRadius.circular(5)
                            ),
                            child: Text(
                              'Premier',
                              style: TextStyle(
                                color: Colors.white,
                                fontFamily: primaryFont,
                                fontSize: 12
                              ),
                            ),
                          ),
                          bottom: 8,
                          left: 5,
                        )
                      ],
                    ),
                  );
                  }),
            )
          ],
        ),
      ),
    );
  }
}
