import '../database.dart';

class SupportTable extends SupabaseTable<SupportRow> {
  @override
  String get tableName => 'support';

  @override
  SupportRow createRow(Map<String, dynamic> data) => SupportRow(data);
}

class SupportRow extends SupabaseDataRow {
  SupportRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => SupportTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  String? get title => getField<String>('title');
  set title(String? value) => setField<String>('title', value);

  String? get description => getField<String>('description');
  set description(String? value) => setField<String>('description', value);

  String? get photo => getField<String>('photo');
  set photo(String? value) => setField<String>('photo', value);

  String? get foreignUser => getField<String>('foreignUser');
  set foreignUser(String? value) => setField<String>('foreignUser', value);
}
