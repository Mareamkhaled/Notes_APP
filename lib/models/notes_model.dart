// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:hive/hive.dart';
part 'notes_model.g.dart';
@HiveType(typeId: 0)



class NotesModel extends HiveObject{
  @HiveField(0)
  final String title;
  @HiveField(1)
  final String subtitle;
  @HiveField(2)
  final String date;
   NotesModel({
    required this.title,
    required this.subtitle,
    required this.date,
  });
}
