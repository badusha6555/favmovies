// ignore: unused_import
import 'package:fav_movies/movielist.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(
                    "https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/3dd2d563-68d2-48ee-afac-06e49678b8f0/d520pqw-16540be4-a036-4f39-b1f9-2a3495c4ee1b.png/v1/fit/w_600,h_960,q_70,strp/my_top_10_favorite_movies_by_morgan_michele_d520pqw-375w-2x.jpg?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7ImhlaWdodCI6Ijw9OTYwIiwicGF0aCI6IlwvZlwvM2RkMmQ1NjMtNjhkMi00OGVlLWFmYWMtMDZlNDk2NzhiOGYwXC9kNTIwcHF3LTE2NTQwYmU0LWEwMzYtNGYzOS1iMWY5LTJhMzQ5NWM0ZWUxYi5wbmciLCJ3aWR0aCI6Ijw9NjAwIn1dXSwiYXVkIjpbInVybjpzZXJ2aWNlOmltYWdlLm9wZXJhdGlvbnMiXX0.56mfJw9gdMnZHfDBtvhq8_j72EWIdnptL-gBa_G6K3w"), // Replace with your image path
                fit: BoxFit.fitHeight,
              ),
            ),
          ),
          Scaffold(
            backgroundColor: Colors.transparent,
            appBar: AppBar(
              title: Text("Home"),
              backgroundColor: Colors.amber,
              elevation: 0,
            ),
            body: Center(
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => MovieList()));
                },
                child: Text("My Favourite Movies"),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
