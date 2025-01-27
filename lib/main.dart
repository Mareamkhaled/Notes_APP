import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:notes_app/constants/my_colors.dart';
import 'package:notes_app/cubit/add_notes_cubit/notes_cubit.dart';
import 'package:notes_app/cubit/note_cubit/note_cubit.dart';
import 'package:notes_app/models/notes_model.dart';
import 'package:notes_app/views/screens/on_boarding_screen.dart';

void main() async{
  await Hive.initFlutter();
  Hive.registerAdapter(NotesModelAdapter());
  await Hive.openBox<NotesModel>('notes box');
  runApp(const NotesApp());
}

class NotesApp extends StatelessWidget {
  const NotesApp({super.key});

  // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//     debugShowCheckedModeBanner: false,
//     theme: ThemeData(
//       scaffoldBackgroundColor: MyColors.myWhite,
//       appBarTheme: AppBarTheme(backgroundColor: MyColors.myWhite)

//     ),
      
//       home: const OnBoardingScreen(),
//     );
//   }
// }
 Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<NoteCubit>(
          create: (context) => NoteCubit(),
        ),
        BlocProvider<AddNotesCubit>(
          create: (context) => AddNotesCubit(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          scaffoldBackgroundColor: MyColors.myWhite,
          appBarTheme: AppBarTheme(backgroundColor: MyColors.myWhite),
        ),
        home: const OnBoardingScreen(),
      ),
    );
  }
}



