import '../database.dart';

class WalletTable extends SupabaseTable<WalletRow> {
  @override
  String get tableName => 'wallet';

  @override
  WalletRow createRow(Map<String, dynamic> data) => WalletRow(data);
}

class WalletRow extends SupabaseDataRow {
  WalletRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => WalletTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  int? get amount => getField<int>('amount');
  set amount(int? value) => setField<int>('amount', value);

  String? get foreignUser => getField<String>('foreignUser');
  set foreignUser(String? value) => setField<String>('foreignUser', value);
}
