import '../database.dart';

class ClientsTable extends SupabaseTable<ClientsRow> {
  @override
  String get tableName => 'clients';

  @override
  ClientsRow createRow(Map<String, dynamic> data) => ClientsRow(data);
}

class ClientsRow extends SupabaseDataRow {
  ClientsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ClientsTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  String? get name => getField<String>('name');
  set name(String? value) => setField<String>('name', value);

  String? get phone => getField<String>('phone');
  set phone(String? value) => setField<String>('phone', value);

  String? get whatsapp => getField<String>('whatsapp');
  set whatsapp(String? value) => setField<String>('whatsapp', value);

  String? get address => getField<String>('address');
  set address(String? value) => setField<String>('address', value);

  double? get locationLat => getField<double>('location_lat');
  set locationLat(double? value) => setField<double>('location_lat', value);

  double? get locationLng => getField<double>('location_lng');
  set locationLng(double? value) => setField<double>('location_lng', value);

  String? get distributorId => getField<String>('distributor_id');
  set distributorId(String? value) => setField<String>('distributor_id', value);

  double? get initialDebt => getField<double>('initial_debt');
  set initialDebt(double? value) => setField<double>('initial_debt', value);
}
