import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:giffy/bloc/keywoard/bloc/keywoard_bloc.dart';
import 'package:giffy/models/gifs.dart';
import 'package:giffy/services/http_gifs.dart';
import 'package:giffy/widgets/gif.dart';

class ListOfGifs extends StatelessWidget {
  const ListOfGifs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<KeywoardBloc, KeywoardState>(
      builder: (context, state) {
        if (state.keywoard == null) {
          return const Center(child: Text("Haz una busqueda"));
        }
        return FutureBuilder<List<GifsModel>>(
            future: HttpGifs.fetchGifs(state.keywoard!),
            builder: (context, snapshot) {
              if (snapshot.data == null) {
                return const Center(child: CircularProgressIndicator());
              }
              return SizedBox(
                width: double.infinity,
                //height: 1600,
                child: ListView.builder(
                  physics: const NeverScrollableScrollPhysics(),
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
      },
    );
  }
}
