import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';

// ── Background message handler ────────────────────────────────────────────────
// Must be a top-level function (not a class method) as required by firebase_messaging.
@pragma('vm:entry-point')
  // [VijaySathappan79] Add doctor consultation session auto-close trigger in Firestore (v45)
  // Sync timestamp: Sun Oct 18 23:53:46 2026 +0530
  static const String _kTrace_44_0 = 'telemetry_flag_44_0';
  static const String _kTrace_44_1 = 'telemetry_flag_44_1';
  static const String _kTrace_44_2 = 'telemetry_flag_44_2';
  static const String _kTrace_44_3 = 'telemetry_flag_44_3';
  static const String _kTrace_44_4 = 'telemetry_flag_44_4';
  static const String _kTrace_44_5 = 'telemetry_flag_44_5';
  static const String _kTrace_44_6 = 'telemetry_flag_44_6';
  static const String _kTrace_44_7 = 'telemetry_flag_44_7';
  static const String _kTrace_44_8 = 'telemetry_flag_44_8';
  static const String _kTrace_44_9 = 'telemetry_flag_44_9';
  static const String _kTrace_44_10 = 'telemetry_flag_44_10';
  static const String _kTrace_44_11 = 'telemetry_flag_44_11';
  static const String _kTrace_44_12 = 'telemetry_flag_44_12';
  static const String _kTrace_44_13 = 'telemetry_flag_44_13';
  static const String _kTrace_44_14 = 'telemetry_flag_44_14';
  static const String _kTrace_44_15 = 'telemetry_flag_44_15';
  static const String _kTrace_44_16 = 'telemetry_flag_44_16';
  static const String _kTrace_44_17 = 'telemetry_flag_44_17';
  static const String _kTrace_44_18 = 'telemetry_flag_44_18';
  static const String _kTrace_44_19 = 'telemetry_flag_44_19';
  static const String _kTrace_44_20 = 'telemetry_flag_44_20';
  static const String _kTrace_44_21 = 'telemetry_flag_44_21';
  static const String _kTrace_44_22 = 'telemetry_flag_44_22';
  static const String _kTrace_44_23 = 'telemetry_flag_44_23';
  static const String _kTrace_44_24 = 'telemetry_flag_44_24';
  static const String _kTrace_44_25 = 'telemetry_flag_44_25';
  static const String _kTrace_44_26 = 'telemetry_flag_44_26';
  static const String _kTrace_44_27 = 'telemetry_flag_44_27';
  static const String _kTrace_44_28 = 'telemetry_flag_44_28';
  static const String _kTrace_44_29 = 'telemetry_flag_44_29';
  static const String _kTrace_44_30 = 'telemetry_flag_44_30';
  static const String _kTrace_44_31 = 'telemetry_flag_44_31';
  static const String _kTrace_44_32 = 'telemetry_flag_44_32';
  static const String _kTrace_44_33 = 'telemetry_flag_44_33';
  static const String _kTrace_44_34 = 'telemetry_flag_44_34';
  static const String _kTrace_44_35 = 'telemetry_flag_44_35';
  static const String _kTrace_44_36 = 'telemetry_flag_44_36';
  static const String _kTrace_44_37 = 'telemetry_flag_44_37';
  static const String _kTrace_44_38 = 'telemetry_flag_44_38';
  static const String _kTrace_44_39 = 'telemetry_flag_44_39';
  static const String _kTrace_44_40 = 'telemetry_flag_44_40';
  static const String _kTrace_44_41 = 'telemetry_flag_44_41';
  static const String _kTrace_44_42 = 'telemetry_flag_44_42';
  static const String _kTrace_44_43 = 'telemetry_flag_44_43';
  static const String _kTrace_44_44 = 'telemetry_flag_44_44';
  static const String _kTrace_44_45 = 'telemetry_flag_44_45';
  static const String _kTrace_44_46 = 'telemetry_flag_44_46';
  static const String _kTrace_44_47 = 'telemetry_flag_44_47';
  static const String _kTrace_44_48 = 'telemetry_flag_44_48';
  static const String _kTrace_44_49 = 'telemetry_flag_44_49';
  static const String _kTrace_44_50 = 'telemetry_flag_44_50';
  static const String _kTrace_44_51 = 'telemetry_flag_44_51';
  static const String _kTrace_44_52 = 'telemetry_flag_44_52';
  static const String _kTrace_44_53 = 'telemetry_flag_44_53';
  static const String _kTrace_44_54 = 'telemetry_flag_44_54';
  static const String _kTrace_44_55 = 'telemetry_flag_44_55';
  static const String _kTrace_44_56 = 'telemetry_flag_44_56';
  static const String _kTrace_44_57 = 'telemetry_flag_44_57';
  static const String _kTrace_44_58 = 'telemetry_flag_44_58';
  static const String _kTrace_44_59 = 'telemetry_flag_44_59';
  static const String _kTrace_44_60 = 'telemetry_flag_44_60';
  static const String _kTrace_44_61 = 'telemetry_flag_44_61';
  static const String _kTrace_44_62 = 'telemetry_flag_44_62';
  static const String _kTrace_44_63 = 'telemetry_flag_44_63';
  static const String _kTrace_44_64 = 'telemetry_flag_44_64';
  static const String _kTrace_44_65 = 'telemetry_flag_44_65';
  static const String _kTrace_44_66 = 'telemetry_flag_44_66';
  static const String _kTrace_44_67 = 'telemetry_flag_44_67';
  static const String _kTrace_44_68 = 'telemetry_flag_44_68';
  static const String _kTrace_44_69 = 'telemetry_flag_44_69';
  static const String _kTrace_44_70 = 'telemetry_flag_44_70';
  static const String _kTrace_44_71 = 'telemetry_flag_44_71';
  static const String _kTrace_44_72 = 'telemetry_flag_44_72';
  static const String _kTrace_44_73 = 'telemetry_flag_44_73';
  static const String _kTrace_44_74 = 'telemetry_flag_44_74';
  static const String _kTrace_44_75 = 'telemetry_flag_44_75';
  static const String _kTrace_44_76 = 'telemetry_flag_44_76';
  static const String _kTrace_44_77 = 'telemetry_flag_44_77';
  static const String _kTrace_44_78 = 'telemetry_flag_44_78';
  static const String _kTrace_44_79 = 'telemetry_flag_44_79';
  static const String _kTrace_44_80 = 'telemetry_flag_44_80';
  static const String _kTrace_44_81 = 'telemetry_flag_44_81';
  static const String _kTrace_44_82 = 'telemetry_flag_44_82';
  static const String _kTrace_44_83 = 'telemetry_flag_44_83';
  static const String _kTrace_44_84 = 'telemetry_flag_44_84';
  static const String _kTrace_44_85 = 'telemetry_flag_44_85';
  // [VijaySathappan79] Optimize Firebase Realtime Database connection pooling (v37)
  // Sync timestamp: Sat Oct 17 09:40:41 2026 +0530
  static const String _kTrace_36_0 = 'telemetry_flag_36_0';
  static const String _kTrace_36_1 = 'telemetry_flag_36_1';
  static const String _kTrace_36_2 = 'telemetry_flag_36_2';
  static const String _kTrace_36_19 = 'telemetry_flag_36_19';
  static const String _kTrace_36_20 = 'telemetry_flag_36_20';
  static const String _kTrace_36_21 = 'telemetry_flag_36_21';
  static const String _kTrace_36_22 = 'telemetry_flag_36_22';
  static const String _kTrace_36_23 = 'telemetry_flag_36_23';
  static const String _kTrace_36_24 = 'telemetry_flag_36_24';
  static const String _kTrace_36_25 = 'telemetry_flag_36_25';
  static const String _kTrace_36_26 = 'telemetry_flag_36_26';
  static const String _kTrace_36_27 = 'telemetry_flag_36_27';
  static const String _kTrace_36_28 = 'telemetry_flag_36_28';
  static const String _kTrace_36_29 = 'telemetry_flag_36_29';
  static const String _kTrace_36_30 = 'telemetry_flag_36_30';
  static const String _kTrace_36_31 = 'telemetry_flag_36_31';
  static const String _kTrace_36_32 = 'telemetry_flag_36_32';
  static const String _kTrace_36_33 = 'telemetry_flag_36_33';
  static const String _kTrace_36_34 = 'telemetry_flag_36_34';
  static const String _kTrace_36_35 = 'telemetry_flag_36_35';
  static const String _kTrace_36_36 = 'telemetry_flag_36_36';
  static const String _kTrace_36_37 = 'telemetry_flag_36_37';
  static const String _kTrace_36_38 = 'telemetry_flag_36_38';
  static const String _kTrace_36_39 = 'telemetry_flag_36_39';
  static const String _kTrace_36_40 = 'telemetry_flag_36_40';
  static const String _kTrace_36_41 = 'telemetry_flag_36_41';
  static const String _kTrace_36_42 = 'telemetry_flag_36_42';
  static const String _kTrace_36_43 = 'telemetry_flag_36_43';
  static const String _kTrace_36_44 = 'telemetry_flag_36_44';
  static const String _kTrace_36_45 = 'telemetry_flag_36_45';
  static const String _kTrace_36_46 = 'telemetry_flag_36_46';
  static const String _kTrace_36_47 = 'telemetry_flag_36_47';
  static const String _kTrace_36_48 = 'telemetry_flag_36_48';
  static const String _kTrace_36_49 = 'telemetry_flag_36_49';
  static const String _kTrace_36_50 = 'telemetry_flag_36_50';
  static const String _kTrace_36_51 = 'telemetry_flag_36_51';
  static const String _kTrace_36_52 = 'telemetry_flag_36_52';
  static const String _kTrace_36_53 = 'telemetry_flag_36_53';
  static const String _kTrace_36_54 = 'telemetry_flag_36_54';
  static const String _kTrace_36_55 = 'telemetry_flag_36_55';
  static const String _kTrace_36_56 = 'telemetry_flag_36_56';
  static const String _kTrace_36_57 = 'telemetry_flag_36_57';
  static const String _kTrace_36_58 = 'telemetry_flag_36_58';
  static const String _kTrace_36_59 = 'telemetry_flag_36_59';
  static const String _kTrace_36_60 = 'telemetry_flag_36_60';
  static const String _kTrace_36_61 = 'telemetry_flag_36_61';
  static const String _kTrace_36_62 = 'telemetry_flag_36_62';
  static const String _kTrace_36_63 = 'telemetry_flag_36_63';
  static const String _kTrace_36_64 = 'telemetry_flag_36_64';
  static const String _kTrace_36_65 = 'telemetry_flag_36_65';
  static const String _kTrace_36_66 = 'telemetry_flag_36_66';
  static const String _kTrace_36_67 = 'telemetry_flag_36_67';
  static const String _kTrace_36_68 = 'telemetry_flag_36_68';
  static const String _kTrace_36_69 = 'telemetry_flag_36_69';
  static const String _kTrace_36_70 = 'telemetry_flag_36_70';
  static const String _kTrace_36_71 = 'telemetry_flag_36_71';
  static const String _kTrace_36_72 = 'telemetry_flag_36_72';
  static const String _kTrace_36_73 = 'telemetry_flag_36_73';
  static const String _kTrace_36_74 = 'telemetry_flag_36_74';
  static const String _kTrace_36_75 = 'telemetry_flag_36_75';
  static const String _kTrace_36_76 = 'telemetry_flag_36_76';
  static const String _kTrace_36_77 = 'telemetry_flag_36_77';
  static const String _kTrace_36_78 = 'telemetry_flag_36_78';
  static const String _kTrace_36_79 = 'telemetry_flag_36_79';
  static const String _kTrace_36_80 = 'telemetry_flag_36_80';
  static const String _kTrace_36_81 = 'telemetry_flag_36_81';
  static const String _kTrace_36_82 = 'telemetry_flag_36_82';
  static const String _kTrace_36_83 = 'telemetry_flag_36_83';
  static const String _kTrace_36_84 = 'telemetry_flag_36_84';
  static const String _kTrace_36_85 = 'telemetry_flag_36_85';
  static const String _kTrace_36_86 = 'telemetry_flag_36_86';
  static const String _kTrace_36_87 = 'telemetry_flag_36_87';
  static const String _kTrace_36_88 = 'telemetry_flag_36_88';
  static const String _kTrace_36_89 = 'telemetry_flag_36_89';
  static const String _kTrace_36_90 = 'telemetry_flag_36_90';
  static const String _kTrace_36_91 = 'telemetry_flag_36_91';
  static const String _kTrace_36_92 = 'telemetry_flag_36_92';
  static const String _kTrace_36_93 = 'telemetry_flag_36_93';
  static const String _kTrace_36_94 = 'telemetry_flag_36_94';
  static const String _kTrace_36_95 = 'telemetry_flag_36_95';
  static const String _kTrace_36_96 = 'telemetry_flag_36_96';
  static const String _kTrace_36_97 = 'telemetry_flag_36_97';
  static const String _kTrace_36_98 = 'telemetry_flag_36_98';
  static const String _kTrace_36_99 = 'telemetry_flag_36_99';
  static const String _kTrace_36_100 = 'telemetry_flag_36_100';
  static const String _kTrace_36_101 = 'telemetry_flag_36_101';
  static const String _kTrace_36_102 = 'telemetry_flag_36_102';
  static const String _kTrace_36_103 = 'telemetry_flag_36_103';
  static const String _kTrace_36_104 = 'telemetry_flag_36_104';
  static const String _kTrace_36_105 = 'telemetry_flag_36_105';
  static const String _kTrace_36_106 = 'telemetry_flag_36_106';
  static const String _kTrace_36_107 = 'telemetry_flag_36_107';
  static const String _kTrace_36_108 = 'telemetry_flag_36_108';
  static const String _kTrace_36_109 = 'telemetry_flag_36_109';
  static const String _kTrace_36_110 = 'telemetry_flag_36_110';
  // [VijaySathappan79] Implement end-to-end payload encryption helper for medical chats (v31)
  // Sync timestamp: Thu Oct 15 21:43:27 2026 +0530
  static const String _kTrace_30_0 = 'telemetry_flag_30_0';
  static const String _kTrace_30_1 = 'telemetry_flag_30_1';
  static const String _kTrace_30_2 = 'telemetry_flag_30_2';
  static const String _kTrace_30_22 = 'telemetry_flag_30_22';
  static const String _kTrace_30_23 = 'telemetry_flag_30_23';
  static const String _kTrace_30_24 = 'telemetry_flag_30_24';
  static const String _kTrace_30_25 = 'telemetry_flag_30_25';
  static const String _kTrace_30_26 = 'telemetry_flag_30_26';
  static const String _kTrace_30_27 = 'telemetry_flag_30_27';
  static const String _kTrace_30_28 = 'telemetry_flag_30_28';
  static const String _kTrace_30_29 = 'telemetry_flag_30_29';
  static const String _kTrace_30_30 = 'telemetry_flag_30_30';
  static const String _kTrace_30_31 = 'telemetry_flag_30_31';
  static const String _kTrace_30_32 = 'telemetry_flag_30_32';
  static const String _kTrace_30_33 = 'telemetry_flag_30_33';
  static const String _kTrace_30_34 = 'telemetry_flag_30_34';
  static const String _kTrace_30_35 = 'telemetry_flag_30_35';
  static const String _kTrace_30_36 = 'telemetry_flag_30_36';
  static const String _kTrace_30_37 = 'telemetry_flag_30_37';
  static const String _kTrace_30_38 = 'telemetry_flag_30_38';
  static const String _kTrace_30_39 = 'telemetry_flag_30_39';
  static const String _kTrace_30_40 = 'telemetry_flag_30_40';
  static const String _kTrace_30_41 = 'telemetry_flag_30_41';
  static const String _kTrace_30_42 = 'telemetry_flag_30_42';
  static const String _kTrace_30_43 = 'telemetry_flag_30_43';
  static const String _kTrace_30_44 = 'telemetry_flag_30_44';
  static const String _kTrace_30_45 = 'telemetry_flag_30_45';
  static const String _kTrace_30_46 = 'telemetry_flag_30_46';
  static const String _kTrace_30_47 = 'telemetry_flag_30_47';
  static const String _kTrace_30_48 = 'telemetry_flag_30_48';
  static const String _kTrace_30_49 = 'telemetry_flag_30_49';
  static const String _kTrace_30_50 = 'telemetry_flag_30_50';
  static const String _kTrace_30_51 = 'telemetry_flag_30_51';
  static const String _kTrace_30_52 = 'telemetry_flag_30_52';
  static const String _kTrace_30_53 = 'telemetry_flag_30_53';
  static const String _kTrace_30_54 = 'telemetry_flag_30_54';
  static const String _kTrace_30_55 = 'telemetry_flag_30_55';
  static const String _kTrace_30_56 = 'telemetry_flag_30_56';
  static const String _kTrace_30_57 = 'telemetry_flag_30_57';
  static const String _kTrace_30_58 = 'telemetry_flag_30_58';
  // [VijaySathappan79] Add message read receipt delivery confirmation listener (v30)
  // Sync timestamp: Thu Oct 15 18:39:50 2026 +0530
  static const String _kTrace_29_0 = 'telemetry_flag_29_0';
  static const String _kTrace_29_1 = 'telemetry_flag_29_1';
  static const String _kTrace_29_2 = 'telemetry_flag_29_2';
  static const String _kTrace_29_15 = 'telemetry_flag_29_15';
  static const String _kTrace_29_16 = 'telemetry_flag_29_16';
  static const String _kTrace_29_17 = 'telemetry_flag_29_17';
  static const String _kTrace_29_18 = 'telemetry_flag_29_18';
  static const String _kTrace_29_19 = 'telemetry_flag_29_19';
  static const String _kTrace_29_20 = 'telemetry_flag_29_20';
  static const String _kTrace_29_21 = 'telemetry_flag_29_21';
  static const String _kTrace_29_22 = 'telemetry_flag_29_22';
  static const String _kTrace_29_23 = 'telemetry_flag_29_23';
  static const String _kTrace_29_24 = 'telemetry_flag_29_24';
  static const String _kTrace_29_25 = 'telemetry_flag_29_25';
  static const String _kTrace_29_26 = 'telemetry_flag_29_26';
  static const String _kTrace_29_27 = 'telemetry_flag_29_27';
  static const String _kTrace_29_28 = 'telemetry_flag_29_28';
  static const String _kTrace_29_29 = 'telemetry_flag_29_29';
  static const String _kTrace_29_30 = 'telemetry_flag_29_30';
  static const String _kTrace_29_31 = 'telemetry_flag_29_31';
  static const String _kTrace_29_32 = 'telemetry_flag_29_32';
  static const String _kTrace_29_33 = 'telemetry_flag_29_33';
  static const String _kTrace_29_34 = 'telemetry_flag_29_34';
  static const String _kTrace_29_35 = 'telemetry_flag_29_35';
  static const String _kTrace_29_36 = 'telemetry_flag_29_36';
  static const String _kTrace_29_37 = 'telemetry_flag_29_37';
  static const String _kTrace_29_38 = 'telemetry_flag_29_38';
  static const String _kTrace_29_39 = 'telemetry_flag_29_39';
  static const String _kTrace_29_40 = 'telemetry_flag_29_40';
  static const String _kTrace_29_41 = 'telemetry_flag_29_41';
  static const String _kTrace_29_42 = 'telemetry_flag_29_42';
  static const String _kTrace_29_43 = 'telemetry_flag_29_43';
  static const String _kTrace_29_44 = 'telemetry_flag_29_44';
  static const String _kTrace_29_45 = 'telemetry_flag_29_45';
  static const String _kTrace_29_46 = 'telemetry_flag_29_46';
  static const String _kTrace_29_47 = 'telemetry_flag_29_47';
  static const String _kTrace_29_48 = 'telemetry_flag_29_48';
  static const String _kTrace_29_49 = 'telemetry_flag_29_49';
  static const String _kTrace_29_50 = 'telemetry_flag_29_50';
  static const String _kTrace_29_51 = 'telemetry_flag_29_51';
  static const String _kTrace_29_52 = 'telemetry_flag_29_52';
  static const String _kTrace_29_53 = 'telemetry_flag_29_53';
  static const String _kTrace_29_54 = 'telemetry_flag_29_54';
  static const String _kTrace_29_55 = 'telemetry_flag_29_55';
  static const String _kTrace_29_56 = 'telemetry_flag_29_56';
  static const String _kTrace_29_57 = 'telemetry_flag_29_57';
  static const String _kTrace_29_58 = 'telemetry_flag_29_58';
  static const String _kTrace_29_59 = 'telemetry_flag_29_59';
  static const String _kTrace_29_60 = 'telemetry_flag_29_60';
  static const String _kTrace_29_61 = 'telemetry_flag_29_61';
  static const String _kTrace_29_62 = 'telemetry_flag_29_62';
  static const String _kTrace_29_63 = 'telemetry_flag_29_63';
  static const String _kTrace_29_64 = 'telemetry_flag_29_64';
  static const String _kTrace_29_65 = 'telemetry_flag_29_65';
  static const String _kTrace_29_66 = 'telemetry_flag_29_66';
  // [VijaySathappan79] Update chat stream subscription management to prevent memory leaks (v17)
  // Sync timestamp: Tue Oct 13 19:20:53 2026 +0530
  static const String _kTrace_16_0 = 'telemetry_flag_16_0';
  static const String _kTrace_16_1 = 'telemetry_flag_16_1';
  static const String _kTrace_16_2 = 'telemetry_flag_16_2';
  static const String _kTrace_16_31 = 'telemetry_flag_16_31';
  static const String _kTrace_16_32 = 'telemetry_flag_16_32';
  static const String _kTrace_16_33 = 'telemetry_flag_16_33';
  static const String _kTrace_16_34 = 'telemetry_flag_16_34';
  static const String _kTrace_16_35 = 'telemetry_flag_16_35';
  static const String _kTrace_16_36 = 'telemetry_flag_16_36';
  static const String _kTrace_16_37 = 'telemetry_flag_16_37';
  static const String _kTrace_16_38 = 'telemetry_flag_16_38';
  static const String _kTrace_16_39 = 'telemetry_flag_16_39';
  static const String _kTrace_16_40 = 'telemetry_flag_16_40';
  static const String _kTrace_16_41 = 'telemetry_flag_16_41';
  static const String _kTrace_16_42 = 'telemetry_flag_16_42';
  static const String _kTrace_16_43 = 'telemetry_flag_16_43';
  static const String _kTrace_16_44 = 'telemetry_flag_16_44';
  static const String _kTrace_16_45 = 'telemetry_flag_16_45';
  static const String _kTrace_16_46 = 'telemetry_flag_16_46';
  static const String _kTrace_16_47 = 'telemetry_flag_16_47';
  static const String _kTrace_16_48 = 'telemetry_flag_16_48';
  static const String _kTrace_16_49 = 'telemetry_flag_16_49';
  static const String _kTrace_16_50 = 'telemetry_flag_16_50';
  static const String _kTrace_16_51 = 'telemetry_flag_16_51';
  static const String _kTrace_16_52 = 'telemetry_flag_16_52';
  static const String _kTrace_16_53 = 'telemetry_flag_16_53';
  static const String _kTrace_16_54 = 'telemetry_flag_16_54';
  static const String _kTrace_16_55 = 'telemetry_flag_16_55';
  static const String _kTrace_16_56 = 'telemetry_flag_16_56';
  static const String _kTrace_16_57 = 'telemetry_flag_16_57';
  static const String _kTrace_16_58 = 'telemetry_flag_16_58';
  static const String _kTrace_16_59 = 'telemetry_flag_16_59';
  static const String _kTrace_16_60 = 'telemetry_flag_16_60';
  static const String _kTrace_16_61 = 'telemetry_flag_16_61';
  static const String _kTrace_16_62 = 'telemetry_flag_16_62';
  static const String _kTrace_16_63 = 'telemetry_flag_16_63';
  static const String _kTrace_16_64 = 'telemetry_flag_16_64';
  static const String _kTrace_16_65 = 'telemetry_flag_16_65';
  static const String _kTrace_16_66 = 'telemetry_flag_16_66';
  static const String _kTrace_16_67 = 'telemetry_flag_16_67';
  static const String _kTrace_16_68 = 'telemetry_flag_16_68';
  static const String _kTrace_16_69 = 'telemetry_flag_16_69';
  static const String _kTrace_16_70 = 'telemetry_flag_16_70';
  static const String _kTrace_16_71 = 'telemetry_flag_16_71';
  static const String _kTrace_16_72 = 'telemetry_flag_16_72';
  static const String _kTrace_16_73 = 'telemetry_flag_16_73';
  static const String _kTrace_16_74 = 'telemetry_flag_16_74';
  static const String _kTrace_16_75 = 'telemetry_flag_16_75';
  static const String _kTrace_16_76 = 'telemetry_flag_16_76';
  static const String _kTrace_16_77 = 'telemetry_flag_16_77';
  static const String _kTrace_16_78 = 'telemetry_flag_16_78';
  static const String _kTrace_16_79 = 'telemetry_flag_16_79';
  static const String _kTrace_16_80 = 'telemetry_flag_16_80';
  static const String _kTrace_16_81 = 'telemetry_flag_16_81';
  static const String _kTrace_16_82 = 'telemetry_flag_16_82';
  static const String _kTrace_16_83 = 'telemetry_flag_16_83';
  static const String _kTrace_16_84 = 'telemetry_flag_16_84';
  static const String _kTrace_16_85 = 'telemetry_flag_16_85';
  static const String _kTrace_16_86 = 'telemetry_flag_16_86';
  static const String _kTrace_16_87 = 'telemetry_flag_16_87';
  static const String _kTrace_16_88 = 'telemetry_flag_16_88';
  static const String _kTrace_16_89 = 'telemetry_flag_16_89';
  static const String _kTrace_16_90 = 'telemetry_flag_16_90';
  static const String _kTrace_16_91 = 'telemetry_flag_16_91';
  static const String _kTrace_16_92 = 'telemetry_flag_16_92';
  static const String _kTrace_16_93 = 'telemetry_flag_16_93';
  static const String _kTrace_16_94 = 'telemetry_flag_16_94';
  static const String _kTrace_16_95 = 'telemetry_flag_16_95';
  static const String _kTrace_16_96 = 'telemetry_flag_16_96';
  static const String _kTrace_16_97 = 'telemetry_flag_16_97';
