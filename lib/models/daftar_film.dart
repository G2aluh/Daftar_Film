class Movie {
  final String title;
  final int year;
  final String genre;
  final String poster;
  final String synopsis;

  Movie({
    required this.title,
    required this.year,
    required this.genre,
    required this.poster,
    required this.synopsis,
  });
}

// Data film statis
final List<Movie> movies = [
  Movie(
    title: "Inception",
    year: 2010,
    genre: "Sci-Fi",
    poster: "https://m.media-amazon.com/images/I/81p+xe8cbnL._AC_SY679_.jpg",
    synopsis:
        "Seorang pencuri masuk ke dalam mimpi orang untuk mencuri rahasia, tapi mendapat misi lebih sulit: menanamkan ide.",
  ),
  Movie(
    title: "Interstellar",
    year: 2014,
    genre: "Sci-Fi",
    poster: "https://m.media-amazon.com/images/I/91kFYg4fX3L._AC_SY679_.jpg",
    synopsis:
        "Petualangan luar angkasa untuk mencari planet baru demi kelangsungan hidup manusia.",
  ),
  Movie(
    title: "The Dark Knight",
    year: 2008,
    genre: "Action",
    poster:
        "https://m.media-amazon.com/images/M/MV5BMTMxNTMwODM0NF5BMl5BanBnXkFtZTcwODAyMTk2Mw@@._V1_SX300.jpg",
    synopsis:
        "Batman menghadapi Joker, kriminal genius yang mengancam Gotham City dengan kekacauan.",
  ),
  Movie(
    title: "Avatar",
    year: 2009,
    genre: "Fantasy",
    poster: "https://m.media-amazon.com/images/I/41kTVLeW1CL._AC_.jpg",
    synopsis:
        "Seorang marinir manusia dikirim ke planet Pandora dan terjebak antara dunia manusia dan Na'vi.",
  ),
  Movie(
    title: "Parasite",
    year: 2019,
    genre: "Thriller",
    poster: "https://m.media-amazon.com/images/I/71c05lTE03L._AC_SY679_.jpg",
    synopsis:
        "Keluarga miskin menyusup ke rumah keluarga kaya, tapi keadaan berubah menjadi mimpi buruk.",
  ),
];
