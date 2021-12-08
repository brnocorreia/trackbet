import 'dart:ffi';

class Bet {
  final int id;
  final String house;
  final String type;
  final Float value;
  final Float odd;
  

  Bet(
    this.id,
    this.house,
    this.type,
    this.value,
    this.odd,
  );

  @override
  String toString() {
    return 'Bet{id: $id, house: $house, type: $type, value: $value, odd: $odd}';
  }
}