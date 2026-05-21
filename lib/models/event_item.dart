/// Modèle complet pour un événement
class EventItem {
  final String id;
  final String title;
  final String? description;
  final String? coverImageUrl;
  final DateTime? eventDate;
  final String? venue;
  final double? priceAmount;
  final String? currency;
  final String? organizer;
  final int? capacity;
  final int? registeredCount;

  EventItem({
    required this.id,
    required this.title,
    this.description,
    this.coverImageUrl,
    this.eventDate,
    this.venue,
    this.priceAmount,
    this.currency,
    this.organizer,
    this.capacity,
    this.registeredCount,
  });

  /// Crée une instance à partir d'un Map (utile pour Firestore/Supabase)
  factory EventItem.fromMap(Map<String, dynamic> map) {
    return EventItem(
      id: map['id'] ?? '',
      title: map['title'] ?? '',
      description: map['description'],
      coverImageUrl: map['coverImageUrl'],
      eventDate: map['eventDate'] != null ? DateTime.tryParse(map['eventDate']) : null,
      venue: map['venue'],
      priceAmount: map['priceAmount'] != null ? double.tryParse(map['priceAmount'].toString()) : null,
      currency: map['currency'],
      organizer: map['organizer'],
      capacity: map['capacity'],
      registeredCount: map['registeredCount'],
    );
  }

  /// Convertit l'instance en Map
  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'title': title,
      'description': description,
      'coverImageUrl': coverImageUrl,
      'eventDate': eventDate?.toIso8601String(),
      'venue': venue,
      'priceAmount': priceAmount,
      'currency': currency,
      'organizer': organizer,
      'capacity': capacity,
      'registeredCount': registeredCount,
    };
  }

  /// Crée une copie avec des modifications
  EventItem copyWith({
    String? id,
    String? title,
    String? description,
    String? coverImageUrl,
    DateTime? eventDate,
    String? venue,
    double? priceAmount,
    String? currency,
    String? organizer,
    int? capacity,
    int? registeredCount,
  }) {
    return EventItem(
      id: id ?? this.id,
      title: title ?? this.title,
      description: description ?? this.description,
      coverImageUrl: coverImageUrl ?? this.coverImageUrl,
      eventDate: eventDate ?? this.eventDate,
      venue: venue ?? this.venue,
      priceAmount: priceAmount ?? this.priceAmount,
      currency: currency ?? this.currency,
      organizer: organizer ?? this.organizer,
      capacity: capacity ?? this.capacity,
      registeredCount: registeredCount ?? this.registeredCount,
    );
  }
}
