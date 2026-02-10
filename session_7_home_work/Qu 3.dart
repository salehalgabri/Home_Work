/**
Q3 Create a class Movie with attributes title and rating. In main(), create a list of 4 movies. Print
only the movies with a rating above 7.
 */

class Movie {
  String title;
  double rating;

  Movie(this.title, this.rating);
}

void main() {
  List<Movie> movies = [
    Movie("Movie 1", 8.0),
    Movie("Movie 2", 6.0),
    Movie("Movie 3", 9.0),
    Movie("Movie 4", 7.0),
  ];

  for (var movie in movies) {
    if (movie.rating > 7) {
      print("${movie.title}: ${movie.rating}");
    }
  }
}