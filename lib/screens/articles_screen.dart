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
      itemCount: 5,
    );
  }

  Widget _getListItem() {
    return Container(
      margin: EdgeInsets.all(10),
      child: ListTile(
        leading: _getCircleAvatar(),
        title: _getTitle(),
        subtitle: _getAuthor(),
        trailing: _getArrowIcon(),
        onTap: () {},
      ),
    );
  }

  Widget _getCircleAvatar() {
    return CircleAvatar();
  }

  Widget _getTitle() {
    return Text.rich(
      TextSpan(
        text: "Supporters of the democratic candidate Jon Ossoff after his ...",
      ),
      maxLines: 2,
    );
  }

  Widget _getAuthor() {
    return Text.rich(
      TextSpan(
        style: TextStyle(
          color: Colors.grey,
        ),
        children: [
          TextSpan(
            text: 'By DAVID LEOHARDT AND STAURT A. THOMPSON',
          ),
          WidgetSpan(
            child: SizedBox(
              width: 50,
            ),
          ),
          WidgetSpan(
            child: Icon(
              Icons.event,
              color: Colors.grey,
            ),
          ),
          TextSpan(
            text: ' 2017-06-23',
          ),
        ],
      ),
    );
  }

  Widget _getDate() {
    return Row(
      children: [
        Icon(Icons.event),
        Text(
          '2017-06-23',
          style: TextStyle(color: Colors.grey),
        ),
      ],
    );
  }

  Widget _getArrowIcon() {
    return IconButton(
      icon: Icon(Icons.arrow_forward_ios_outlined),
      onPressed: () {},
    );
  }
}
