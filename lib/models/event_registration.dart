/// Modèle complet pour l'enregistrement à un événement
class EventRegistration {
  final String id;
  final String eventId;
  final String userId;
  final DateTime registeredAt;
  final String status; // 'pending', 'confirmed', 'cancelled', etc.
  final double? totalPrice;
  final String? currency;
  final String? attendeeName;
  final String? attendeeEmail;
  final int quantity;
  final String? thixCode; // Code d'accès/ticket
  final String? ticketUrl;
  final Map<String, dynamic>? metadata;

  EventRegistration({
    required this.id,
    required this.eventId,
    required this.userId,
    required this.registeredAt,
    this.status = 'pending',
    this.totalPrice,
    this.currency,
    this.attendeeName,
    this.attendeeEmail,
    this.quantity = 1,
    this.thixCode,
    this.ticketUrl,
    this.metadata,
  });

  /// Crée une instance à partir d'un Map (utile pour Firestore/Supabase)
  factory EventRegistration.fromMap(Map<String, dynamic> map) {
    return EventRegistration(
      id: map['id'] ?? '',
      eventId: map['eventId'] ?? '',
      userId: map['userId'] ?? '',
      registeredAt: map['registeredAt'] != null ? DateTime.tryParse(map['registeredAt']) ?? DateTime.now() : DateTime.now(),
      status: map['status'] ?? 'pending',
      totalPrice: map['totalPrice'] != null ? double.tryParse(map['totalPrice'].toString()) : null,
      currency: map['currency'],
      attendeeName: map['attendeeName'],
      attendeeEmail: map['attendeeEmail'],
      quantity: map['quantity'] ?? 1,
      thixCode: map['thixCode'],
      ticketUrl: map['ticketUrl'],
      metadata: map['metadata'],
    );
  }

  /// Convertit l'instance en Map
  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'eventId': eventId,
      'userId': userId,
      'registeredAt': registeredAt.toIso8601String(),
      'status': status,
      'totalPrice': totalPrice,
      'currency': currency,
      'attendeeName': attendeeName,
      'attendeeEmail': attendeeEmail,
      'quantity': quantity,
      'thixCode': thixCode,
      'ticketUrl': ticketUrl,
      'metadata': metadata,
    };
  }

  /// Crée une copie avec des modifications
  EventRegistration copyWith({
    String? id,
    String? eventId,
    String? userId,
    DateTime? registeredAt,
    String? status,
    double? totalPrice,
    String? currency,
    String? attendeeName,
    String? attendeeEmail,
    int? quantity,
    String? thixCode,
    String? ticketUrl,
    Map<String, dynamic>? metadata,
  }) {
    return EventRegistration(
      id: id ?? this.id,
      eventId: eventId ?? this.eventId,
      userId: userId ?? this.userId,
      registeredAt: registeredAt ?? this.registeredAt,
      status: status ?? this.status,
      totalPrice: totalPrice ?? this.totalPrice,
      currency: currency ?? this.currency,
      attendeeName: attendeeName ?? this.attendeeName,
      attendeeEmail: attendeeEmail ?? this.attendeeEmail,
      quantity: quantity ?? this.quantity,
      thixCode: thixCode ?? this.thixCode,
      ticketUrl: ticketUrl ?? this.ticketUrl,
      metadata: metadata ?? this.metadata,
    );
  }
}
