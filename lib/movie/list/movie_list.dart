class MovieList {
  String name;
  String description;
  String url;

  MovieList({
    required this.name,
    required this.description,
    required this.url,
  });
}

final movieList = [
  MovieList(
    name: 'The Shawshank Redemption',
    description:
        "The Shawshank Redemption has become a classic film - it's even IMDb's top-rated movie of all time - but did you know it almost had an entirely different cast behind those legendary bars?",
    url: 'images/movie/shawshank.PNG',
  ),
  MovieList(
      name: 'The Godfather',
      description:
          "The aging patriarch of an organized crime dynasty in postwar New York City transfers control of his clandestine empire to his reluctant youngest son.",
      url: "images/movie/godfather.PNG"),
  MovieList(
      name: "The Dark Knight",
      description:
          "When the menace known as the Joker wreaks havoc and chaos on the people of Gotham, Batman must accept one of the greatest psychological and physical tests of his ability to fight injustice.",
      url: "images/movie/darkknight.PNG"),
  MovieList(
      name: 'The Godfather Part II',
      description:
          "The early life and career of Vito Corleone in 1920s New York City is portrayed, while his son, Michael, expands and tightens his grip on the family crime syndicate.",
      url: 'images/movie/godfather2.PNG'),
  MovieList(
      name: '12 Angry Men',
      description:
          "The jury in a New York City murder trial is frustrated by a single member whose skeptical caution forces them to more carefully consider the evidence before jumping to a hasty verdict.",
      url: 'images/movie/angrymen.PNG'),
];