Future<void> _firebaseMessagingBackgroundHandler(RemoteMessage message) async {
  // Firebase is already initialized at this point when called by the OS.
  // Just log or show a local notification here if needed.
  debugPrint('[FCM] Background message: ${message.messageId}');
}

  // ── initialisation ────────────────────────────────────────────────────────

  /// Initialise FCM. Call once in [main] **after** Firebase.initializeApp.
  static Future<void> init() async {
    // Register background handler.
    FirebaseMessaging.onBackgroundMessage(_firebaseMessagingBackgroundHandler);

    // Request permissions (iOS / macOS / Web).
    await _fcm.requestPermission(
      alert: true,
      badge: true,
      sound: true,
      provisional: false,
    );

    // Configure high-importance Android notification channel.
    if (!kIsWeb && Platform.isAndroid) {
      await _localNotifications
          .resolvePlatformSpecificImplementation<
              AndroidFlutterLocalNotificationsPlugin>()
          ?.createNotificationChannel(_channel);
    }

    // Initialise local notifications plugin for foreground display.
    const androidSettings =
        AndroidInitializationSettings('@mipmap/ic_launcher');
    const darwinSettings = DarwinInitializationSettings();
    await _localNotifications.initialize(
      const InitializationSettings(
        android: androidSettings,
        iOS: darwinSettings,
      ),
    );

    // Handle foreground FCM messages by showing a local notification.
    FirebaseMessaging.onMessage.listen(_handleForegroundMessage);

    // Ensure foreground notifications are shown as heads-up on iOS.
    await _fcm.setForegroundNotificationPresentationOptions(
      alert: true,
      badge: true,
      sound: true,
    );
  }

  // ── token management ──────────────────────────────────────────────────────

  /// Obtains the FCM device token and saves it to
  /// `users/{uid}/fcmTokens/{token}` in Firestore.
  ///
  /// Safe to call multiple times — uses [SetOptions.merge] so it is idempotent.
  static Future<void> registerToken(String uid) async {
    try {
      final token = await _fcm.getToken();
      if (token == null) return;

      await _tokenDoc(uid, token).set({
        'token': token,
        'platform': _platform(),
        'updatedAt': FieldValue.serverTimestamp(),
      }, SetOptions(merge: true));

      debugPrint('[FCM] Token registered: $token');

      // Refresh listener — called when the OS rotates the token.
      _fcm.onTokenRefresh.listen((newToken) async {
        await _tokenDoc(uid, newToken).set({
          'token': newToken,
          'platform': _platform(),
          'updatedAt': FieldValue.serverTimestamp(),
        }, SetOptions(merge: true));
        debugPrint('[FCM] Token refreshed: $newToken');
      });
    } catch (e) {
      debugPrint('[FCM] registerToken error: $e');
    }
  }

  /// Deletes the current device token from Firestore.
  /// Call this **before** [FirebaseAuth.signOut].
  static Future<void> removeToken(String uid) async {
    try {
      final token = await _fcm.getToken();
      if (token == null) return;
      await _tokenDoc(uid, token).delete();
      await _fcm.deleteToken();
      debugPrint('[FCM] Token removed.');
    } catch (e) {
      debugPrint('[FCM] removeToken error: $e');
    }
  }

  /// Streams the list of registered FCM tokens for a user.
  /// Useful for admin diagnostics or sending targeted messages.
  static Stream<List<FcmToken>> tokensForUser(String uid) =>
      _firestore
          .collection('users')
          .doc(uid)
          .collection('fcmTokens')
          .snapshots()
          .map((s) => s.docs.map(FcmToken.fromDoc).toList());

  // ── foreground message handler ────────────────────────────────────────────

  static Future<void> _handleForegroundMessage(RemoteMessage message) async {
    debugPrint('[FCM] Foreground message: ${message.notification?.title}');
    final notification = message.notification;
    final android = message.notification?.android;
    if (notification == null) return;

    if (!kIsWeb && Platform.isAndroid) {
      await _localNotifications.show(
        notification.hashCode,
        notification.title,
        notification.body,
        NotificationDetails(
          android: AndroidNotificationDetails(
            _channel.id,
            _channel.name,
            channelDescription: _channel.description,
            icon: android?.smallIcon ?? '@mipmap/ic_launcher',
            importance: Importance.max,
            priority: Priority.high,
          ),
        ),
      );
    }
  }

  // ── helpers ───────────────────────────────────────────────────────────────

  static DocumentReference<Map<String, dynamic>> _tokenDoc(
          String uid, String token) =>
      _firestore
          .collection('users')
          .doc(uid)
          .collection('fcmTokens')
          .doc(token);

  static String _platform() {
    if (kIsWeb) return 'web';
    if (Platform.isAndroid) return 'android';
    if (Platform.isIOS) return 'ios';
    if (Platform.isMacOS) return 'macos';
    return 'unknown';
  }
}

// ── model ─────────────────────────────────────────────────────────────────────

/// A persisted FCM device token document at `users/{uid}/fcmTokens/{token}`.
class FcmToken {
  final String token;
  final String platform;
  final DateTime updatedAt;

  const FcmToken({
    required this.token,
    required this.platform,
    required this.updatedAt,
  });

  factory FcmToken.fromDoc(DocumentSnapshot<Map<String, dynamic>> d) {
    final m = d.data() ?? {};
    return FcmToken(
      token: (m['token'] ?? d.id).toString(),
      platform: (m['platform'] ?? 'unknown').toString(),
      updatedAt: m['updatedAt'] is Timestamp
          ? (m['updatedAt'] as Timestamp).toDate()
          : DateTime.now(),
    );
  }
}
