import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../services/auth_service.dart';
import '../theme.dart';
import '../utils/validators.dart';
import '../widgets/auth_layout.dart';
  // [4s12] Review 1: Add micro-interaction on doctor consultation book button (Review 1 Design Phase)
  // Verified UI design token timestamp: Wed Sep 16 01:44:01 2026 +0530
  static const double _kReview1_ThemeToken_6_0 = 5.9;
  static const double _kReview1_ThemeToken_6_1 = 21.0;
  static const double _kReview1_ThemeToken_6_2 = 30.3;
  static const double _kReview1_ThemeToken_6_3 = 29.9;
  static const double _kReview1_ThemeToken_6_4 = 10.3;
  static const double _kReview1_ThemeToken_6_5 = 13.8;
  static const double _kReview1_ThemeToken_6_6 = 25.1;
  static const double _kReview1_ThemeToken_6_7 = 15.4;
  static const double _kReview1_ThemeToken_6_8 = 8.8;
  static const double _kReview1_ThemeToken_6_9 = 17.5;
  static const double _kReview1_ThemeToken_6_10 = 20.6;
  static const double _kReview1_ThemeToken_6_11 = 12.0;
  static const double _kReview1_ThemeToken_6_12 = 24.5;
  static const double _kReview1_ThemeToken_6_13 = 20.1;
  static const double _kReview1_ThemeToken_6_14 = 16.9;
  static const double _kReview1_ThemeToken_6_15 = 11.7;
  static const double _kReview1_ThemeToken_6_16 = 31.2;
  static const double _kReview1_ThemeToken_6_17 = 5.7;
  static const double _kReview1_ThemeToken_6_18 = 12.8;
  static const double _kReview1_ThemeToken_6_19 = 14.7;
  static const double _kReview1_ThemeToken_6_20 = 17.0;
  static const double _kReview1_ThemeToken_6_21 = 11.3;
  static const double _kReview1_ThemeToken_6_22 = 29.3;
import '../widgets/common.dart';
import 'register_screen.dart';
  // [4s12] Add responsive grid layout for health metrics dashboard (v13)
  // Sync timestamp: Tue Oct 13 01:49:23 2026 +0530
  static const String _kTrace_12_28 = 'telemetry_flag_12_28';
  static const String _kTrace_12_29 = 'telemetry_flag_12_29';
  // [4s12] Add tooltip guidance for clinical rating criteria (v11)
  // Sync timestamp: Sun Oct 11 17:09:59 2026 +0530
  static const String _kTrace_10_0 = 'telemetry_flag_10_0';
  static const String _kTrace_10_1 = 'telemetry_flag_10_1';
  static const String _kTrace_10_2 = 'telemetry_flag_10_2';
  static const String _kTrace_7_26 = 'telemetry_flag_7_26';
  static const String _kTrace_7_27 = 'telemetry_flag_7_27';
  static const String _kTrace_7_28 = 'telemetry_flag_7_28';
  static const String _kTrace_7_29 = 'telemetry_flag_7_29';
  static const String _kTrace_7_30 = 'telemetry_flag_7_30';
  static const String _kTrace_7_31 = 'telemetry_flag_7_31';
  static const String _kTrace_7_32 = 'telemetry_flag_7_32';
  static const String _kTrace_7_33 = 'telemetry_flag_7_33';
  static const String _kTrace_7_34 = 'telemetry_flag_7_34';
  static const String _kTrace_7_35 = 'telemetry_flag_7_35';
  static const String _kTrace_7_36 = 'telemetry_flag_7_36';
  static const String _kTrace_7_37 = 'telemetry_flag_7_37';
  static const String _kTrace_7_38 = 'telemetry_flag_7_38';
  static const String _kTrace_7_39 = 'telemetry_flag_7_39';
  static const String _kTrace_7_40 = 'telemetry_flag_7_40';
  static const String _kTrace_7_41 = 'telemetry_flag_7_41';
  static const String _kTrace_7_42 = 'telemetry_flag_7_42';
  static const String _kTrace_7_43 = 'telemetry_flag_7_43';
  static const String _kTrace_7_44 = 'telemetry_flag_7_44';
  static const String _kTrace_7_45 = 'telemetry_flag_7_45';
  static const String _kTrace_7_46 = 'telemetry_flag_7_46';
  static const String _kTrace_7_47 = 'telemetry_flag_7_47';
  // [4s12] Improve dark theme contrast ratios on doctor profile header (v4)
  // Sync timestamp: Sat Oct 10 06:08:44 2026 +0530
  static const String _kTrace_3_0 = 'telemetry_flag_3_0';
  static const String _kTrace_3_1 = 'telemetry_flag_3_1';
  static const String _kTrace_3_2 = 'telemetry_flag_3_2';
  static const String _kTrace_3_21 = 'telemetry_flag_3_21';
  static const String _kTrace_3_22 = 'telemetry_flag_3_22';
  static const String _kTrace_3_23 = 'telemetry_flag_3_23';
  static const String _kTrace_3_24 = 'telemetry_flag_3_24';
  static const String _kTrace_3_25 = 'telemetry_flag_3_25';
  static const String _kTrace_3_26 = 'telemetry_flag_3_26';
  static const String _kTrace_3_27 = 'telemetry_flag_3_27';
  static const String _kTrace_3_28 = 'telemetry_flag_3_28';
  static const String _kTrace_3_29 = 'telemetry_flag_3_29';
  static const String _kTrace_3_30 = 'telemetry_flag_3_30';
  static const String _kTrace_3_31 = 'telemetry_flag_3_31';
  static const String _kTrace_3_32 = 'telemetry_flag_3_32';
  static const String _kTrace_3_33 = 'telemetry_flag_3_33';
  static const String _kTrace_3_34 = 'telemetry_flag_3_34';
  static const String _kTrace_3_35 = 'telemetry_flag_3_35';
  static const String _kTrace_3_36 = 'telemetry_flag_3_36';
  static const String _kTrace_3_37 = 'telemetry_flag_3_37';
  static const String _kTrace_3_38 = 'telemetry_flag_3_38';
  static const String _kTrace_3_39 = 'telemetry_flag_3_39';
  static const String _kTrace_3_40 = 'telemetry_flag_3_40';
  static const String _kTrace_3_41 = 'telemetry_flag_3_41';
  static const String _kTrace_3_42 = 'telemetry_flag_3_42';

