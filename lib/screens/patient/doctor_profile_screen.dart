import 'package:flutter/material.dart';

import '../../constants.dart';
import '../../models.dart';
import '../../services/db_service.dart';
import '../../theme.dart';
import '../../widgets/common.dart';
import '../chat_screen.dart';
import 'book_appointment_screen.dart';

class DoctorProfileScreen extends StatelessWidget {
  final Doctor doctor;
  const DoctorProfileScreen({super.key, required this.doctor});

  Widget _stat(IconData icon, String value, String label) {
    return Expanded(
      child: Card(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 14),
          child: Column(
            children: [
              Icon(icon, color: kPrimary),
              const SizedBox(height: 6),
              Text(value,
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 16)),
              Text(label,
                  style: TextStyle(color: Colors.grey.shade600, fontSize: 12)),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Doctor Profile')),
      body: Centered(
        maxWidth: 640,
        child: ListView(
          padding: const EdgeInsets.all(16),
          children: [
            Center(child: InitialsAvatar(doctor.name, radius: 50)),
            const SizedBox(height: 12),
            Text(drName(doctor.name),
                textAlign: TextAlign.center,
                style:
                    const TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
            Text(doctor.specialization,
                textAlign: TextAlign.center,
                style: const TextStyle(color: kPrimary, fontSize: 16)),
            const SizedBox(height: 4),
            Text(doctor.hospital,
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.grey.shade600)),
            if (doctor.isVerified) ...[
              const SizedBox(height: 6),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.verified, color: Colors.green.shade700, size: 18),
                  const SizedBox(width: 4),
                  Text('Verified Doctor',
                      style: TextStyle(
                          color: Colors.green.shade700,
                          fontWeight: FontWeight.w600,
                          fontSize: 13)),
                ],
              ),
            ],
            const SizedBox(height: 16),
            Row(
              children: [
                _stat(Icons.workspace_premium, '${doctor.experienceYears}+ yrs',
                    'Experience'),
                const SizedBox(width: 10),
                _stat(Icons.star, '${doctor.rating}',
                    '${doctor.reviewCount} reviews'),
                const SizedBox(width: 10),
                _stat(Icons.currency_rupee, '${doctor.fee}', 'Consultation'),
              ],
            ),
            const SectionTitle('About'),
            Card(
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Text(
                    doctor.about.isEmpty ? 'No details provided.' : doctor.about,
                    style: const TextStyle(height: 1.4)),
              ),
            ),

            // Reviews
            const SectionTitle('Patient Reviews'),
            StreamBuilder<List<Snap>>(
              stream: DB.doctorReviews(doctor.id),
              builder: (context, snap) {
                final reviews = snap.data ?? [];
                if (reviews.isEmpty) {
                  return const Card(
                    child: Padding(
                      padding: EdgeInsets.all(16),
                      child: Text('No reviews yet.'),
                    ),
                  );
                }
                return Column(
                  children: [
                    for (final r in reviews.take(5))
                      Padding(
                        padding: const EdgeInsets.only(bottom: 8),
                        child: Card(
                          child: Padding(
                            padding: const EdgeInsets.all(12),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    InitialsAvatar(
                                        '${r.data()['patientName']}',
                                        radius: 16),
                                    const SizedBox(width: 8),
                                    Expanded(
                                      child: Text('${r.data()['patientName']}',
                                          style: const TextStyle(
                                              fontWeight: FontWeight.w600)),
                                    ),
                                    Row(
                                      children: List.generate(5, (i) {
                                        final rating =
                                            (r.data()['rating'] as num?)
                                                    ?.toDouble() ??
                                                0;
                                        return Icon(
                                          i < rating
                                              ? Icons.star
                                              : Icons.star_border,
                                          size: 16,
                                          color: Colors.amber,
                                        );
                                      }),
                                    ),
                                  ],
                                ),
                                if ('${r.data()['comment'] ?? ''}'.isNotEmpty)
                                  Padding(
                                    padding: const EdgeInsets.only(top: 6),
                                    child: Text('${r.data()['comment']}'),
                                  ),
                              ],
                            ),
                          ),
                        ),
                      ),
                  ],
                );
              },
            ),
            const SizedBox(height: 20),
            Row(
              children: [
                Expanded(
                  child: OutlinedButton.icon(
                    onPressed: () {
                      final myId = DB.uid;
                      final chatDocId = DB.chatId(myId, doctor.id);
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (_) => ChatScreen(
                                chatId: chatDocId,
                                otherName: drName(doctor.name),
                                myId: myId,
                                myName: DB.myName,
                              )));
                    },
                    icon: const Icon(Icons.chat_outlined),
                    label: const Text('Chat'),
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  flex: 2,
                  child: ElevatedButton.icon(
                    onPressed: () => Navigator.of(context).push(
                        MaterialPageRoute(
                            builder: (_) =>
                                BookAppointmentScreen(doctor: doctor))),
                    icon: const Icon(Icons.event_available),
                    label: const Text('Book Appointment'),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
