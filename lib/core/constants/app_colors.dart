import 'package:flutter/material.dart';

class AppColors {
  AppColors._(); // приватный конструктор — класс нельзя инстанцировать

  // ---- Базовые ----
  static const Color white = Colors.white;
  static const Color black = Colors.black;

  // ---- Primary / Accent ----
  // подставь свой брендовый цвет, сейчас это просто плейсхолдер
  static const Color primary = Color(0xFFFF7622);
  static const Color primaryLight = Color(0xFFFFE1CC);

  // ---- Фон / поверхности ----
  static const Color scaffoldBackground = Colors.white;
  static const Color surface = Color(0xFFF6F6F6);       // fillColor у поиска
  static const Color iconBackground = Color(0xFFECF0F4); // фон круглых кнопок (меню)

  // ---- Текст ----
  static const Color textPrimary = Color(0xFF32343E);
  static const Color textSecondary = Color(0xFFA0A5BA);  // hint text, иконка поиска
  static const Color textDisabled = Color(0xFFC1C3CC);

  // ---- Границы / разделители ----
  static const Color border = Color(0xFFECF0F4);
  static const Color divider = Color(0xFFE8E8E8);

  // ---- Статусы ----
  static const Color success = Color(0xFF2ED573);
  static const Color error = Color(0xFFFF5C5C);
  static const Color warning = Color(0xFFFFB020);

  // ---- Рейтинг / звёзды (частый кейс в food delivery UI) ----
  static const Color rating = Color(0xFFFFC529);
}