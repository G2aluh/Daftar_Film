import 'package:flutter/material.dart';
import 'package:speed_test_01/screens/detail_screen.dart';
import '../models/daftar_film.dart';

class MovieCard extends StatelessWidget {
  final Movie movie;
  final VoidCallback? onTap;

  const MovieCard({super.key, required this.movie, this.onTap});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(topLeft: Radius.circular(10), bottomLeft: Radius.circular(10)),
        side: const BorderSide(color: Colors.black, width: 1),
      ),
      elevation: 4,
      child: InkWell(
        borderRadius: BorderRadius.circular(12),
         onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => DetailScreen(movie: movie),
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
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 6),
                    Text(
                      "Tahun: ${movie.year}",
                      style: const TextStyle(fontSize: 14),
                    ),
                    Text(
                      "Genre: ${movie.genre}",
                      style: const TextStyle(fontSize: 14),
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
                color: Colors.lightBlue[300],
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
