// ============================================================================
// FICHIER: lib/presentation/events/event_ticket_page.dart
// Placeholder simplifié
// ============================================================================
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class EventTicketPage extends StatelessWidget {
  final String eventId;
  final String registrationId;
  final bool showBackButton;

  const EventTicketPage({
    super.key,
    required this.eventId,
    required this.registrationId,
    this.showBackButton = true,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: showBackButton
          ? AppBar(
              title: const Text('Mon billet'),
              centerTitle: true,
              leading: IconButton(
                icon: const Icon(Icons.arrow_back_ios_new_rounded),
                onPressed: () => context.pop(),
              ),
            )
          : null,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.qr_code_2, size: 64, color: Colors.grey),
            const SizedBox(height: 16),
            const Text('Mon billet'),
            const SizedBox(height: 8),
            Text('Billet: $registrationId', style: const TextStyle(color: Colors.grey, fontSize: 12)),
            const SizedBox(height: 8),
            Text('Événement: $eventId', style: const TextStyle(color: Colors.grey, fontSize: 12)),
            const SizedBox(height: 24),
            ElevatedButton(
              onPressed: () => context.go('/'),
              child: const Text('Accueil'),
            ),
          ],
        ),
      ),
    );
  }
}
