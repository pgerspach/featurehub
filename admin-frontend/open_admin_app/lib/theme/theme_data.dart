import 'package:flutter/material.dart';

const fontFamily = 'Roboto';

final ThemeData myTheme = ThemeData(
    // primarySwatch: MaterialColor(4278391389,{50: Instance of 'minified:i', 100: Instance of 'minified:i', 200: Instance of 'minified:i', 300: Instance of 'minified:i', 400: Instance of 'minified:i', 500: Instance of 'minified:i', 600: Instance of 'minified:i', 700: Instance of 'minified:i', 800: Instance of 'minified:i', 900: Instance of 'minified:i'}),
    brightness: Brightness.light,
    primaryColor: const Color(0xff03125d),
    primaryColorLight: const Color(0xffced6fd),
    primaryColorDark: const Color(0xff051d94),
    canvasColor: const Color(0xffffffff),
    scaffoldBackgroundColor: const Color(0xfffafafa),
    bottomAppBarColor: const Color(0xffffffff),
    cardColor: const Color(0xffffffff),
    applyElevationOverlayColor: false,
    dividerColor: const Color(0x1f000000),
    highlightColor: const Color(0x66bcbcbc),
    splashColor: const Color(0x66c8c8c8),
    selectedRowColor: const Color(0xfff5f5f5),
    unselectedWidgetColor: const Color(0x8a000000),
    disabledColor: const Color(0x61000000),
    // buttonColor: const Color(0xff473e8f),
    toggleableActiveColor: const Color(0xff678de5),
    secondaryHeaderColor: const Color(0xfff6f6f6),
    backgroundColor: const Color(0xffECF9FE),
    dialogBackgroundColor: const Color(0xffffffff),
    indicatorColor: const Color(0xff051d94),
    hintColor: const Color(0x8a000000),
    errorColor: const Color(0xffd32f2f),
    dataTableTheme: const DataTableThemeData(
        headingTextStyle: TextStyle(
            fontSize: 14, fontWeight: FontWeight.w800, color: Colors.black87)),
    textSelectionTheme: const TextSelectionThemeData(
      // selectionColor: Color(0xff9cacfc),
      cursorColor: Color(0xff473e8f),
      selectionHandleColor: Color(0xff6b83fa),
    ),
    textButtonTheme: TextButtonThemeData(
        // style: TextButton.styleFrom(primary: Color(0xff473e8f)),
        style: TextButton.styleFrom(
            padding: const EdgeInsets.all(18),
            textStyle: const TextStyle(wordSpacing: 0.8, letterSpacing: 0.8))),
    elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
            padding: const EdgeInsets.all(18),
            textStyle: const TextStyle(wordSpacing: 0.8, letterSpacing: 0.8))),
    outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
            padding: const EdgeInsets.all(16),
            textStyle: const TextStyle(wordSpacing: 0.8, letterSpacing: 0.8))),
    colorScheme: const ColorScheme(
      primary: Color(0xff03125d),
      primaryContainer: Color(0xff051d94),
      secondary: Color(0xff0830f7),
      secondaryContainer: Color(0xffCED6FD),
      surface: Color(0xffffffff),
      background: Color(0xff9cacfc),
      error: Color(0xffd32f2f),
      onPrimary: Color(0xffffffff),
      onSecondary: Color(0xffffffff),
      onSurface: Color(0xff000000),
      onBackground: Color(0xffffffff),
      onError: Color(0xffffffff),
      brightness: Brightness.light,
    ),
    buttonTheme: const ButtonThemeData(
      textTheme: ButtonTextTheme.normal,
      minWidth: 88,
      height: 36,
      padding: EdgeInsets.only(top: 16, bottom: 16, left: 16, right: 16),
      shape: RoundedRectangleBorder(
        side: BorderSide(
          color: Color(0xff000000),
          width: 0,
          style: BorderStyle.none,
        ),
        borderRadius: BorderRadius.all(Radius.circular(4.0)),
      ),
      alignedDropdown: false,
      buttonColor: Color(0xff5671e9),
      disabledColor: Color(0x61000000),
      highlightColor: Color(0x29000000),
      splashColor: Color(0x1f000000),
      colorScheme: ColorScheme(
        primary: Color(0xff03125d),
        primaryContainer: Color(0xff051d94),
        secondary: Color(0xff0830f7),
        secondaryContainer: Color(0xff051d94),
        surface: Color(0xffffffff),
        background: Color(0xff9cacfc),
        error: Color(0xffd32f2f),
        onPrimary: Color(0xffffffff),
        onSecondary: Color(0xffffffff),
        onSurface: Color(0xff000000),
        onBackground: Color(0xffffffff),
        onError: Color(0xffffffff),
        brightness: Brightness.light,
      ),
    ),
    fontFamily: fontFamily,
    inputDecorationTheme: const InputDecorationTheme(
      labelStyle: TextStyle(
        color: Color(0xff473e8f),
        fontSize: 16,
        fontWeight: FontWeight.w400,
        fontStyle: FontStyle.normal,
      ),
      isDense: false,
    ),
    iconTheme: const IconThemeData(
      color: Color(0xff473e8f),
      opacity: 1,
      size: 16,
    ),
    primaryIconTheme: const IconThemeData(
      color: Color(0xffffffff),
      opacity: 1,
      size: 24,
    ),
    sliderTheme: const SliderThemeData(
      activeTrackColor: Color(0xff03125d),
      inactiveTrackColor: Color(0x3d03125d),
      disabledActiveTrackColor: Color(0x52020a31),
      disabledInactiveTrackColor: Color(0x1f020a31),
      activeTickMarkColor: Color(0x8ae6eafe),
      inactiveTickMarkColor: Color(0x8a03125d),
      disabledActiveTickMarkColor: Color(0x1fe6eafe),
      disabledInactiveTickMarkColor: Color(0x1f020a31),
      thumbColor: Color(0xff03125d),
      disabledThumbColor: Color(0x52020a31),
      thumbShape: RoundSliderThumbShape(),
      overlayColor: Color(0x1f03125d),
      valueIndicatorColor: Color(0xff03125d),
      valueIndicatorShape: PaddleSliderValueIndicatorShape(),
      showValueIndicator: ShowValueIndicator.onlyForDiscrete,
      valueIndicatorTextStyle: TextStyle(
        color: Color(0xffffffff),
        fontSize: 14,
        fontWeight: FontWeight.w400,
        fontStyle: FontStyle.normal,
      ),
    ),
    chipTheme: const ChipThemeData(
      backgroundColor: Color(0x3d03125d),
      brightness: Brightness.light,
      deleteIconColor: Color(0xde03125d),
      disabledColor: Color(0x0c000000),
      labelPadding: EdgeInsets.only(top: 0, bottom: 0, left: 8, right: 8),
      labelStyle: TextStyle(
        color: Color(0xde03125d),
        fontSize: 14,
        fontWeight: FontWeight.w400,
        fontStyle: FontStyle.normal,
      ),
      padding: EdgeInsets.only(top: 4, bottom: 4, left: 4, right: 4),
      secondaryLabelStyle: TextStyle(
        color: Color(0x3d03125d),
        fontSize: 14,
        fontWeight: FontWeight.w400,
        fontStyle: FontStyle.normal,
      ),
      secondarySelectedColor: Color(0x3d03125d),
      selectedColor: Color(0x3d03125d),
      shape: StadiumBorder(
          side: BorderSide(
        color: Color(0xff000000),
        width: 0,
        style: BorderStyle.none,
      )),
    ),
    primaryTextTheme:
        const TextTheme(bodyText1: TextStyle(color: Colors.black87)));
