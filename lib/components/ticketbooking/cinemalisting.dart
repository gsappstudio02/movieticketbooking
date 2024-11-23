import 'package:bookmyshowclone/models/constants.dart';
import 'package:bookmyshowclone/screens/seatSelections.dart';
import 'package:flutter/material.dart';

class CinemaTimings extends StatefulWidget {
  const CinemaTimings({super.key});

  @override
  State<CinemaTimings> createState() => _CinemaTimingsState();
}

class _CinemaTimingsState extends State<CinemaTimings> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
        height: 250,
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(Icons.favorite_border, size: 18,),
                SizedBox(width: 3,),
                Text('Cinepolis - Magnet Mall, Bhandup Mumbai West', style: TextStyle(color: Colors.black, fontSize: 14, fontFamily: subtitleFonts),),
              ],
            ),
            SizedBox(height: 15,),
            Expanded(
              child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      mainAxisSpacing: 8,
                      crossAxisSpacing: 8,
                      childAspectRatio: 5/2

                  ),
                  itemCount: showTimings.length,
                  itemBuilder: (_, index){
                    final timingsList=showTimings[index];
                    return GestureDetector(
                      onTap: (){
                        print(index);
                        Navigator.push(context, MaterialPageRoute(builder: (builder)=>Seatselections()));
                      },
                      child: Container(
                        height: 40, width: 100,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black),
                          borderRadius: BorderRadius.circular(3),
                        ),
                        alignment: Alignment.center,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              timingsList,
                              style: TextStyle(
                                  color: Colors.green,
                                  fontFamily: subtitleFonts,
                                  fontSize: 14
                              ),
                            ),
                            Text(
                              'Dolby 7.1',
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontFamily: subtitleFonts,
                                  fontSize: 8
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  }
              ),
            )
          ],
        ),
      ),
    );
  }
}
