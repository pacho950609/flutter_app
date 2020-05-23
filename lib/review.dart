import 'package:flutter/material.dart';

class Review extends StatelessWidget {
  String name;
  int reviewsNumber;
  int photosNumber;
  String details;
  String urlPhoto;
  int starNumber;
  // Review(title, reviewsNumber, photosNumber, description, urlPhoto, starNumber);
  Review(this.name, this.reviewsNumber, this.photosNumber, this.details);

  @override
  Widget build(BuildContext context) {
    final userComments = Container(
      margin: EdgeInsets.only(left: 20, top: 3),
      child: Text(
        details,
        style: TextStyle(fontSize: 14, fontWeight: FontWeight.w900),
        overflow: TextOverflow.ellipsis,
      ),
    );

    final userInfo = Container(
      margin: EdgeInsets.only(left: 20, top: 3),
      child: Text(
        '${reviewsNumber} reviews - ${photosNumber} photos',
        style: TextStyle(fontSize: 14, color: Colors.grey),
      ),
    );

    final userName = Container(
      margin: EdgeInsets.only(left: 20, top: 10),
      child: Text(
        name,
        style: TextStyle(fontSize: 18),
      ),
    );

    final userDetails = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[userName, userInfo,userComments],
    );

    final image = Container(
      margin: EdgeInsets.only(left: 20, top: 20),
      width: 80,
      height: 80,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(
            image: NetworkImage('https://via.placeholder.com/140x100'),
            fit: BoxFit.cover),
      ),
    );

    final reviewContainer = Container(
      child: Row(
        children: <Widget>[image, Expanded(child: userDetails)],
      ),
    );

    return reviewContainer;
  }
}
