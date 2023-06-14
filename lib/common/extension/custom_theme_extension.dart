import 'package:chatapp/common/utils/coloors.dart';
import 'package:flutter/material.dart';

extension ExtendedTheme on BuildContext {
  CustomThemeExtension get theme {
    return Theme.of(this).extension<CustomThemeExtension>()!;
  }
}

class CustomThemeExtension extends ThemeExtension<CustomThemeExtension> {
  final Color? circleImageColor;
  final Color? greyColor;
  final Color? blueColor;
  final Color? langBgColor;
  final Color? langHighlightColor;
  final Color? authAppbarTextColor;

  const CustomThemeExtension({
    this.circleImageColor,
    this.greyColor,
    this.blueColor,
    this.langBgColor,
    this.langHighlightColor,
    this.authAppbarTextColor,
  });

  static const lightMode = CustomThemeExtension(
    circleImageColor: Color(0xFF00C6FF),
    greyColor: Coloors.greyLight,
    blueColor: Coloors.blueLight,
    langBgColor: Color(0xFFF7F8FA),
    langHighlightColor: Color(0xFFE8E8ED),
    authAppbarTextColor: Coloors.blueLight,
  );

  static const darkMode = CustomThemeExtension(
    circleImageColor: Coloors.blueDark,
    greyColor: Coloors.greyDark,
    blueColor: Coloors.blueDark,
    langBgColor: Color(0xFF182229),
    langHighlightColor: Color(0xFF09141A),
    authAppbarTextColor: Color(0xFFE9EDEF),
  );

  @override
  ThemeExtension<CustomThemeExtension> copyWith({
    Color? circleImageColor,
    Color? greyColor,
    Color? blueColor,
    Color? langBgColor,
    Color? langHighlightColor,
    Color? authAppbarTextColor,
  }) {
    return CustomThemeExtension(
      circleImageColor: circleImageColor ?? this.circleImageColor,
      greyColor: greyColor ?? this.greyColor,
      blueColor: blueColor ?? this.blueColor,
      langBgColor: langBgColor ?? this.langBgColor,
      authAppbarTextColor: authAppbarTextColor ?? this.authAppbarTextColor,
      langHighlightColor: langHighlightColor ?? this.langHighlightColor,
    );
  }

  @override
  ThemeExtension<CustomThemeExtension> lerp(
      ThemeExtension<CustomThemeExtension>? other, double t) {
    if (other is! CustomThemeExtension) return this;
    return CustomThemeExtension(
      circleImageColor: Color.lerp(circleImageColor, other.circleImageColor, t),
      greyColor: Color.lerp(greyColor, other.greyColor, t),
      blueColor: Color.lerp(blueColor, other.blueColor, t),
      langBgColor: Color.lerp(langBgColor, other.langBgColor, t),
      authAppbarTextColor:
          Color.lerp(authAppbarTextColor, other.authAppbarTextColor, t),
      langHighlightColor:
          Color.lerp(langHighlightColor, other.langHighlightColor, t),
    );
  }
}
