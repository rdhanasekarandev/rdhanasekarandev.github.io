import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:karkai_web/app/app.dart';
import 'package:karkai_web/ui_bloc/language/lang_bloc.dart';
import 'package:karkai_web/ui_bloc/language/lang_event.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(BlocProvider(
    create: (_) => LanguageBloc()..add(LanguageLoadStarted()),
    child: App(),
  ));
}
