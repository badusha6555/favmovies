import 'package:fav_movies/homescreen.dart';
import 'package:flutter/material.dart';

class MovieList extends StatefulWidget {
  const MovieList({super.key});

  @override
  State<MovieList> createState() => _MovieListState();
}

class _MovieListState extends State<MovieList> {
  final List<String> movieList = [
    "Interstellar",
    "Dark Knight",
    "Turbo",
    "Avengers Endgame",
    "Aadujeevitham",
    "Avatar",
    "Batman Trilogy"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Movie List"),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: movieList.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(
                    movieList[index],
                    style: const TextStyle(fontSize: 20),
                  ),
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 20),
            child: ElevatedButton(
              onPressed: () {
                Navigator.pop(context,
                    MaterialPageRoute(builder: (context) => HomeScreen()));
              },
              child: const Text("Back to Previous page"),
            ),
          ),
        ],
      ),
    );
  }
}
