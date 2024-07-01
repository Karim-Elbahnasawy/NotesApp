import 'package:flutter/material.dart';

class CustomNoteItem extends StatelessWidget {
  const CustomNoteItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Container(
        padding: const EdgeInsets.only(top: 24, bottom: 24, left: 16),
        decoration: BoxDecoration(
          color: const Color(0xffFFCCB0),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              title: const Padding(
                padding: EdgeInsets.only(bottom: 16),
                child: Text(
                  'Flutter Tips',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 26,
                  ),
                ),
              ),
              subtitle: Padding(
                padding: const EdgeInsets.only(bottom: 16),
                child: Text(
                  'Build Your Career With Karim',
                  style: TextStyle(
                    color: Colors.black.withOpacity(0.6),
                    fontSize: 18,
                  ),
                ),
              ),
              trailing: IconButton(
                color: Colors.black,
                onPressed: () {},
                icon: const Icon(
                  Icons.delete,
                  size: 25,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 24),
              child: Text(
                'May 20, 2022',
                style: TextStyle(
                  color: Colors.black.withOpacity(0.6),
                  fontSize: 16,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
