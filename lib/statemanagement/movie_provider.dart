import 'dart:math';
import 'package:appp_work_1/statemanagement/movie.dart';
import 'package:flutter/material.dart';

final List<Movie> movieList = List.generate(
    100,
    (index) => Movie(
        title: 'Movie $index', time: "${Random().nextInt(100) + 60}minutes"));

class MovieProvider with ChangeNotifier {
  final List<Movie> _movie = movieList;
  List<Movie> get Movies => _movie; //data for main page
  final List<Movie> _moviewishlist = []; // data for wishlist
  List<Movie> get moviewish => _moviewishlist; // get values from wishlist

  void addTolist(Movie moviefrommainpage) {
    _moviewishlist.add(moviefrommainpage);
    notifyListeners();
  }

  void removefromList(Movie removedmovie) {
    _moviewishlist.remove(removedmovie);
    notifyListeners();
  }
}
