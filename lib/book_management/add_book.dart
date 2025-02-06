import 'package:book_management_system/app_screens.dart/categories.dart';
import 'package:book_management_system/componets/general_button.dart';
import 'package:book_management_system/componets/input_field_widget.dart';
import 'package:flutter/material.dart';

class AddBookScreen extends StatelessWidget {
  const AddBookScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text('Add New Book'),
        leading: BackButton(
          color: Colors.white,
          onPressed: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => const CategoryScreen(),
              ),
            );
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            const InputField(
              'Title',
              label: '',
            ),
            const InputField(
              'Author',
              label: '',
            ),
            const InputField(
              'Genre',
              label: '',
            ),
            const InputField(
              'Description',
              label: '',
            ),
            const InputField(
              'ISBN',
              label: '',
            ),
            Button(
              board: 'Upload photo',
              isLoading: false,
              onTap: () {},
              text: '',
            ),
            const SizedBox(height: 16),
            Button(
              board: 'Save Book',
              isLoading: false,
              onTap: () {},
              text: '',
            ),
          ],
        ),
      ),
    );
  }
}
