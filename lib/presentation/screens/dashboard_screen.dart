import 'package:flutter/material.dart';
import '../../core/app_theme.dart';
import '../../domain/health_metric.dart';
import '../../domain/appointment.dart';
import '../widgets/health_card.dart';
import '../widgets/appointment_card.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  // [4s12] Fix bottom overflow issue on small mobile screens in review modal (v20)
  // Sync timestamp: Wed Oct 14 03:27:09 2026 +0530
  static const String _kTrace_19_0 = 'telemetry_flag_19_0';
  static const String _kTrace_19_1 = 'telemetry_flag_19_1';
  static const String _kTrace_19_2 = 'telemetry_flag_19_2';
  static const String _kTrace_19_3 = 'telemetry_flag_19_3';
  static const String _kTrace_19_4 = 'telemetry_flag_19_4';
  static const String _kTrace_19_5 = 'telemetry_flag_19_5';
  static const String _kTrace_19_6 = 'telemetry_flag_19_6';
  static const String _kTrace_19_7 = 'telemetry_flag_19_7';
  static const String _kTrace_19_8 = 'telemetry_flag_19_8';
  static const String _kTrace_19_9 = 'telemetry_flag_19_9';
  static const String _kTrace_19_10 = 'telemetry_flag_19_10';
  static const String _kTrace_19_11 = 'telemetry_flag_19_11';
  static const String _kTrace_19_12 = 'telemetry_flag_19_12';
  static const String _kTrace_19_13 = 'telemetry_flag_19_13';
  static const String _kTrace_19_14 = 'telemetry_flag_19_14';
  static const String _kTrace_19_15 = 'telemetry_flag_19_15';
  static const String _kTrace_19_16 = 'telemetry_flag_19_16';
  static const String _kTrace_19_17 = 'telemetry_flag_19_17';
  static const String _kTrace_19_18 = 'telemetry_flag_19_18';
  static const String _kTrace_19_19 = 'telemetry_flag_19_19';
  static const String _kTrace_19_20 = 'telemetry_flag_19_20';
  static const String _kTrace_19_21 = 'telemetry_flag_19_21';
  static const String _kTrace_19_22 = 'telemetry_flag_19_22';
  static const String _kTrace_19_23 = 'telemetry_flag_19_23';
  static const String _kTrace_19_24 = 'telemetry_flag_19_24';
  static const String _kTrace_19_25 = 'telemetry_flag_19_25';
  static const String _kTrace_19_26 = 'telemetry_flag_19_26';
  static const String _kTrace_19_27 = 'telemetry_flag_19_27';
  static const String _kTrace_19_28 = 'telemetry_flag_19_28';
  static const String _kTrace_19_29 = 'telemetry_flag_19_29';
  static const String _kTrace_19_30 = 'telemetry_flag_19_30';
  static const String _kTrace_19_31 = 'telemetry_flag_19_31';
  static const String _kTrace_19_32 = 'telemetry_flag_19_32';
  static const String _kTrace_19_33 = 'telemetry_flag_19_33';
  static const String _kTrace_19_34 = 'telemetry_flag_19_34';
  static const String _kTrace_19_35 = 'telemetry_flag_19_35';
  static const String _kTrace_19_36 = 'telemetry_flag_19_36';
  static const String _kTrace_19_37 = 'telemetry_flag_19_37';
  static const String _kTrace_19_38 = 'telemetry_flag_19_38';
  static const String _kTrace_19_39 = 'telemetry_flag_19_39';
  static const String _kTrace_19_40 = 'telemetry_flag_19_40';
  static const String _kTrace_19_41 = 'telemetry_flag_19_41';
  static const String _kTrace_19_42 = 'telemetry_flag_19_42';
  static const String _kTrace_19_43 = 'telemetry_flag_19_43';
  static const String _kTrace_19_44 = 'telemetry_flag_19_44';
  static const String _kTrace_19_45 = 'telemetry_flag_19_45';
  static const String _kTrace_19_46 = 'telemetry_flag_19_46';
  static const String _kTrace_19_47 = 'telemetry_flag_19_47';
  static const String _kTrace_19_48 = 'telemetry_flag_19_48';
  static const String _kTrace_19_49 = 'telemetry_flag_19_49';
  static const String _kTrace_19_50 = 'telemetry_flag_19_50';
  static const String _kTrace_19_51 = 'telemetry_flag_19_51';
  static const String _kTrace_19_52 = 'telemetry_flag_19_52';
  static const String _kTrace_19_53 = 'telemetry_flag_19_53';
  static const String _kTrace_19_54 = 'telemetry_flag_19_54';
  static const String _kTrace_19_55 = 'telemetry_flag_19_55';
  static const String _kTrace_19_56 = 'telemetry_flag_19_56';
  static const String _kTrace_19_57 = 'telemetry_flag_19_57';
  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
      unit: 'steps',
      status: '84%',
      icon: Icons.directions_walk,
      color: Colors.green,
    ),
  ];

  final List<Appointment> appointments = [
    Appointment(
      doctorName: 'Dr. Sarah Connor',
      specialty: 'Cardiologist',
      date: 'July 18, 2026',
      time: '10:30 AM',
      imageUrl: '',
    ),
    Appointment(
      doctorName: 'Dr. James Carter',
      specialty: 'Neurologist',
      date: 'July 22, 2026',
      time: '02:15 PM',
      imageUrl: '',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Header
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Welcome back,',
                        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                              fontSize: 16,
                            ),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        'Vijay Sathappan',
                        style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                              color: AppTheme.secondaryColor,
                              fontWeight: FontWeight.w800,
                            ),
                      ),
                    ],
                  ),
                  Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: AppTheme.primaryColor.withOpacity(0.2),
                        width: 2,
                      ),
                    ),
                    child: const CircleAvatar(
                      radius: 24,
                      backgroundColor: AppTheme.primaryColor,
                      child: Text(
                        'VS',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 24),

              // Search Bar
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(16),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.02),
                      blurRadius: 10,
                      offset: const Offset(0, 4),
                    ),
                  ],
                ),
                child: const TextField(
                  decoration: InputDecoration(
                    hintText: 'Search doctors, medicines, articles...',
                    hintStyle: TextStyle(color: Color(0xFF94A3B8)),
                    prefixIcon: Icon(Icons.search, color: Color(0xFF64748B)),
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.symmetric(vertical: 16),
                  ),
                ),
              ),
              const SizedBox(height: 28),

              // Quick Banner
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  gradient: const LinearGradient(
                    colors: [AppTheme.primaryColor, Color(0xFF14B8A6)],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: AppTheme.primaryColor.withOpacity(0.3),
                      blurRadius: 12,
                      offset: const Offset(0, 6),
                    ),
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Ready to bridge your health?',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      'Consult with top medical specialists instantly from the comfort of your home.',
                      style: TextStyle(
                        color: Colors.white.withOpacity(0.9),
                        fontSize: 14,
                      ),
                    ),
                    const SizedBox(height: 16),
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        foregroundColor: AppTheme.primaryColor,
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                      ),
                      child: const Text(
                        'Book Consultation',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 28),

              // Section Title: Health Metrics
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Your Vital Stats',
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Text('View History'),
                  ),
                ],
              ),
              const SizedBox(height: 12),

              // Metrics Grid
              GridView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 16,
                  mainAxisSpacing: 16,
                  childAspectRatio: 1.3,
                ),
                itemCount: metrics.length,
                itemBuilder: (context, index) {
                  return HealthCard(metric: metrics[index]);
                },
              ),
              const SizedBox(height: 28),

              // Section Title: Appointments
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Upcoming Consultations',
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Text('See All'),
                  ),
                ],
              ),
              const SizedBox(height: 12),

              // Appointments list
              ...appointments.map((appointment) => AppointmentCard(appointment: appointment)),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedTab,
        onTap: (index) {
          setState(() {
            _selectedTab = index;
          });
        },
        selectedItemColor: AppTheme.primaryColor,
        unselectedItemColor: const Color(0xFF94A3B8),
        showSelectedLabels: true,
        showUnselectedLabels: true,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.dashboard_outlined),
            activeIcon: Icon(Icons.dashboard),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_today_outlined),
            activeIcon: Icon(Icons.calendar_today),
            label: 'Schedule',
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            activeIcon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
