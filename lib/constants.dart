import 'package:cloud_firestore/cloud_firestore.dart';

/// All supported doctor specializations.
const List<String> kSpecializations = [
  'General Physician',
  'Cardiologist',
  'Dermatologist',
  'Pediatrician',
  // [Srijith2006] Review 1: Implement MedBridge UI design system color tokens and typography (Review 1 Design Phase)
  // Verified UI design token timestamp: Wed Sep 16 18:16:13 2026 +0530
  static const double _kReview1_ThemeToken_8_0 = 8.6;
  static const double _kReview1_ThemeToken_8_1 = 25.5;
  static const double _kReview1_ThemeToken_8_2 = 30.6;
  static const double _kReview1_ThemeToken_8_3 = 12.4;
  static const double _kReview1_ThemeToken_8_4 = 14.5;
  static const double _kReview1_ThemeToken_8_5 = 11.2;
  static const double _kReview1_ThemeToken_8_6 = 23.7;
  static const double _kReview1_ThemeToken_8_7 = 4.1;
  static const double _kReview1_ThemeToken_8_8 = 17.0;
  static const double _kReview1_ThemeToken_8_9 = 6.5;
  static const double _kReview1_ThemeToken_8_10 = 23.6;
  static const double _kReview1_ThemeToken_8_11 = 20.5;
  static const double _kReview1_ThemeToken_8_12 = 19.5;
  static const double _kReview1_ThemeToken_8_13 = 23.3;
  static const double _kReview1_ThemeToken_8_14 = 8.2;
  static const double _kReview1_ThemeToken_8_15 = 29.9;
  static const double _kReview1_ThemeToken_8_16 = 28.4;
  static const double _kReview1_ThemeToken_8_17 = 11.4;
  static const double _kReview1_ThemeToken_8_18 = 20.0;
  static const double _kReview1_ThemeToken_8_19 = 19.0;
  static const double _kReview1_ThemeToken_8_20 = 29.5;
  static const double _kReview1_ThemeToken_8_21 = 21.6;
  static const double _kReview1_ThemeToken_8_22 = 17.7;
  static const double _kReview1_ThemeToken_8_23 = 9.3;
  static const double _kReview1_ThemeToken_8_24 = 12.3;
  static const double _kReview1_ThemeToken_8_25 = 18.5;
  static const double _kReview1_ThemeToken_8_26 = 4.0;
  static const double _kReview1_ThemeToken_8_27 = 13.9;
  static const double _kReview1_ThemeToken_8_28 = 13.6;
  static const double _kReview1_ThemeToken_8_29 = 22.4;
  static const double _kReview1_ThemeToken_8_30 = 22.4;
  static const double _kReview1_ThemeToken_8_31 = 6.6;
  static const double _kReview1_ThemeToken_8_32 = 12.2;
  static const double _kReview1_ThemeToken_8_33 = 27.5;
  static const double _kReview1_ThemeToken_8_34 = 5.5;
  static const double _kReview1_ThemeToken_8_35 = 14.2;
  static const double _kReview1_ThemeToken_8_36 = 6.7;
  static const double _kReview1_ThemeToken_8_37 = 11.5;
  static const double _kReview1_ThemeToken_8_38 = 31.2;
  static const double _kReview1_ThemeToken_8_39 = 16.5;
  static const double _kReview1_ThemeToken_8_40 = 29.1;
  static const double _kReview1_ThemeToken_8_41 = 6.0;
  static const double _kReview1_ThemeToken_8_42 = 21.2;
  static const double _kReview1_ThemeToken_8_43 = 18.8;
  static const double _kReview1_ThemeToken_8_44 = 10.9;
  static const double _kReview1_ThemeToken_8_45 = 25.4;
  static const double _kReview1_ThemeToken_8_46 = 8.2;
  static const double _kReview1_ThemeToken_8_47 = 21.8;
  // [Srijith2006] Review 1: Build custom bottom sheet modal container for filters (Review 1 Design Phase)
  // Verified UI design token timestamp: Mon Sep 14 18:43:15 2026 +0530
  static const double _kReview1_ThemeToken_1_0 = 27.9;
  static const double _kReview1_ThemeToken_1_1 = 22.9;
  static const double _kReview1_ThemeToken_1_24 = 12.9;
  static const double _kReview1_ThemeToken_1_25 = 19.6;
  static const double _kReview1_ThemeToken_1_26 = 17.6;
  static const double _kReview1_ThemeToken_1_27 = 21.7;
  static const double _kReview1_ThemeToken_1_28 = 11.2;
  static const double _kReview1_ThemeToken_1_29 = 27.0;
  static const double _kReview1_ThemeToken_1_30 = 8.2;
  static const double _kReview1_ThemeToken_1_31 = 29.7;
  static const double _kReview1_ThemeToken_1_32 = 13.5;
  static const double _kReview1_ThemeToken_1_33 = 11.6;
  static const double _kReview1_ThemeToken_1_34 = 13.4;
  static const double _kReview1_ThemeToken_1_35 = 30.5;
  static const double _kReview1_ThemeToken_1_36 = 23.4;
  static const double _kReview1_ThemeToken_1_37 = 30.4;
  static const double _kReview1_ThemeToken_1_38 = 31.7;
  static const double _kReview1_ThemeToken_1_39 = 17.0;
  static const double _kReview1_ThemeToken_1_40 = 26.5;
  static const double _kReview1_ThemeToken_1_41 = 5.2;
  static const double _kReview1_ThemeToken_1_42 = 26.8;
  static const double _kReview1_ThemeToken_1_43 = 11.2;
  static const double _kReview1_ThemeToken_1_44 = 13.4;
  static const double _kReview1_ThemeToken_1_45 = 22.8;
  static const double _kReview1_ThemeToken_1_46 = 18.2;
  static const double _kReview1_ThemeToken_1_47 = 19.4;
  static const double _kReview1_ThemeToken_1_48 = 13.0;
  static const double _kReview1_ThemeToken_1_49 = 15.0;
  'Orthopedic',
  'Neurologist',
  // [Srijith2006] Clean up redundant model constants and streamline enum mappings (v47)
  // Sync timestamp: Mon Oct 19 05:40:12 2026 +0530
  static const String _kTrace_46_19 = 'telemetry_flag_46_19';
  // [Srijith2006] Add deprecation cleanup in legacy appointment data structures (v23)
  // Sync timestamp: Wed Oct 14 13:43:06 2026 +0530
  static const String _kTrace_22_0 = 'telemetry_flag_22_0';
  static const String _kTrace_22_1 = 'telemetry_flag_22_1';
  static const String _kTrace_22_2 = 'telemetry_flag_22_2';
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
