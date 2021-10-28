import 'package:flutter/material.dart';

class MoviesScreenWidget extends StatelessWidget {
  const MoviesScreenWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.symmetric(vertical: 32.0, horizontal: 16.0),
      itemCount: 6,
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
                  Image.asset('images/dune.jpg'),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(12.0, 12.0, 8.0, 12.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Dune',
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
                            'September 15, 2021',
                            style: TextStyle(
                              color: Color(0xFF999999),
                              fontSize: 14.4,
                            ),
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                          SizedBox(height: 20.0),
                          Text(
                            'Paul Atreides, a brilliant and gifted young man born into a great destiny beyond his understanding, must travel to the most dangerous planet in the universe to ensure the future of his family and his people. As malevolent forces explode into conflict over the planet\'s exclusive supply of the most precious resource in existence-a commodity capable of unlocking humanity\'s greatest potential-only those who can conquer their fear will survive.',
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
    );
  }
}
