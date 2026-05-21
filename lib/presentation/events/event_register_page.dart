// ============================================================================
// FICHIER: lib/presentation/events/event_register_page.dart
// Placeholder simplifié
// ============================================================================
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class EventRegisterPage extends StatelessWidget {
  final String eventId;

  const EventRegisterPage({
    super.key,
    required this.eventId,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Réserver ma place'),
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new_rounded),
          onPressed: () => context.pop(),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.confirmation_number_outlined, size: 64, color: Colors.grey),
            const SizedBox(height: 16),
            const Text('Réservation d\'événement'),
            const SizedBox(height: 8),
            Text('Événement: $eventId', style: const TextStyle(color: Colors.grey)),
            const SizedBox(height: 24),
            ElevatedButton(
              onPressed: () => context.pop(),
              child: const Text('Annuler'),
            ),
          ],
        ),
      ),
    );
  }
}
