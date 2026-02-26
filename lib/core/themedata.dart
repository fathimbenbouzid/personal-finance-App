import 'package:finance_manager/core/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

/// ──────────────────────────────────────────────────────────────
///  Finance App – ThemeData
///  Extracted from design screenshot (January 2026)
///
///  Colour palette
///  ─────────────────────────────────────────────────────────────
///  Background (scaffold)    #ECEEF4  – soft lavender-grey
///  Surface / Card            #FFFFFF  – pure white
///  Primary (FAB, active nav) #5B5EA6  – muted indigo-violet
///  On-Primary                #FFFFFF
///  Income accent             #3DB87A  – calm green
///  Expense accent            #E05C5C  – warm red
///  Income badge bg           #D6F0E4  – light mint
///  Expense badge bg          #FADADB  – light blush
///  Icon tile bg              #ECEEF4  – matches scaffold
///  Text primary              #1C1C2E  – near-black
///  Text secondary            #7A7A8C  – muted grey
///  Divider                   #E4E4EE
///  Bottom nav bg             #FFFFFF
/// ──────────────────────────────────────────────────────────────



// ─────────────────────────────────────────────────────────────────────────────
//  Text Styles
// ─────────────────────────────────────────────────────────────────────────────

TextTheme buildTextTheme() {
  // Uses "Nunito" – clean, rounded, matches the soft UI tone.
  // Add google_fonts: ^6.0.0 to pubspec.yaml.
  const TextStyle base = TextStyle(
    color: AppColors.textPrimary,
    fontFamily: 'Helvetica Neue',
    // fontFamilyFallback: ['SF Pro Display', 'Helvetica Neue', 'Arial'],
  );

  return TextTheme(
      // ── Display ────────────────────────────────────────────
      displayLarge: base.copyWith(
        fontSize: 40,
        fontWeight: FontWeight.w800,
        letterSpacing: -1.0,
      ),
      // Balance amount  e.g. "1,600,000 DZD"
      displayMedium: base.copyWith(
        fontSize: 34,
        fontWeight: FontWeight.w800,
        letterSpacing: -0.5,
      ),
      displaySmall: base.copyWith(fontSize: 28, fontWeight: FontWeight.w700),

      // ── Headline ───────────────────────────────────────────
      // Page greeting  "Good Morning, Alex"
      headlineLarge: base.copyWith(
        fontSize: 32,
        fontWeight: FontWeight.w800,
        letterSpacing: -0.5,
      ),
      // Section title  "Recent Transactions"
      headlineMedium: base.copyWith(
        fontSize: 20,
        fontWeight: FontWeight.w800,
        letterSpacing: -0.2,
      ),
      headlineSmall: base.copyWith(fontSize: 18, fontWeight: FontWeight.w700),

      // ── Title ──────────────────────────────────────────────
      // Transaction name  "Salary"
      titleLarge: base.copyWith(fontSize: 17, fontWeight: FontWeight.w700),
      // Card label  "Total balance"
      titleMedium: base.copyWith(
        fontSize: 15,
        fontWeight: FontWeight.w600,
        color: AppColors.textSecondary,
      ),
      titleSmall: base.copyWith(
        fontSize: 13,
        fontWeight: FontWeight.w600,
        color: AppColors.textSecondary,
      ),

      // ── Body ───────────────────────────────────────────────
      bodyLarge: base.copyWith(fontSize: 16, fontWeight: FontWeight.w500),
      // Date label  "Jan 25"
      bodyMedium: base.copyWith(
        fontSize: 14,
        fontWeight: FontWeight.w500,
        color: AppColors.textSecondary,
      ),
      bodySmall: base.copyWith(
        fontSize: 12,
        fontWeight: FontWeight.w400,
        color: AppColors.textSecondary,
      ),

      // ── Label ──────────────────────────────────────────────
      // Bottom-nav labels  "Home", "Reports" …
      labelLarge: base.copyWith(
        fontSize: 13,
        fontWeight: FontWeight.w700,
        letterSpacing: 0.1,
      ),
      labelMedium: base.copyWith(
        fontSize: 12,
        fontWeight: FontWeight.w600,
        letterSpacing: 0.2,
      ),
      labelSmall: base.copyWith(
        fontSize: 11,
        fontWeight: FontWeight.w600,
        letterSpacing: 0.4,
        color: AppColors.textSecondary,
      ),
    );
}
