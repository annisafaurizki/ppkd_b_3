// import 'dart:convert';

// ignore_for_file: public_member_api_docs, sort_constructors_first
class Belanjaan {
  final String nama;
  final String wishlist;
  final int harga;
  Belanjaan({required this.nama, required this.wishlist, required this.harga});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'nama': nama, 'barang': wishlist, 'harga': harga};
  }

  factory Belanjaan.fromMap(Map<String, dynamic> map) {
    return Belanjaan(
      nama: map['nama'] as String,
      wishlist: map['barang'] as String,
      harga: map['harga'] as int,
    );
  }

  // String toJson() => json.encode(toMap());

  // factory Belanjaan.fromJson(String source) =>
  //     Belanjaan.fromMap(json.decode(source) as Map<String, dynamic>);
}
