import 'package:flutter/material.dart';
import 'package:giffy/models/gifs.dart';
import 'package:giffy/services/http_gifs.dart';
import 'package:giffy/widgets/gif.dart';

class ListOfGifs extends StatelessWidget {
  const ListOfGifs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<GifsModel>>(
        future: HttpGifs.fetchGifs("morty"),
        builder: (context, snapshot) {
          if (snapshot.data == null)
            return const Center(child: CircularProgressIndicator());
          return Container(
            width: double.infinity,
            //height: 1600,
            child: ListView.builder(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: 5,
              itemBuilder: (BuildContext context, int index) {
                return Gif(
                    url: snapshot.data![index].images!.original!.url!,
                    title: snapshot.data![index].title!);
              },
            ),
          );
        });
  }
}
