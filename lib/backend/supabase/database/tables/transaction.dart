import '../database.dart';

class TransactionTable extends SupabaseTable<TransactionRow> {
  @override
  String get tableName => 'transaction';

  @override
  TransactionRow createRow(Map<String, dynamic> data) => TransactionRow(data);
}

class TransactionRow extends SupabaseDataRow {
  TransactionRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => TransactionTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  String? get place => getField<String>('place');
  set place(String? value) => setField<String>('place', value);

  DateTime? get time => getField<DateTime>('time');
  set time(DateTime? value) => setField<DateTime>('time', value);

  int? get amount => getField<int>('amount');
  set amount(int? value) => setField<int>('amount', value);

  int? get foreignBudget => getField<int>('foreignBudget');
  set foreignBudget(int? value) => setField<int>('foreignBudget', value);

  String? get foreignUser => getField<String>('foreignUser');
  set foreignUser(String? value) => setField<String>('foreignUser', value);
}
