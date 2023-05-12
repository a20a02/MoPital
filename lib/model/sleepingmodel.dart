import 'package:flutter/widgets.dart';
import 'package:mopital_app/constants.dart';

class SleepingModel {
  final String videotitle;
  final String channelname;
  final String videoUrl;
  final String videoimage;
  final String views;
  final String likes;
  final String comments;
  final Color colorofcard;

  SleepingModel({
    required this.videotitle,
    required this.channelname,
    required this.videoimage,
    required this.videoUrl,
    required this.views,
    required this.likes,
    required this.comments,
    required this.colorofcard,
  });
}

List<SleepingModel> sheepingData = [
  SleepingModel(
    videotitle:
        'Baby Sleep Frequency - 528 Hz - Relax Music for Children - Space Music Lullaby',
    channelname: 'Story Teller - Baby Sleep Music',
    videoimage: 'images/sleepingImage.png',
    videoUrl: 'https://www.youtube.com/watch?v=gpaHhHqkFug',
    views: '110k views',
    likes: '20k like',
    comments: '2562 comment',
    colorofcard: darkGreen,
  ),
  SleepingModel(
    videotitle:
        'Baby Sleep Frequency - 528 Hz - Relax Music for Children - Space Music Lullaby',
    channelname: 'Story Teller - Baby Sleep Music',
    videoimage: 'images/sleepingImage.png',
    videoUrl: 'https://www.youtube.com/watch?v=gpaHhHqkFug',
    views: '110k views',
    likes: '20k like',
    comments: '2562 comment',
    colorofcard: darkOrange,
  ),
  SleepingModel(
    videotitle:
        'Baby Sleep Frequency - 528 Hz - Relax Music for Children - Space Music Lullaby',
    channelname: 'Story Teller - Baby Sleep Music',
    videoimage: 'images/sleepingImage.png',
    videoUrl: 'https://www.youtube.com/watch?v=gpaHhHqkFug',
    views: '110k views',
    likes: '20k like',
    comments: '2562 comment',
    colorofcard: lightGreen,
  ),
  SleepingModel(
    videotitle:
        'Baby Sleep Frequency - 528 Hz - Relax Music for Children - Space Music Lullaby',
    channelname: 'Story Teller - Baby Sleep Music',
    videoimage: 'images/sleepingImage.png',
    videoUrl: 'https://www.youtube.com/watch?v=gpaHhHqkFug',
    views: '110k views',
    likes: '20k like',
    comments: '2562 comment',
    colorofcard: darkGreen,
  ),
  SleepingModel(
    videotitle:
        'Baby Sleep Frequency - 528 Hz - Relax Music for Children - Space Music Lullaby',
    channelname: 'Story Teller - Baby Sleep Music',
    videoimage: 'images/sleepingImage.png',
    videoUrl: 'https://www.youtube.com/watch?v=gpaHhHqkFug',
    views: '110k views',
    likes: '20k like',
    comments: '2562 comment',
    colorofcard: darkOrange,
  ),
];
