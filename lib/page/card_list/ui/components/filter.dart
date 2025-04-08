import 'package:flutter/material.dart';

class FilterDrawer extends StatelessWidget {
  const FilterDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        width: MediaQuery.sizeOf(context).width,
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border(
            right: BorderSide(
              width: 1
            )
          )
        ),
        child: Column(
          children: [
            
          ],
        ),
      ),
    );
  }
}