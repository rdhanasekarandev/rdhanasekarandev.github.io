import 'dart:ui';

import 'package:bloc/bloc.dart';
import 'package:karkai_web/database/app_preferences.dart';
import 'package:karkai_web/utils/enum.dart';

import 'lang_event.dart';
import 'lang_state.dart';

class LanguageBloc extends Bloc<LanguageEvent, LanguageState> {
  LanguageBloc() : super(LanguageState(Locale('en', 'US')));

  @override
  Stream<LanguageState> mapEventToState(LanguageEvent event) async* {
    if (event is LanguageLoadStarted) {
      yield* _mapLanguageLoadStartedToState();
    } else if (event is LanguageSelected) {
      yield* _mapLanguageSelectedToState(event.languageCode);
    }
  }

  Stream<LanguageState> _mapLanguageLoadStartedToState() async* {
    final defaultLanguageCode = await AppPreferences().getLanguageCode();
    Locale locale;

    if (defaultLanguageCode == null) {
      locale = Locale('en', 'US');
      await AppPreferences().setLanguageCode(code: locale.languageCode);
    } else {
      locale = Locale(defaultLanguageCode);
    }

    yield LanguageState(locale);
  }

  Stream<LanguageState> _mapLanguageSelectedToState(
      Language selectedLanguage) async* {
    final defaultLanguageCode = AppPreferences().getLanguageCode();

    if (selectedLanguage == Language.EN && defaultLanguageCode != 'en') {
      yield* _loadLanguage(AppPreferences(), 'en', 'US');
    } else if (selectedLanguage == Language.TA && defaultLanguageCode != 'ta') {
      yield* _loadLanguage(AppPreferences(), 'ta', 'IN');
    }
  }

  /// This method is added to reduce code repetition.
  Stream<LanguageState> _loadLanguage(AppPreferences appPreferences,
      String languageCode, String countryCode) async* {
    final locale = Locale(languageCode, countryCode);
    await appPreferences.setLanguageCode(code: locale.languageCode);
    yield LanguageState(locale);
  }
}

// onPressed: () => BlocProvider.of<LanguageBloc>(context).add(
// LanguageSelected(Language.EN),
// ),
