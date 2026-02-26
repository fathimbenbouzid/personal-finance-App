import 'package:flutter/material.dart';

abstract final class AppColors {
  // ── Core ──────────────────────────────────────────────────────
  static const Color scaffoldBackground = Color(0xFFECEEF4);
  static const Color surface = Color(0xFFFFFFFF);
  static const Color primary = Color(0xFF5B5EA6);
  static const Color onPrimary = Color(0xFFFFFFFF);
  static const Color primaryContainer = Color(0xFFDEDFF5);

  // ── Semantic ──────────────────────────────────────────────────
  static const Color income = Color(0xFF3DB87A);
  static const Color incomeBadge = Color(0xFFD6F0E4);
  static const Color expense = Color(0xFFE05C5C);
  static const Color expenseBadge = Color(0xFFFFDADB);

  // ── Text ──────────────────────────────────────────────────────
  static const Color textPrimary = Color(0xFF1C1C2E);
  static const Color textSecondary = Color(0xFF7A7A8C);
  static const Color textHint = Color(0xFFABABBC);

  // ── Utility ───────────────────────────────────────────────────
  static const Color divider = Color(0xFFE4E4EE);
  static const Color iconTileBg = Color(0xFFECEEF4);
  static const Color shadow = Color(0x14000000);

  // ── Decorative section tints (background panels) ──────────────
  static const Color panelLavender = Color(0xFFD8DCF0);
  static const Color panelMint = Color(0xFFD4EDE4);
  static const Color panelPeach = Color(0xFFF5DED8);
}