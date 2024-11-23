import 'package:bookmyshowclone/models/constants.dart';
import 'package:flutter/material.dart';

class CastDetails extends StatefulWidget {
  const CastDetails({super.key, required this.peopleDetails, required this.title});
  final List<Map<String, dynamic>> peopleDetails;
  final String title;
  @override
  State<CastDetails> createState() => _CastDetailsState();
}

class _CastDetailsState extends State<CastDetails> {
  @override
  Widget build(BuildContext context) {
    double width_size= MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
        height: 173,
        width: width_size,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Text(widget.title, style: TextStyle(color: Colors.black, fontFamily: primaryFont, fontSize: textContent),),
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: castDetails.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (_, index){
                    final castingDetails=widget.peopleDetails[index];
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(50),
                              child: Image.network(castingDetails['imageUrl'], height: 80, width: 80, fit: BoxFit.cover,),
                            ),
                            SizedBox(height: 5,),
                            SizedBox(
                              width:80,
                              child:Text(castingDetails['name'],
                                style: TextStyle(color: Colors.black, fontSize: 11, fontFamily: primaryFont) ,
                                maxLines: 2,
                                overflow: TextOverflow.clip,
                              )
                            ),
                            SizedBox(
                              width:80,
                              child:Text("as "+castingDetails['role'],
                                style: TextStyle(color: Colors.black, fontSize: 11, fontFamily: primaryFont) ,
                                maxLines: 2,
                                overflow: TextOverflow.clip,
                              )
                            ),

                          ],
                        ),
                      );
                    }
                ),
              ),
            ],
          ),
      ),
    );
  }
}
