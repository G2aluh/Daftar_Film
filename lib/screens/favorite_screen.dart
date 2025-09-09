import 'package:flutter/material.dart';
import '../models/daftar_film.dart';
import '../components/card_film.dart';

class FavoriteScreen extends StatefulWidget {
  final List<Movie> favorites;

  const FavoriteScreen({super.key, required this.favorites});

  @override
  State<FavoriteScreen> createState() => _FavoriteScreenState();
}

class _FavoriteScreenState extends State<FavoriteScreen> {
  late List<Movie> favorites;

  @override
  void initState() {
    super.initState();
    favorites = List.from(widget.favorites);
  }

  void removeFromFavorites(Movie movie) {
    setState(() {
      favorites.remove(movie);
    });
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text("${movie.title} dihapus dari favorit 💔")),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        foregroundColor: Colors.white,
        elevation: 0,
        title: const Text(
          "Film Favorit",
          style: TextStyle(
            fontFamily: 'Montserrat',
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: favorites.isEmpty
          ? const Center(
              child: Text(
                "Belum ada film favorit 😢",
                style: TextStyle(fontFamily: 'Lato', fontSize: 16),
              ),
            )
          : ListView.builder(
              itemCount: favorites.length,
              itemBuilder: (context, index) {
                final movie = favorites[index];
                return MovieCard(
                  movie: movie,
                  favorites: favorites,
                  onAddFavorite:
                      (movie) {}, // Tidak digunakan di halaman favorit
                  onRemoveFavorite: removeFromFavorites,
                );
              },
            ),
    );
  }
}
