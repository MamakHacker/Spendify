import '../database.dart';

class BudgetTable extends SupabaseTable<BudgetRow> {
  @override
  String get tableName => 'budget';

  @override
  BudgetRow createRow(Map<String, dynamic> data) => BudgetRow(data);
}

class BudgetRow extends SupabaseDataRow {
  BudgetRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => BudgetTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  String? get name => getField<String>('name');
  set name(String? value) => setField<String>('name', value);

  int? get amount => getField<int>('amount');
  set amount(int? value) => setField<int>('amount', value);

  String? get time => getField<String>('time');
  set time(String? value) => setField<String>('time', value);

  String? get foreignUser => getField<String>('foreignUser');
  set foreignUser(String? value) => setField<String>('foreignUser', value);

  int? get amountSpent => getField<int>('amountSpent');
  set amountSpent(int? value) => setField<int>('amountSpent', value);
}
