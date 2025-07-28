import '../database.dart';

class InvoicesTable extends SupabaseTable<InvoicesRow> {
  @override
  String get tableName => 'invoices';

  @override
  InvoicesRow createRow(Map<String, dynamic> data) => InvoicesRow(data);
}

class InvoicesRow extends SupabaseDataRow {
  InvoicesRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => InvoicesTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  String? get recipientId => getField<String>('recipient_id');
  set recipientId(String? value) => setField<String>('recipient_id', value);

  String? get recipientType => getField<String>('recipient_type');
  set recipientType(String? value) => setField<String>('recipient_type', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  double? get totalAmount => getField<double>('total_amount');
  set totalAmount(double? value) => setField<double>('total_amount', value);

  String? get status => getField<String>('status');
  set status(String? value) => setField<String>('status', value);
}
