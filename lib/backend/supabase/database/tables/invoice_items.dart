import '../database.dart';

class InvoiceItemsTable extends SupabaseTable<InvoiceItemsRow> {
  @override
  String get tableName => 'invoice_items';

  @override
  InvoiceItemsRow createRow(Map<String, dynamic> data) => InvoiceItemsRow(data);
}

class InvoiceItemsRow extends SupabaseDataRow {
  InvoiceItemsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => InvoiceItemsTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  String? get invoiceId => getField<String>('invoice_id');
  set invoiceId(String? value) => setField<String>('invoice_id', value);

  String? get productId => getField<String>('product_id');
  set productId(String? value) => setField<String>('product_id', value);

  int? get quantity => getField<int>('quantity');
  set quantity(int? value) => setField<int>('quantity', value);

  double? get price => getField<double>('price');
  set price(double? value) => setField<double>('price', value);
}
