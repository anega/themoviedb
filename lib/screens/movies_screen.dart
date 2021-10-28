import 'package:flutter/material.dart';
import 'package:themoviedb/constants.dart';
import 'package:themoviedb/model/movie.dart';
import 'package:themoviedb/model/movies_data.dart';

class MoviesScreen extends StatefulWidget {
  @override
  _MoviesScreenState createState() => _MoviesScreenState();
}

class _MoviesScreenState extends State<MoviesScreen> {
  final _moviesList = MoviesData.moviesList;
  final _searchController = TextEditingController();
  var _filteredMovies = <Movie>[];

  @override
  void initState() {
    super.initState();
    _filteredMovies = _moviesList;
    _searchController.addListener(() {
      final query = _searchController.text.toLowerCase();
      if (query.isNotEmpty) {
        _filteredMovies = _moviesList.where((Movie movie) {
          return movie.title.toLowerCase().contains(query);
        }).toList();
      } else {
        _filteredMovies = _moviesList;
      }
      setState(() {});
    });
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ListView.builder(
          padding: EdgeInsets.fromLTRB(16.0, 68.0, 16.0, 32.0),
          keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
          itemCount: _filteredMovies.length,
          itemExtent: 140.0,
          itemBuilder: (BuildContext context, int index) {
            return Stack(
              children: [
                Container(
                  clipBehavior: Clip.hardEdge,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Color(0xFFe3e3e3)),
                    borderRadius: BorderRadius.circular(8.0),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.1),
                        offset: Offset(0, 2),
                        blurRadius: 4.0,
                      ),
                    ],
                  ),
                  margin: EdgeInsets.only(bottom: 16.0),
                  child: Row(
                    children: [
                      Image.asset(_filteredMovies[index].image),
                      Expanded(
                        child: Padding(
                          padding:
                              const EdgeInsets.fromLTRB(12.0, 12.0, 8.0, 12.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                _filteredMovies[index].title,
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.w600,
                                  letterSpacing: 1.1,
                                ),
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                              ),
                              SizedBox(height: 4.0),
                              Text(
                                _filteredMovies[index].releaseDate,
                                style: TextStyle(
                                  color: Color(0xFF999999),
                                  fontSize: 14.4,
                                ),
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                              ),
                              SizedBox(height: 20.0),
                              Text(
                                _filteredMovies[index].description,
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14.4,
                                ),
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Material(
                  color: Colors.transparent,
                  child: InkWell(
                    onTap: () {
                      print('1111111111111111111111');
                    },
                  ),
                ),
              ],
            );
          },
        ),
        Padding(
          padding: const EdgeInsets.only(left: 16.0, top: 12.0, right: 16.0),
          child: TextField(
            controller: _searchController,
            decoration: kLoginInputDecoration.copyWith(
              hintText: 'Search',
              filled: true,
              fillColor: Colors.white.withAlpha(235),
            ),
          ),
        ),
      ],
    );
  }
}
