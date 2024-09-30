import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:news_app/DataModel.dart';

class ArticlePreviewScreen extends StatelessWidget {
  const ArticlePreviewScreen({super.key, required this.article});

  final Article article;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                article.author,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "${DateFormat.yMMMMd().format(article.publishedAt)}",
              ),
              Image.network(
                article.urlToImage,
                height: MediaQuery.of(context).size.height * 0.3,
                fit: BoxFit.cover,
              ),
              Text(
                article.title,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                article.content,
              ),
            ],
          ),
        ));
  }
}
