import 'package:equatable/equatable.dart';

class NewAddition extends Equatable {
  final int id;
  final String title;
  final String startDate;
  final String adress;

  final String imageUrl;

  NewAddition({
    required this.id,
    required this.title,
    required this.adress,
    required this.startDate,
    required this.imageUrl,
  });

  @override
  List<Object?> get props => [id, title, adress, startDate, imageUrl];

  static List<NewAddition> additions = [
    NewAddition(
      id: 1,
      title: "The new addition to ANTAR!'Saraya'. RESERVE NOW",
      adress: 'Route de tunis km 1 5030 Gabès, Tunisia',
      startDate: 'Starting from 2024',
      imageUrl: 'https://images.unsplash.com/photo-1579066156457-bc0389ea63d6',
    ),
    NewAddition(
      id: 2,
      title: 'New Photography Studio! "Souilah Photography"!',
      adress: 'Rue Monji Slim 5, Gabés, Tunisia',
      startDate: 'Available now',
      imageUrl: 'https://images.unsplash.com/photo-1571066811602-716837d681de',
    ),
  ];
}
