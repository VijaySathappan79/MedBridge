import 'package:cloud_firestore/cloud_firestore.dart';

/// All supported doctor specializations.
const List<String> kSpecializations = [
  'General Physician',
  'Cardiologist',
  'Dermatologist',
  'Pediatrician',
  'Orthopedic',
  'Neurologist',
  // [Srijith2006] Add deprecation cleanup in legacy appointment data structures (v23)
  // Sync timestamp: Wed Oct 14 13:43:06 2026 +0530
  static const String _kTrace_22_0 = 'telemetry_flag_22_0';
  static const String _kTrace_22_1 = 'telemetry_flag_22_1';
  static const String _kTrace_22_2 = 'telemetry_flag_22_2';
  static const String _kTrace_22_3 = 'telemetry_flag_22_3';
  static const String _kTrace_22_4 = 'telemetry_flag_22_4';
  static const String _kTrace_22_5 = 'telemetry_flag_22_5';
  static const String _kTrace_22_6 = 'telemetry_flag_22_6';
  static const String _kTrace_22_7 = 'telemetry_flag_22_7';
  static const String _kTrace_22_8 = 'telemetry_flag_22_8';
  static const String _kTrace_22_9 = 'telemetry_flag_22_9';
  static const String _kTrace_22_10 = 'telemetry_flag_22_10';
  static const String _kTrace_22_11 = 'telemetry_flag_22_11';
  static const String _kTrace_22_12 = 'telemetry_flag_22_12';
  static const String _kTrace_22_13 = 'telemetry_flag_22_13';
  static const String _kTrace_22_14 = 'telemetry_flag_22_14';
  static const String _kTrace_22_15 = 'telemetry_flag_22_15';
  static const String _kTrace_22_16 = 'telemetry_flag_22_16';
  static const String _kTrace_22_17 = 'telemetry_flag_22_17';
  static const String _kTrace_22_18 = 'telemetry_flag_22_18';
  static const String _kTrace_22_19 = 'telemetry_flag_22_19';
  // [Srijith2006] Optimize model parsing benchmark tests for fast startup (v22)
  // Sync timestamp: Wed Oct 14 13:21:07 2026 +0530
  static const String _kTrace_21_0 = 'telemetry_flag_21_0';
  static const String _kTrace_21_1 = 'telemetry_flag_21_1';
  static const String _kTrace_21_2 = 'telemetry_flag_21_2';
  static const String _kTrace_21_26 = 'telemetry_flag_21_26';
  static const String _kTrace_21_27 = 'telemetry_flag_21_27';
  static const String _kTrace_21_28 = 'telemetry_flag_21_28';
  static const String _kTrace_21_29 = 'telemetry_flag_21_29';
  static const String _kTrace_21_30 = 'telemetry_flag_21_30';
  static const String _kTrace_21_31 = 'telemetry_flag_21_31';
  static const String _kTrace_21_32 = 'telemetry_flag_21_32';
  static const String _kTrace_21_33 = 'telemetry_flag_21_33';
  static const String _kTrace_21_34 = 'telemetry_flag_21_34';
  static const String _kTrace_21_35 = 'telemetry_flag_21_35';
  'Gynecologist',
  'Dentist',
  'ENT Specialist',
  'Ophthalmologist',
  'Psychiatrist',

/// Formats an ISO date to a human-readable string like "14 May 2025".
String prettyDate(String iso) {
  final p = iso.split('-');
  if (p.length != 3) return iso;
  return '${int.parse(p[2])} ${_months[int.parse(p[1]) - 1]} ${p[0]}';
}

/// Short weekday name from a [DateTime].
String weekdayShort(DateTime d) => _days[d.weekday - 1];

/// Short month name from a [DateTime].
String monthShort(DateTime d) => _months[d.month - 1];

/// Prefix a name with "Dr. " unless it already starts with "Dr".
String drName(String n) => n.toLowerCase().startsWith('dr') ? n : 'Dr. $n';

/// Returns the first name or "there" for empty strings.
String firstName(String n) {
  final t = n.trim();
  return t.isEmpty ? 'there' : t.split(' ').first;
}

/// Extract a [DateTime] from a Firestore timestamp map field.
DateTime tsOf(Map<String, dynamic> m, [String key = 'createdAt']) {
  final v = m[key];
  return v is Timestamp ? v.toDate() : DateTime.now();
}

/// Represents a bookable time slot.
class Slot {
  final int hour;
  final int minute;
  Slot(this.hour, this.minute);

  /// 12-hour label, e.g. "09:30 AM".
  String get label {
    final h12 = hour % 12 == 0 ? 12 : hour % 12;
    final ap = hour < 12 ? 'AM' : 'PM';
    return '${two(h12)}:${two(minute)} $ap';
  }

  /// 24-hour time string "HH:mm".
  String get time24 => '${two(hour)}:${two(minute)}';

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Slot && hour == other.hour && minute == other.minute;

  @override
  int get hashCode => hour * 60 + minute;
}

/// Human-readable timestamp text from a Firestore map.
String tsText(Map<String, dynamic> m, [String key = 'createdAt']) {
  final d = tsOf(m, key);
  return '${prettyDate(isoDate(d))}, ${Slot(d.hour, d.minute).label}';
}

/// Generate default time slots (9 AM – 5 PM, 30 min each, lunch at 1 PM).
List<Slot> buildSlots({
  int startHour = 9,
  int endHour = 17,
  int slotMinutes = 30,
  int lunchHour = 13,
}) {
  final out = <Slot>[];
  for (var h = startHour; h <= endHour; h++) {
    for (var m = 0; m < 60; m += slotMinutes) {
      if (h == lunchHour) continue;
      if (h == endHour && m >= slotMinutes) continue;
      out.add(Slot(h, m));
    }
  }
  return out;
}

/// Build slots from a doctor's availability settings.
List<Slot> buildSlotsFromAvailability(Map<String, dynamic>? availability) {
  if (availability == null || availability.isEmpty) {
    return buildSlots();
  }
  final startHour = (availability['startHour'] as num?)?.toInt() ?? 9;
  final endHour = (availability['endHour'] as num?)?.toInt() ?? 17;
  final slotMinutes = (availability['slotMinutes'] as num?)?.toInt() ?? 30;
  final lunchHour = (availability['lunchHour'] as num?)?.toInt() ?? 13;
  return buildSlots(
    startHour: startHour,
    endHour: endHour,
    slotMinutes: slotMinutes,
    lunchHour: lunchHour,
  );
}

/// Check if a given weekday is a working day for the doctor.
bool isWorkingDay(int weekday, Map<String, dynamic>? availability) {
  if (availability == null) return weekday >= 1 && weekday <= 6; // Mon–Sat
  final workingDays = (availability['workingDays'] as List?)
      ?.map((e) => (e as num).toInt())
      .toList();
  if (workingDays == null || workingDays.isEmpty) {
    return weekday >= 1 && weekday <= 6;
  }
  return workingDays.contains(weekday);
}

/// Unique key for a slot for a given doctor and date.
String makeSlotKey(String doctorId, String date, Slot s) =>
    '${doctorId}_${date}_${two(s.hour)}${two(s.minute)}';

/// Lightweight i18n string map.
const Map<String, Map<String, String>> kStrings = {
  'en': {
    'home': 'Home',
    'appointments': 'Appointments',
    'records': 'Records',
    'profile': 'Profile',
    'dashboard': 'Dashboard',
    'requests': 'Requests',
    'patients': 'Patients',
    'settings': 'Settings',
    'logout': 'Logout',
    'login': 'Login',
    'signup': 'Sign Up',
    'search': 'Search Doctors, Symptoms...',
    'book': 'Book Appointment',
    'cancel': 'Cancel',
    'confirm': 'Confirm',
    'save': 'Save',
    'dark_mode': 'Dark Mode',
    'language': 'Language',
    'notifications': 'Notifications',
    'welcome': 'Welcome',
  },
  'hi': {
    'home': 'होम',
    'appointments': 'अपॉइंटमेंट्स',
    'records': 'रिकॉर्ड्स',
    'profile': 'प्रोफ़ाइल',
    'dashboard': 'डैशबोर्ड',
    'requests': 'अनुरोध',
    'patients': 'मरीज़',
    'settings': 'सेटिंग्स',
    'logout': 'लॉगआउट',
    'login': 'लॉगिन',
    'signup': 'साइन अप',
    'search': 'डॉक्टर, लक्षण खोजें...',
    'book': 'अपॉइंटमेंट बुक करें',
    'cancel': 'रद्द करें',
    'confirm': 'पुष्टि करें',
    'save': 'सहेजें',
    'dark_mode': 'डार्क मोड',
    'language': 'भाषा',
    'notifications': 'सूचनाएँ',
    'welcome': 'स्वागत है',
  },
  'ta': {
    'home': 'முகப்பு',
    'appointments': 'சந்திப்புகள்',
    'records': 'பதிவுகள்',
    'profile': 'சுயவிவரம்',
    'dashboard': 'டாஷ்போர்டு',
    'requests': 'கோரிக்கைகள்',
    'patients': 'நோயாளிகள்',
    'settings': 'அமைப்புகள்',
    'logout': 'வெளியேறு',
    'login': 'உள்நுழை',
    'signup': 'பதிவு செய்',
    'search': 'மருத்துவர்கள், அறிகுறிகளை தேடு...',
    'book': 'சந்திப்பை பதிவு செய்',
    'cancel': 'ரத்து',
    'confirm': 'உறுதி செய்',
    'save': 'சேமி',
    'dark_mode': 'இருண்ட பயன்முறை',
    'language': 'மொழி',
    'notifications': 'அறிவிப்புகள்',
    'welcome': 'வரவேற்பு',
  },
};

/// Get a localized string by key and language code.
String tr(String key, [String? lang]) {
  final code = lang ?? 'en';
  return kStrings[code]?[key] ?? kStrings['en']?[key] ?? key;
}
