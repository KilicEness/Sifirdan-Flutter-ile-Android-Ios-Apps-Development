import 'package:flutter/material.dart';

class ImageExamples extends StatelessWidget {
  const ImageExamples({super.key});

  @override
  Widget build(BuildContext context) {
    String _urlImage =
        'https://acnews.blob.core.windows.net/imgnews/large/NAZ_62357053232049bd97bb1d627ec88ab8.jpg';
    String _bgImage =
        'https://delessencedansmesveines.com/wp-content/uploads/2016/10/z-DLEDMV-fast-furious-15-ans-plus-tard-03-1080x675.jpg';
    return Center(
      child: Column(
        children: [
          IntrinsicHeight(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                  child: Container(
                      color: Colors.purple,
                      child: Image.asset(
                        'assets/images/hvo.jpeg',
                        fit: BoxFit.cover,
                      )),
                ),
                Expanded(
                  child: Container(
                    color: Colors.purple,
                    width: 150,
                    height: 150,
                    child: Image.network(
                      _urlImage,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    color: Colors.amber,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: CircleAvatar(
                        /*child: Text(
                      'E',
                      style: Theme.of(context).textTheme.headlineLarge,
                                      ),*/
                        backgroundImage: NetworkImage(_bgImage),
                        backgroundColor: Colors.blue,
                        foregroundColor: Colors.green,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          Container(
            child: FadeInImage.assetNetwork(
                fit: BoxFit.cover,
                placeholder: 'assets/images/loading.gif',
                image: _urlImage),
          ),
          const Expanded(
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: Placeholder(
                color: Colors.blue,
              ),
            ),
          )
        ],
      ),
    );
  }
}
