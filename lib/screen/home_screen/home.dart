import 'package:flutter/material.dart';
import 'package:gojek_clone/constant/color.dart';
import 'package:gojek_clone/constant/text_style.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(children: [
           const Text("Flutter Demo"),
        const SizedBox(
          width: 120,
        ), //
          Expanded(
            child: TextField(
              decoration: InputDecoration(
                fillColor: whiteGojek,
                filled: true,
                contentPadding: const EdgeInsets.symmetric(horizontal: 15),
                hintText: 'Cari layanan, makanan, dan tujuan',
                hintStyle: small,
                prefixIcon: const Icon(
                  Icons.search,
                  size: 20,
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: BorderSide(width: 1, color: blackGojek),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(45.0),
                  borderSide: const BorderSide(
                    width: 2.0,
                    color: Colors.grey,
                  ), // BorderSide
                ), // OutlineInputBorder
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(45.0),
                  borderSide: const BorderSide(
                    width: 2.0,
                    color: Colors.grey,
                  ), // BorderSide
                ), // OutlineInputBorder
              ), // InputDecoration
            ),
          ),
        ]),
      ),
    );
  }
}