final ThemeData darkTheme = ThemeData(
  dataTableTheme: const DataTableThemeData(
      headingTextStyle: TextStyle(
          fontSize: 14, fontWeight: FontWeight.w800, color: Colors.white)),
  checkboxTheme: CheckboxThemeData(
    checkColor: MaterialStateProperty.all(Colors.black87),
    // fillColor: MaterialStateProperty.all(Colors.green),
  ),
  applyElevationOverlayColor: false,
  primarySwatch: Colors.blue,
  brightness: Brightness.dark,
  fontFamily: fontFamily,
  textButtonTheme: TextButtonThemeData(
      // style: TextButton.styleFrom(primary: Color(0xff473e8f)),
      style: TextButton.styleFrom(
          padding: const EdgeInsets.all(18),
          textStyle: const TextStyle(wordSpacing: 0.8, letterSpacing: 0.8))),
  elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.all(18),
          textStyle: const TextStyle(wordSpacing: 0.8, letterSpacing: 0.8))),
  outlinedButtonTheme: OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
          padding: const EdgeInsets.all(16),
          textStyle: const TextStyle(wordSpacing: 0.8, letterSpacing: 0.8))),
  iconTheme: const IconThemeData(
    color: Colors.blue,
    opacity: 1,
    size: 16,
  ),
);
