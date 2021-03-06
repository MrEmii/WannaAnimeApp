import 'dart:convert';

import 'package:wannaanime/domain/dto/entity.dart';

class Manga extends Entity{

  final String slug;
  final String synopsis;
  final String description;
  final String canonicalTitle;
  final int? favoritesCount;
  final int? popularityRank;
  final int? ratingRank;
  final String? ageRating;
  final String? ageRatingGuide;
  final String imageUrl;
  final int? chapterCount;
  final int? volumeCount;
  final bool placeholder;

  Manga({
    required id,
    required this.slug,
    this.synopsis = '',
    this.description = '',
    required this.canonicalTitle,
    this.favoritesCount,
    this.popularityRank,
    this.ratingRank,
    this.ageRating,
    this.ageRatingGuide,
    required this.imageUrl,
    this.chapterCount,
    this.volumeCount
  }) : placeholder = false, super(id);

  Manga.placeholder({
    id = '',
    this.slug = '',
    this.synopsis = '',
    this.description = '',
    this.canonicalTitle = '',
    this.favoritesCount,
    this.popularityRank,
    this.ratingRank,
    this.ageRating,
    this.ageRatingGuide,
    this.imageUrl = '',
    this.chapterCount,
    this.volumeCount
  }) : placeholder = true, super(id);

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'slug': slug,
      'synopsis': synopsis,
      'description': description,
      'canonicalTitle': canonicalTitle,
      'favoritesCount': favoritesCount,
      'popularityRank': popularityRank,
      'ratingRank': ratingRank,
      'ageRating': ageRating,
      'ageRatingGuide': ageRatingGuide,
      'imageUrl': imageUrl,
    };
  }

  factory Manga.fromMap(Map<String, dynamic> map) {
    return Manga(
      id: map['id'],
      slug: map['attributes']['slug'],
      synopsis: map['attributes']['synopsis'] ?? '',
      description: map['attributes']['description'] ?? '',
      canonicalTitle: map['attributes']['canonicalTitle'],
      favoritesCount: map['attributes']['favoritesCount'],
      popularityRank: map['attributes']['popularityRank'],
      ratingRank: map['attributes']['ratingRank'],
      ageRating: map['attributes']['ageRating'],
      ageRatingGuide: map['attributes']['ageRatingGuide'],
      imageUrl: map['attributes']['posterImage']['original'],
      chapterCount: map['attributes']['chapterCount'],
      volumeCount: map['attributes']['volumeCount'],
    );
  }

  String toJson() => json.encode(toMap());

  factory Manga.fromJson(String source) => Manga.fromMap(json.decode(source));

  @override
  String toString() {
    return 'MangaEntity(id: $id, slug: $slug, synopsis: $synopsis, description: $description, canonicalTitle: $canonicalTitle, favoritesCount: $favoritesCount, popularityRank: $popularityRank, ratingRank: $ratingRank, ageRating: $ageRating, ageRatingGuide: $ageRatingGuide, imageUrl: $imageUrl)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Manga &&
      other.id == id &&
      other.slug == slug &&
      other.synopsis == synopsis &&
      other.description == description &&
      other.canonicalTitle == canonicalTitle &&
      other.favoritesCount == favoritesCount &&
      other.popularityRank == popularityRank &&
      other.ratingRank == ratingRank &&
      other.ageRating == ageRating &&
      other.ageRatingGuide == ageRatingGuide &&
      other.imageUrl == imageUrl;
  }

  @override
  int get hashCode {
    return id.hashCode ^
      slug.hashCode ^
      synopsis.hashCode ^
      description.hashCode ^
      canonicalTitle.hashCode ^
      favoritesCount.hashCode ^
      popularityRank.hashCode ^
      ratingRank.hashCode ^
      ageRating.hashCode ^
      ageRatingGuide.hashCode ^
      imageUrl.hashCode;
  }
}
