import 'package:flutter/material.dart';
import 'package:moviedb/Widget/CastList.dart';
import 'package:moviedb/model/upcoming.dart';

class DetailPage extends StatelessWidget {
  Movie detail;
  DetailPage(this.detail);

  Widget build(BuildContext context) {
    var casts = new CastList(this.detail.id);

    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text("MovieDB"),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: detail.posterPath != null
                        ? Image.network(
                            "https://image.tmdb.org/t/p/w185_and_h278_bestv2/" +
                                detail.posterPath,
                            height: 150)
                        : Container(),
                  ),
                  Column(
                    children: [
                      Text("ID : " + detail.id.toString()),
                      Text("Title : " + detail.title),
                      Text("Popularity :" + detail.popularity.toString())
                    ],
                  )
                ],
              ),
              casts
            ],
          ),
        ));
  }
}
