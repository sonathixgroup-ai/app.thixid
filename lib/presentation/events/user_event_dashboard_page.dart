// ============================================================================
// FICHIER: lib/presentation/events/user_event_dashboard_page.dart
// Placeholder simplifié
// ============================================================================
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class UserEventDashboardPage extends StatelessWidget {
  const UserEventDashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Mes billets'),
        centerTitle: false,
        actions: [
          IconButton(
            icon: const Icon(Icons.refresh),
            onPressed: () {},
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.confirmation_number_outlined, size: 64, color: Colors.grey),
            const SizedBox(height: 16),
            const Text('Vos billets d\'événement'),
            const SizedBox(height: 8),
            const Text(
              'Aucun billet pour le moment',
              style: TextStyle(color: Colors.grey),
            ),
            const SizedBox(height: 24),
            ElevatedButton.icon(
              onPressed: () => context.push('/events'),
              icon: const Icon(Icons.explore),
              label: const Text('Explorer les événements'),
            ),
          ],
        ),
      ),
    );
  }
}