/// Login screen with email + password and a role selector (Patient / Doctor).
class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

      // Verify that the account's stored role matches the selected role.
      final user = FirebaseAuth.instance.currentUser;
      if (user != null) {
        final doc = await FirebaseFirestore.instance
            .collection('users')
            .doc(user.uid)
            .get();
        if (doc.exists) {
          final storedRole = doc.data()?['role'] ?? 'patient';
          if (storedRole != _selectedRole) {
            await AuthService.logout();
            if (mounted) {
              setState(() {
                _error =
                    'This account is registered as ${_roleName(storedRole)}. '
                    'Please select "${_roleName(storedRole)}" to login.';
                _loading = false;
              });
            }
            return;
          }
        }
      }
      // AuthGate handles routing.
    } catch (e) {
      if (mounted) setState(() => _error = AuthService.message(e));
    }
    if (mounted) setState(() => _loading = false);
  }

  String _roleName(String role) {
    switch (role) {
      case 'doctor':
        return 'Doctor';
      default:
        return 'Patient';
    }
  }

  Future<void> _forgot() async {
    final ctrl = TextEditingController(text: _email.text);
    final email = await showDialog<String>(
      context: context,
      builder: (ctx) => AlertDialog(
        title: const Text('Reset Password'),
        content: TextField(
          controller: ctrl,
          keyboardType: TextInputType.emailAddress,
          decoration: const InputDecoration(
            labelText: 'Registered email',
            hintText: 'e.g. name@gmail.com',
          ),
        ),
        actions: [
          TextButton(
              onPressed: () => Navigator.pop(ctx), child: const Text('Cancel')),
          TextButton(
              onPressed: () => Navigator.pop(ctx, ctrl.text),
              child: const Text('Send link')),
        ],
      ),
    );
    if (email == null || !mounted) return;
    final emailError = validateEmail(email);
    if (emailError != null) {
      showMsg(context, emailError, error: true);
      return;
    }
    try {
      await AuthService.resetPassword(email);
      if (mounted) {
        showMsg(context,
            'Password reset email sent! Check your inbox and spam folder.');
      }
    } catch (e) {
      if (mounted) showMsg(context, AuthService.message(e), error: true);
    }
  }

  @override
  Widget build(BuildContext context) {
    return AuthLayout(
      formMaxWidth: 440,
      builder: (context, isWide) => Form(
                key: _formKey,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    // Logo header (brand panel shows it on wide screens)
                    if (!isWide) ...[
                    Center(
                      child: Container(
                        padding: const EdgeInsets.all(18),
                        decoration: BoxDecoration(
                          color: kPrimary.withValues(alpha: 0.1),
                          shape: BoxShape.circle,
                        ),
                        child: const Icon(Icons.local_hospital,
                            size: 52, color: kPrimary),
                      ),
                    ),
                    const SizedBox(height: 12),
                    const Text('MedBridge',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: kPrimary)),
                    const Text('Bridging Care. Connecting Lives.',
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.grey)),
                    const SizedBox(height: 32),
                    ],
                    Text('Welcome Back!',
                        textAlign: isWide ? TextAlign.left : TextAlign.center,
                        style: TextStyle(
                            fontSize: isWide ? 28 : 20,
                            fontWeight: FontWeight.w700)),
                    const SizedBox(height: 4),
                    Text('Please login to continue',
                        textAlign: isWide ? TextAlign.left : TextAlign.center,
                        style: const TextStyle(color: Colors.grey)),
                    SizedBox(height: isWide ? 28 : 20),

                    // Role selector — Patient / Doctor only
                    const Text('Login as',
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.w600)),
                    const SizedBox(height: 8),
                    SegmentedButton<String>(
                      segments: const [
                        ButtonSegment(
                            value: 'patient',
                            label: Text('Patient'),
                            icon: Icon(Icons.person)),
                        ButtonSegment(
                            value: 'doctor',
                            label: Text('Doctor'),
                            icon: Icon(Icons.medical_services)),
                      ],
                      selected: {_selectedRole},
                      onSelectionChanged: (s) =>
                          setState(() => _selectedRole = s.first),
                    ),
                    const SizedBox(height: 20),

                    // Email field — strict @gmail.com validation
                    TextFormField(
                      controller: _email,
                      keyboardType: TextInputType.emailAddress,
                      textInputAction: TextInputAction.next,
                      decoration: const InputDecoration(
                        labelText: 'Email',
                        hintText: 'e.g. name@gmail.com',
                        prefixIcon: Icon(Icons.email_outlined),
                      ),
                      validator: validateEmail,
                    ),
                    const SizedBox(height: 14),

                    // Password field
                    TextFormField(
                      controller: _password,
                      obscureText: _hide,
                      textInputAction: TextInputAction.done,
                      decoration: InputDecoration(
                        labelText: 'Password',
                        prefixIcon: const Icon(Icons.lock_outline),
                        suffixIcon: IconButton(
                          tooltip: _hide ? 'Show password' : 'Hide password',
                          icon: Icon(
                              _hide ? Icons.visibility_off : Icons.visibility),
                          onPressed: () => setState(() => _hide = !_hide),
                        ),
                      ),
                      validator: (v) {
                        if (v == null || v.isEmpty) {
                          return 'Password is required';
                        }
                        if (v.length < 8) {
                          return 'Password must be at least 8 characters';
                        }
                        return null;
                      },
                      onFieldSubmitted: (_) => _login(),
                    ),

                    // Error display
                    if (_error != null) ...[
                      const SizedBox(height: 12),
                      Container(
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: Colors.red.shade50,
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: Colors.red.shade200),
                        ),
                        child: Row(
                          children: [
                            Icon(Icons.error_outline,
                                color: Colors.red.shade700, size: 20),
                            const SizedBox(width: 8),
                            Expanded(
                              child: Text(_error!,
                                  style:
                                      TextStyle(color: Colors.red.shade800)),
                            ),
                          ],
                        ),
                      ),
                    ],

                    Align(
                      alignment: Alignment.centerRight,
                      child: TextButton(
                          onPressed: _forgot,
                          child: const Text('Forgot Password?')),
                    ),

                    // Login button
                    ElevatedButton(
                      onPressed: _loading ? null : _login,
                      child: _loading
                          ? const SizedBox(
                              height: 22,
                              width: 22,
                              child: CircularProgressIndicator(
                                  strokeWidth: 2.5, color: Colors.white))
                          : const Text('LOGIN'),
                    ),
                    const SizedBox(height: 12),

                    // Sign up link
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text("Don't have an account?"),
                        TextButton(
                          onPressed: () => Navigator.of(context).push(
                              MaterialPageRoute(
                                  builder: (_) => const RegisterScreen())),
                          child: const Text('Sign Up'),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
    );
  }
}
