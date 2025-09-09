class Movie {
  final String title;
  final int year;
  final String genre;
  final String poster;
  final String posterDetail;
  final String synopsis;

  Movie({
    required this.title,
    required this.year,
    required this.genre,
    required this.poster,
    required this.posterDetail,
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
    posterDetail:
        "https://image.tmdb.org/t/p/w1280/9gk7adHYeDvHkCSEqAvQNLV5Uge.jpg",
    synopsis:
        "Seorang pencuri masuk ke dalam mimpi orang untuk mencuri rahasia, tapi mendapat misi lebih sulit: menanamkan ide.",
  ),
  Movie(
    title: "Interstellar",
    year: 2014,
    genre: "Sci-Fi",
    poster: "https://m.media-amazon.com/images/I/91kFYg4fX3L._AC_SY679_.jpg",
    posterDetail:
        "https://image.tmdb.org/t/p/w1280/rAiYTfKGqDCRIIqo664sY9XZIvQ.jpg",
    synopsis:
        "menceritakan suatu saat di masa depan, bumi mengalami kondisi sekarat dimana kehidupan agraris sering mengalami kegagalan. Mayoritas penduduk kota tinggal didaerah pedesaan untuk menyambung hidup sebagai petani jagung. Salah satunya adalah Cooper, seorang mantan astronot NASA yang hidup bersama ayah dan dua orang anaknya.",
  ),
  Movie(
    title: "The Dark Knight",
    year: 2008,
    genre: "Action, Crime",
    poster:
        "https://m.media-amazon.com/images/M/MV5BMTMxNTMwODM0NF5BMl5BanBnXkFtZTcwODAyMTk2Mw@@._V1_SX300.jpg",
    posterDetail:
        "https://th.bing.com/th/id/R.b080a8360003775e4eaf4c15df0d87f2?rik=jEQ%2fNHJdUpNQ3Q&riu=http%3a%2f%2fdailygrindhouse.com%2fwp-content%2fuploads%2f2016%2f07%2fmaxresdefault.jpg&ehk=0T1NOrstZOpOH52d%2bH5QMy19Lofh5MDpbBlO1fdqZ1Y%3d&risl=&pid=ImgRaw&r=0",
    synopsis:
        "Batman menghadapi Joker, kriminal genius yang mengancam Gotham City dengan kekacauan.",
  ),
  Movie(
    title: "Avatar",
    year: 2009,
    genre: "Fantasy, Adventure, Mitology",
    poster: "https://m.media-amazon.com/images/I/41kTVLeW1CL._AC_.jpg",
    posterDetail:
        "https://image.tmdb.org/t/p/original/8I37NtDffNV7AZlDa7uDvvqhovU.jpg",
    synopsis:
        "Seorang marinir manusia dikirim ke planet Pandora dan terjebak antara dunia manusia dan Na'vi.",
  ),
  Movie(
    title: "Parasite",
    year: 2019,
    genre: "Thriller",
    poster: "https://m.media-amazon.com/images/I/71c05lTE03L._AC_SY679_.jpg",
    posterDetail:
        "https://cdn.tatlerasia.com/asiatatler/i/ph/2019/12/18135231-parasite-movie-trailer-1183601-1280x0_cover_1280x718.jpeg",
    synopsis:
        "Keluarga miskin menyusup ke rumah keluarga kaya, tapi keadaan berubah menjadi mimpi buruk.",
  ),
];
