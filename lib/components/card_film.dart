import 'package:flutter/material.dart';
import 'package:speed_test_01/screens/detail_screen.dart';
import '../models/daftar_film.dart';

class MovieCard extends StatelessWidget {
  final Movie movie;
  final List<Movie> favorites;
  final Function(Movie) onAddFavorite;
  final Function(Movie) onRemoveFavorite;

  const MovieCard({
    super.key,
    required this.movie,
    required this.favorites,
    required this.onAddFavorite,
    required this.onRemoveFavorite,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(10),
          bottomLeft: Radius.circular(10),
        ),
        side: const BorderSide(color: Colors.black, width: 1),
      ),
      elevation: 1,
      child: InkWell(
        borderRadius: BorderRadius.circular(12),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => DetailScreen(
                movie: movie,
                favorites: favorites,
                onAddFavorite: onAddFavorite,
                onRemoveFavorite: onRemoveFavorite,
              ),
            ),
          );
        },
        child: Row(
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(12),
                bottomLeft: Radius.circular(12),
              ),
              child: Image.network(
                movie.poster,
                width: 100,
                height: 140,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(width: 12),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      movie.title,
                      style: const TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 0.5,
                      ),
                    ),
                    const SizedBox(height: 6),
                    Row(
                      children: [
                        const Icon(
                          Icons.calendar_today,
                          size: 14,
                          color: Colors.grey,
                        ),
                        const SizedBox(width: 6),
                        Text(
                          "Tahun: ${movie.year}",
                          style: const TextStyle(
                            fontFamily: 'Roboto',
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 2),
                    Row(
                      children: [
                        const Icon(
                          Icons.category,
                          size: 14,
                          color: Colors.grey,
                        ),
                        const SizedBox(width: 6),
                        Expanded(
                          child: Text(
                            "Genre: ${movie.genre}",
                            style: const TextStyle(
                              fontFamily: 'Roboto',
                              fontSize: 14,
                            ),
                            overflow: TextOverflow.ellipsis,
                            maxLines: 2,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            // Garis biru muda sebagai hiasan di sebelah kanan
            Container(
              width: 5,
              height: 140,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 121, 149, 241),
                borderRadius: const BorderRadius.only(
                  topRight: Radius.circular(12),
                  bottomRight: Radius.circular(12),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
