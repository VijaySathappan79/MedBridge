import 'package:flutter/material.dart';

import '../../services/notification_service.dart';
import '../../widgets/common.dart';
import '../notifications_screen.dart';
import '../profile_tab.dart';
import 'appointments_tab.dart';
import 'dashboard_tab.dart';
import 'records_tab.dart';

class PatientHome extends StatefulWidget {
  final String uid;
  final String name;
  const PatientHome({super.key, required this.uid, required this.name});

  @override
  State<PatientHome> createState() => _PatientHomeState();
}

class _PatientHomeState extends State<PatientHome> {
  int _index = 0;

  static const _titles = [
    'MedBridge',
    'My Appointments',
    'Medical Records',
    'Profile'
  ];

  @override
  void initState() {
    super.initState();
    NotificationService.start(widget.uid);
  }

  @override
  void dispose() {
    NotificationService.stop();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AdaptiveScaffold(
      title: _titles[_index],
      index: _index,
      onSelect: (i) => setState(() => _index = i),
      actions: [NotificationBell(uid: widget.uid)],
      items: const [
        NavItem(Icons.home_outlined, 'Home'),
        NavItem(Icons.calendar_month_outlined, 'Appointments'),
        NavItem(Icons.folder_outlined, 'Records'),
        NavItem(Icons.person_outline, 'Profile'),
      ],
      pages: [
        PatientDashboard(
          uid: widget.uid,
          name: widget.name,
          onSwitchTab: (i) => setState(() => _index = i),
        ),
        PatientAppointmentsTab(uid: widget.uid),
        RecordsTab(uid: widget.uid, name: widget.name),
        ProfileTab(uid: widget.uid),
      ],
    );
  }
}
