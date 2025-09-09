import 'package:flutter/material.dart';
import '../models/daftar_film.dart';
import '../components/card_film.dart';
import 'favorite_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<Movie> favorites = [];

  void addToFavorites(Movie movie) {
    setState(() {
      if (!favorites.contains(movie)) {
        favorites.add(movie);
      }
    });
  }

  void removeFromFavorites(Movie movie) {
    setState(() {
      favorites.remove(movie);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        foregroundColor: Colors.white,
        elevation: 0,
        title: const Text(
          "Daftar Film",
          style: TextStyle(
            fontFamily: 'Montserrat',
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(Icons.favorite, color: Colors.red),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => FavoriteScreen(favorites: favorites),
                ),
              );
            },
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: movies.length,
        itemBuilder: (context, index) {
          final movie = movies[index];
          return MovieCard(
            movie: movie,
            favorites: favorites,
            onAddFavorite: addToFavorites,
            onRemoveFavorite: removeFromFavorites,
          );
        },
      ),
    );
  }
}
