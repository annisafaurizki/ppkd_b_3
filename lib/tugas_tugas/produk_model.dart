// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:flutter/material.dart';

class ProdukElektronik {
  final String nama;
  final int price;
  final Color warna;
  ProdukElektronik({
    required this.nama,
    required this.price,
    required this.warna,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nama': nama,
      'price': price,
      'warna': warna.value,
    };
  }

  factory ProdukElektronik.fromMap(Map<String, dynamic> map) {
    return ProdukElektronik(
      nama: map['nama'] as String,
      price: map['price'] as int,
      warna: Color(map['warna'] as int),
    );
  }

  String toJson() => json.encode(toMap());

  factory ProdukElektronik.fromJson(String source) =>
      ProdukElektronik.fromMap(json.decode(source) as Map<String, dynamic>);
}
