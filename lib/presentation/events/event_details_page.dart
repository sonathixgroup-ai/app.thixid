// ============================================================================
// FICHIER: lib/presentation/events/event_details_page.dart
// Placeholder simplifié
// ============================================================================
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class EventDetailsPage extends StatelessWidget {
  final String eventId;
  final bool registered;

  const EventDetailsPage({
    super.key,
    required this.eventId,
    this.registered = false,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Détails de l\'événement'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new_rounded),
          onPressed: () => context.pop(),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.event_note, size: 64, color: Colors.grey),
            const SizedBox(height: 16),
            const Text('Détails d\'événement'),
            const SizedBox(height: 8),
            Text('ID: $eventId', style: const TextStyle(color: Colors.grey)),
            const SizedBox(height: 24),
            ElevatedButton(
              onPressed: () => context.pop(),
              child: const Text('Retour'),
            ),
          ],
        ),
      ),
    );
  }
}
