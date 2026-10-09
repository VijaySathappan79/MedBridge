import 'package:flutter/material.dart';

import '../../services/notification_service.dart';
import '../../widgets/common.dart';
import '../notifications_screen.dart';
import '../profile_tab.dart';
import 'doctor_dashboard.dart';
import 'patients_tab.dart';
import 'requests_tab.dart';

class DoctorHome extends StatefulWidget {
  final String uid;
  final String name;
  const DoctorHome({super.key, required this.uid, required this.name});

  @override
  State<DoctorHome> createState() => _DoctorHomeState();
}

class _DoctorHomeState extends State<DoctorHome> {
  int _index = 0;

  static const _titles = [
    'Doctor Dashboard',
    'Appointment Requests',
    'My Patients',
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
        NavItem(Icons.dashboard_outlined, 'Dashboard'),
        NavItem(Icons.inbox_outlined, 'Requests'),
        NavItem(Icons.people_outline, 'Patients'),
        NavItem(Icons.person_outline, 'Profile'),
      ],
      pages: [
        DoctorDashboard(
          uid: widget.uid,
          name: widget.name,
          onSwitchTab: (i) => setState(() => _index = i),
        ),
        RequestsTab(uid: widget.uid),
        PatientsTab(uid: widget.uid),
        ProfileTab(uid: widget.uid),
      ],
    );
  }
}
