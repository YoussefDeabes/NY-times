import 'dart:html';

import 'package:flutter/material.dart';

class ArticlesScreen extends StatefulWidget {
  static const ROUTE_NAME = '/articles-screen';

  @override
  _ArticlesScreenState createState() => _ArticlesScreenState();
}

class _ArticlesScreenState extends State<ArticlesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('NY Times Most Popular'),
      ),
      body: _getBody(),
    );
  }

  Widget _getBody() {
    return ListView.builder(
      itemBuilder: (ctx, index) => _getListItem(),
    );
  }

  Widget _getListItem() {
    return Row(
      children: [
        _getCircleAvatar(),
        _getArticleDetailsColumn(),
        _getArrowIcon()
      ],
    );
  }

  Widget _getCircleAvatar() {
    return CircleAvatar();
  }

  Widget _getArticleDetailsColumn() {
    Column(
      children: [
        _getTitle(),
        _getAuthor(),
        _getDate(),
      ],
    );
  }

  Widget _getTitle() {
    return Text("");
  }

  Widget _getAuthor() {
    return Text('');
  }

  Widget _getDate() {
    return Row(
      children: [
        Icon(Icons.event),
        Text('data'),
      ],
    );
  }

  Widget _getArrowIcon() {
    return Icon(Icons.arrow_forward_ios_outlined);
  }
}
