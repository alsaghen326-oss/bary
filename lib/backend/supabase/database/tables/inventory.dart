import '../database.dart';

class InventoryTable extends SupabaseTable<InventoryRow> {
  @override
  String get tableName => 'inventory';

  @override
  InventoryRow createRow(Map<String, dynamic> data) => InventoryRow(data);
}

class InventoryRow extends SupabaseDataRow {
  InventoryRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => InventoryTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  String? get productId => getField<String>('product_id');
  set productId(String? value) => setField<String>('product_id', value);

  int? get quantityAvailable => getField<int>('quantity_available');
  set quantityAvailable(int? value) =>
      setField<int>('quantity_available', value);

  int? get returned => getField<int>('returned');
  set returned(int? value) => setField<int>('returned', value);

  int? get damaged => getField<int>('damaged');
  set damaged(int? value) => setField<int>('damaged', value);
}
